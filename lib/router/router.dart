import 'package:auto_route/auto_route.dart';
import 'package:otp/logic.dart';
import 'package:otp/util/startup.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(page: LoginPage, initial: true, path: '/login'),
    AutoRoute(page: StartupPage, path: '/startup'),
  ],
)
class $AppRouter {}
