import 'dart:developer';
import 'dart:io';
import 'dart:async';
import 'dart:convert';

import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:http_interceptor/http_interceptor.dart';
import 'package:injectable/injectable.dart';
import 'package:machine_test/utils/apiEndpoints/api_end_points.dart';
import 'package:machine_test/utils/custom_print.dart';
import 'package:machine_test/utils/main_failure/main_failure.dart';
import 'package:machine_test/utils/services/secure_storage.dart';
import 'package:machine_test/utils/toast.dart';

import 'package:retry/retry.dart';

enum HttpMethods { get, post, put, patch, delete }

@LazySingleton()
class HttpService {
  static final HttpService _instance = HttpService._internal();
  factory HttpService() => _instance;

  HttpService._internal();

  Future<Either<Map<MainFailure, dynamic>, dynamic>> request({
    dynamic data,
    required String apiUrl,
    bool authenticated = true,
    HttpMethods method = HttpMethods.get,
    bool showErrorToast = false,
    bool removeBaseUrl = false,
    bool apiCaching = false,
  }) async {
    Client client;
    client = InterceptedClient.build(
        interceptors: [TokenInterceptor(authenticated: authenticated)]);

    if (apiCaching) {
      if (SharedStorage().getCachedApiData(key: apiUrl) != null) {
        customPrint(content: 'API_CACHING');
        customPrint(content: apiUrl, name: "Endpoint");
        if (data != null) {
          customPrint(content: data, name: "Payload");
        }
        return Right(
            jsonDecode(SharedStorage().getCachedApiData(key: apiUrl)!));
      }
    }

    try {
      final url = removeBaseUrl ? apiUrl : "${ApiEndPoints.baseUrl}/$apiUrl";
      final Response response;
      switch (method) {
        case HttpMethods.get:
          response = await retryMethod(client.get(Uri.parse(url)));
          // log(response.body);
          break;
        case HttpMethods.post:
          response = await retryMethod(
            client.post(Uri.parse(url), body: jsonEncode(data)),
          );
          break;
        case HttpMethods.put:
          response = response = await retryMethod(
            client.put(Uri.parse(url), body: jsonEncode(data)),
          );
          break;
        case HttpMethods.patch:
          response = await retryMethod(
            client.patch(Uri.parse(url), body: jsonEncode(data)),
          );
          break;
        case HttpMethods.delete:
          response = response = await retryMethod(
            client.delete(
              Uri.parse(url),

              //  body: jsonEncode(data)
            ),
          );
          break;
        default:
          response = response = await retryMethod(
            client.get(Uri.parse(url)),
          );
          break;
      }

      customPrint(
          content: "StatusCode :: ${response.statusCode}", name: 'status code');
      customPrint(content: url, name: "Endpoint");
      customPrint(content: data, name: "Payload");
      customPrint(content: response.body, name: "Response");
      customPrint(content: 'Http service finished1');

      if (response.statusCode == HttpStatus.ok ||
          response.statusCode == HttpStatus.created) {
        // if (apiCaching) {
        //   SharedStorage().cacheApiData(key: apiUrl, value: response.body);
        // }

        // // for app login
        // if (jsonDecode(response.body)["access_token"] != null) {
        //   await SecureStorage().writeData(
        //     key: "token",
        //     value: jsonDecode(response.body)["access_token"],
        //   );
        // }
        customPrint(content: 'Http service finished2');
        return Right(jsonDecode(response.body));
      } else {
        if (showErrorToast) {
          failureToast(jsonDecode(response.body)["app_data"] ?? '');

          // ScaffoldMessenger.of(context).showSnackBar(
          //   SnackBar(
          //     content: Text(jsonDecode(response.body)["appData"]),
          //   ),
          // );
        }
        return Left({
          const MainFailure.clientFailure():
              jsonDecode(response.body)["app_data"]
        });
      }
    } on FormatException catch (_) {
      failureToast(
          'Please make sure you are entering the correct format for the input.');
      debugPrint('FormatException : ${_.toString()}');

      return Left({const MainFailure.clientFailure(): null});
    } on HttpException catch (_) {
      failureToast('Please check your internet connection and try again.');
      debugPrint('HttpException : ${_.toString()}');

      return Left({const MainFailure.clientFailure(): null});
    } on TimeoutException catch (_) {
      failureToast(
          'This could be due to a slow network connection, server issues, or the operation requiring more time than anticipated.');
      debugPrint('TimeoutException : ${_.toString()}');

      return Left({const MainFailure.timeout(): null});
    } on SocketException catch (_) {
      failureToast(
          'Please check your internet connection, try again later, or consider optimizing the operation if possible.');
      debugPrint('SocketException : ${_.toString()}');

      return Left({const MainFailure.networkFailure(): null});
    } catch (e) {
      debugPrint(e.toString());

      return Left({const MainFailure.clientFailure(): null});
    } finally {
      client.close();
    }
  }

