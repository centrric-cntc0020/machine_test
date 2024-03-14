import 'package:injectable/injectable.dart';
import 'package:machine_test/model/01_common_models/api_response_model/api_response_model.dart';
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
  ApiResponse<ShowModel> tvShowAllSuccRes = ApiResponse<ShowModel>();

  @action
  Future<void> tvShowAllApi() async {
    tvShowAllSuccRes = tvShowAllSuccRes.copyWith(loading: true);

    try {
      await iHomeService
          .getTvShowsAllServiceApi()
          .then((value) => value.fold((l) => tvShowAllErrRes = l, (r) {
                tvShowAllSuccRes = ApiResponse(data: ShowModel.fromJson(r));
              }));
    } catch (e) {
      customPrint(content: e, name: 'try catch error');
      tvShowAllSuccRes = tvShowAllSuccRes.copyWith(loading: false);
    }
    tvShowAllSuccRes = tvShowAllSuccRes.copyWith(loading: false);
  }
}
