// @CupertinoAutoRouter
// @AdaptiveAutoRouter
// @CustomAutoRouter
import 'package:auto_route/auto_route.dart';
import 'package:varroa_counter/presentation/auth/login/login_page.dart';
import 'package:varroa_counter/presentation/overview_picture_screen.dart';
import 'package:varroa_counter/presentation/common/loading/loading_page.dart';
import 'package:varroa_counter/presentation/initial_page.dart';
import 'package:varroa_counter/presentation/test_page.dart';

import 'auth/create_account/create_account_page.dart';
import 'auth/reset_password/reset_password_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
      path: "/",
      name: "InitialRouter",
      page: InitialPage,
    ),
    AutoRoute(
      path: "/overview",
      name: "OverviewPictureRoute",
      page: OverviewPictureScreen,
    ),
    AutoRoute(page: TestPage),
    AutoRoute(
      path: "/loading",
      name: "LoadingRoute",
      page: LoadingPage,
    ),
    AutoRoute(
      path: "/auth",
      name: "AuthRouter",
      page: EmptyRouterPage,
      children: [
        AutoRoute(
          path: "login",
          name: "LoginRoute",
          page: LoginPage,
        ),
        CustomRoute(
            path: "create-account",
            name: "CreateAccountRoute",
            page: CreateAccountPage,
            transitionsBuilder: TransitionsBuilders.slideLeftWithFade),
        CustomRoute(
            path: "forgotten-password",
            name: "ForgottenPasswordRoute",
            page: ResetPasswordPage,
            transitionsBuilder: TransitionsBuilders.slideLeftWithFade),
        RedirectRoute(path: '*', redirectTo: 'login'),
      ],
    ),
  ],
)
class $AppRouter {}