  // Retry

  Future<Response> retryMethod(Future<Response> apiCall) {
    return retry(
      () => apiCall,
      maxAttempts: 3,
      retryIf: (e) => e is SocketException || e is TimeoutException,
    );
  }

  Future<Either<Map<MainFailure, dynamic>, dynamic>> multipartRequest({
    bool needToken = true,
    bool showErrorToast = false,
    required MultipartRequest request,
  }) async {
    final token = await SecureStorage().readData(key: "token");
    request.headers.addAll({
      'Accept': 'application/json',
      if (needToken) 'Authorization': 'Bearer $token',
      'Content-Type': 'multipart/form-data',
    });

    StreamedResponse streamedResponse = await request.send();
    final response = await Response.fromStream(streamedResponse);
    customPrint(content: '${request.fields}', name: 'payLoad');
    customPrint(content: response.body, name: "StreamedResponse");
    if (response.statusCode == HttpStatus.ok ||
        response.statusCode == HttpStatus.created) {
      return Right(jsonDecode(response.body));
    } else {
      if (showErrorToast) {
        failureToast(jsonDecode(response.body)["appData"] ?? '');
      }
      return Left({const MainFailure.clientFailure(): response});
    }
  }
}

// Interceptor
class TokenInterceptor extends InterceptorContract {
  final bool authenticated;

  TokenInterceptor({required this.authenticated});
  @override
  Future<BaseRequest> interceptRequest({required BaseRequest request}) async {
    final token = await SecureStorage().readData(key: "token");
    request.headers.addAll({
      'Accept': 'application/json',
      if (authenticated == true) 'Authorization': 'Bearer $token',
      'Content-Type': 'application/json',
    });
    return request;
  }

  @override
  Future<BaseResponse> interceptResponse(
      {required BaseResponse response}) async {
    customPrint(content: "response:: ");

    if (response.statusCode == 401) {
      BaseRequest? req = response.request;

      String? newToken = await generateNewToken();
      if (newToken != null && req != null) {
        req.headers["Authorization"] = 'Bearer $newToken';
        return Client().send(req);
      } else {
        await SecureStorage().removeData(key: 'token');
        // snackbarKey.currentState?.context.router.pushAndPopUntil(
        //   const LoginRoute(),
        //   predicate: (route) => false,
        // );
      }
    }
    return response;
  }

  Future<String?> generateNewToken() async {
    final refresh = await SecureStorage().readData(key: "refresh");
    if (refresh != null) {
      final res = await HttpService().request(
        apiUrl: 'url', // Replace 'url' with your actual refresh token endpoint
        authenticated: false,
        method: HttpMethods.post,
        data: jsonEncode({"refresh_token": refresh}),
      );
      return res.fold(
        (l) async {
          customPrint(content: "Remove token");
          await SecureStorage().removeData(key: 'token');
          return null;
        },
        (r) async {
          final token = jsonDecode(r.data.body)["token"];
          await SecureStorage().writeData(key: 'token', value: token);
          return token;
        },
      );
    }
    return null;
  }
}
