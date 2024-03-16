import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:machine_test/utils/apiEndpoints/api_end_points.dart';
import 'package:machine_test/utils/injection/injection.dart';
import 'package:machine_test/utils/main_failure/main_failure.dart';
import 'package:machine_test/utils/services/http_services.dart';

abstract class IHomeService {
  Future<Either<Map<MainFailure, dynamic>, dynamic>> getTvShowsAllServiceApi();

  Future<Either<Map<MainFailure, dynamic>, dynamic>> getCastServiceApi(int id);

  Future<Either<Map<MainFailure, dynamic>, dynamic>> homeServiceApi();

  Future<Either<Map<MainFailure, dynamic>, dynamic>> myCourseServiceApi(int id);
}

@LazySingleton(as: IHomeService)
class HomeService implements IHomeService {
  final httpService = getIt<HttpService>();

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>>
      getTvShowsAllServiceApi() async {
    final res = await httpService.request(
        authenticated: false,
        showErrorToast: true,
        method: HttpMethods.get,
        apiCaching: false,
        apiUrl: '');
    return res;
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>> getCastServiceApi(
      int id) async {
    final res = await httpService.request(
      authenticated: false,
      showErrorToast: true,
      method: HttpMethods.get,
      apiCaching: false,
      apiUrl: '',
    );
    return res;
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>> homeServiceApi() async {
    final res = await httpService.request(
      authenticated: false,
      showErrorToast: true,
      method: HttpMethods.get,
      apiCaching: false,
      apiUrl: ApiEndPoints.endPHomePage,
    );
    return res;
  }

  @override
  Future<Either<Map<MainFailure, dynamic>, dynamic>> myCourseServiceApi(
      int id) async {
    final res = await httpService.request(
      authenticated: false,
      showErrorToast: true,
      method: HttpMethods.get,
      apiCaching: false,
      apiUrl: ApiEndPoints.endPMyCourseData,
    );
    return res;
  }
}
