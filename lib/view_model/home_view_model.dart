import 'package:injectable/injectable.dart';
import 'package:machine_test/model/01_common_models/api_response_model/api_response_model.dart';
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

  //      _      ____    ___      ____      _      _       _       ____
//     / \    |  _ \  |_ _|    / ___|    / \    | |     | |     / ___|
//    / _ \   | |_) |  | |    | |       / _ \   | |     | |     \___ \
//   / ___ \  |  __/   | |    | |___   / ___ \  | |___  | |___   ___) |
//  /_/   \_\ |_|     |___|    \____| /_/   \_\ |_____| |_____| |____/

  @observable
  Map<MainFailure, dynamic>? tvShowAllErrRes;

  @observable
  ApiResponse<List<ShowModel>> tvShowAllSuccRes =
      ApiResponse<List<ShowModel>>();

  @action
  Future<void> tvShowAllApi() async {
    tvShowAllSuccRes = tvShowAllSuccRes.copyWith(loading: true);
    try {
      await iHomeService
          .getTvShowsAllServiceApi()
          .then((value) => value.fold((l) => tvShowAllErrRes = l, (r) {
                tvShowAllSuccRes = ApiResponse(
                    data: List<ShowModel>.from(
                        r.map((x) => ShowModel.fromJson(x))));
              }));
    } catch (e) {
      customPrint(content: e, name: 'try catch error');
      tvShowAllSuccRes = tvShowAllSuccRes.copyWith(loading: false);
    }
    tvShowAllSuccRes = tvShowAllSuccRes.copyWith(loading: false);
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|

  @observable
  Map<MainFailure, dynamic>? castErrRes;

  @observable
  ApiResponse<List<PersonModel>> castSuccRes = ApiResponse<List<PersonModel>>();

  @action
  Future<void> castAllApi(int id) async {
    castSuccRes = castSuccRes.copyWith(loading: true);
    try {
      await iHomeService
          .getCastServiceApi(id)
          .then((value) => value.fold((l) => castErrRes = l, (r) {
                castSuccRes = ApiResponse(
                    data: List<PersonModel>.from(
                        r.map((x) => PersonModel.fromJson(x))));
              }));
    } catch (e) {
      customPrint(content: e, name: 'try catch error');
      castSuccRes = castSuccRes.copyWith(loading: false);
    }
    castSuccRes = castSuccRes.copyWith(loading: false);
  }

//     _  _       _  _       _  _       _  _       _  _       _  _       _  _       _  _
//   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_   _| || |_
//  |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _| |_  ..  _|
//  |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _| |_      _|
//    |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|     |_||_|
}
