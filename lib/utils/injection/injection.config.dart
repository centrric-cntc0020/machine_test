// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;
import 'package:machine_test/services/home_service.dart' as _i4;
import 'package:machine_test/utils/services/http_services.dart' as _i3;
import 'package:machine_test/view_model/home_view_model.dart' as _i5;

extension GetItInjectableX on _i1.GetIt {
// initializes the registration of main-scope dependencies inside of GetIt
  _i1.GetIt init({
    String? environment,
    _i2.EnvironmentFilter? environmentFilter,
  }) {
    final gh = _i2.GetItHelper(
      this,
      environment,
      environmentFilter,
    );
    gh.lazySingleton<_i3.HttpService>(() => _i3.HttpService());
    gh.lazySingleton<_i4.IHomeService>(() => _i4.HomeService());
    gh.factory<_i5.HomeViewModel>(
        () => _i5.HomeViewModel(iHomeService: gh<_i4.IHomeService>()));
    return this;
  }
}
