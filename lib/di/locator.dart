import 'package:get_it/get_it.dart';
import 'package:injectable/injectable.dart';
// Important. Import the locator.iconfig.dart file
import 'locator.iconfig.dart';

final locator = GetIt.instance;

@injectableInit
void setupLocator() async => $initGetIt(locator);