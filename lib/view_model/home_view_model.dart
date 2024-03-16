import 'dart:developer';

import 'package:injectable/injectable.dart';
import 'package:machine_test/model/01_common_models/api_response_model/api_response_model.dart';
import 'package:machine_test/model/feed_model/feed_model.dart';
import 'package:machine_test/model/home_model/home_model.dart';
import 'package:machine_test/model/my_courses_model/my_courses_model.dart';
import 'package:machine_test/model/person_model/person_model.dart';
import 'package:machine_test/model/show_model/show_model.dart';
import 'package:machine_test/services/home_service.dart';
import 'package:machine_test/utils/custom_print.dart';
import 'package:machine_test/utils/injection/injection.dart';
import 'package:machine_test/utils/main_failure/main_failure.dart';
import 'package:mobx/mobx.dart';

part 'home_view_model.g.dart';

var vmHome = getIt<HomeViewModel>();

@injectable
@lazySingleton
class HomeViewModel extends HomeViewModelBase with _$HomeViewModel {
  HomeViewModel({required super.iHomeService});
}

abstract class HomeViewModelBase with Store {
  final IHomeService iHomeService;

  HomeViewModelBase({required this.iHomeService});

  @observable
  int caroselItemIndex = 0;

  @action
  caroselDotsUpdateFun(int index) => caroselItemIndex = index;

  //      _      ____    ___      ____      _      _       _       ____
//     / \    |  _ \  |_ _|    / ___|    / \    | |     | |     / ___|
//    / _ \   | |_) |  | |    | |       / _ \   | |     | |     \___ \
//   / ___ \  |  __/   | |    | |___   / ___ \  | |___  | |___   ___) |
//  /_/   \_\ |_|     |___|    \____| /_/   \_\ |_____| |_____| |____/

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|

  @observable
  Map<MainFailure, dynamic>? homeErrRes;

  @observable
  ApiResponse<HomeModel> homeSuccRes = ApiResponse<HomeModel>();

  @action
  Future<void> homeApi() async {
    homeSuccRes = homeSuccRes.copyWith(loading: true);
    try {
      await iHomeService
          .homeServiceApi()
          .then((value) => value.fold((l) => homeErrRes = l, (r) {
                homeSuccRes = ApiResponse(data: HomeModel.fromJson(r));
              }));
    } catch (e) {
      customPrint(content: e, name: 'try catch error');
      homeSuccRes = homeSuccRes.copyWith(loading: false);
    }
    homeSuccRes = homeSuccRes.copyWith(loading: false);
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|

  @observable
  Map<MainFailure, dynamic>? coursesErrRes;

  @observable
  ApiResponse<MyCoursesModel> coursesSuccRes = ApiResponse<MyCoursesModel>();

  @action
  Future<void> coursesApi() async {
    coursesSuccRes = coursesSuccRes.copyWith(loading: true);
    try {
      await iHomeService
          .myCourseServiceApi()
          .then((value) => value.fold((l) => coursesErrRes = l, (r) {
                coursesSuccRes = ApiResponse(data: MyCoursesModel.fromJson(r));
              }));
    } catch (e) {
      customPrint(content: e, name: 'try catch error');
      coursesSuccRes = coursesSuccRes.copyWith(loading: false);
    }
    coursesSuccRes = coursesSuccRes.copyWith(loading: false);
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|

  @observable
  Map<MainFailure, dynamic>? feedErrRes;

  @observable
  ApiResponse<FeedModel> feedSuccRes = ApiResponse<FeedModel>();

  @action
  Future<void> feedApi() async {
    feedSuccRes = feedSuccRes.copyWith(loading: true);
    try {
      await iHomeService
          .feedServiceApi()
          .then((value) => value.fold((l) => feedErrRes = l, (r) {
                log(r.toString());

                customPrint(
                  content: r,
                );
                customPrint(content: 'show correct api');
                feedSuccRes = ApiResponse(data: FeedModel.fromJson(r));
              }));
    } catch (e) {
      customPrint(content: e, name: 'try catch error');
      feedSuccRes = feedSuccRes.copyWith(loading: false);
    }
    feedSuccRes = feedSuccRes.copyWith(loading: false);
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|
}
