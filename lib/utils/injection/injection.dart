import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
import 'package:machine_test/utils/injection/injection.config.dart';

final getIt = GetIt.instance;

@InjectableInit()
Future<void> configureDependancies() async => getIt.init();
