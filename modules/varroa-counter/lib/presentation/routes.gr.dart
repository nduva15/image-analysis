// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i5;
import 'package:camera/camera.dart' as _i10;
import 'package:flutter/material.dart' as _i9;

import 'auth/create_account/create_account_page.dart' as _i7;
import 'auth/login/login_page.dart' as _i6;
import 'auth/reset_password/reset_password_page.dart' as _i8;
import 'overview_picture_screen.dart' as _i2;
import 'common/loading/loading_page.dart' as _i4;
import 'initial_page.dart' as _i1;
import 'test_page.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    InitialRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.InitialPage());
    },
    OverviewPictureRoute.name: (routeData) {
      final args = routeData.argsAs<OverviewPictureRouteArgs>();
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData,
          child: _i2.OverviewPictureScreen(key: args.key, camera: args.camera));
    },
    TestRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.TestPage());
    },
    LoadingRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.LoadingPage());
    },
    AuthRouter.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.EmptyRouterPage());
    },
    LoginRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i6.LoginPage());
    },
    CreateAccountRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i7.CreateAccountPage(),
          transitionsBuilder: _i5.TransitionsBuilders.slideLeftWithFade,
          opaque: true,
          barrierDismissible: false);
    },
    ForgottenPasswordRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
          routeData: routeData,
          child: const _i8.ResetPasswordPage(),
          transitionsBuilder: _i5.TransitionsBuilders.slideLeftWithFade,
          opaque: true,
          barrierDismissible: false);
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(InitialRouter.name, path: '/'),
        _i5.RouteConfig(OverviewPictureRoute.name, path: '/overview'),
        _i5.RouteConfig(TestRoute.name, path: '/test-page'),
        _i5.RouteConfig(LoadingRoute.name, path: '/loading'),
        _i5.RouteConfig(AuthRouter.name, path: '/auth', children: [
          _i5.RouteConfig(LoginRoute.name,
              path: 'login', parent: AuthRouter.name),
          _i5.RouteConfig(CreateAccountRoute.name,
              path: 'create-account', parent: AuthRouter.name),
          _i5.RouteConfig(ForgottenPasswordRoute.name,
              path: 'forgotten-password', parent: AuthRouter.name),
          _i5.RouteConfig('*#redirect',
              path: '*',
              parent: AuthRouter.name,
              redirectTo: 'login',
              fullMatch: true)
        ])
      ];
}

/// generated route for
/// [_i1.InitialPage]
class InitialRouter extends _i5.PageRouteInfo<void> {
  const InitialRouter() : super(InitialRouter.name, path: '/');

  static const String name = 'InitialRouter';
}

/// generated route for
/// [_i2.OverviewPictureScreen]
class OverviewPictureRoute extends _i5.PageRouteInfo<OverviewPictureRouteArgs> {
  OverviewPictureRoute({_i9.Key? key, required _i10.CameraDescription camera})
      : super(OverviewPictureRoute.name,
            path: '/overview',
            args: OverviewPictureRouteArgs(key: key, camera: camera));

  static const String name = 'OverviewPictureRoute';
}

class OverviewPictureRouteArgs {
  const OverviewPictureRouteArgs({this.key, required this.camera});

  final _i9.Key? key;

  final _i10.CameraDescription camera;

  @override
  String toString() {
    return 'OverviewPictureRouteArgs{key: $key, camera: $camera}';
  }
}

/// generated route for
/// [_i3.TestPage]
class TestRoute extends _i5.PageRouteInfo<void> {
  const TestRoute() : super(TestRoute.name, path: '/test-page');

  static const String name = 'TestRoute';
}

/// generated route for
/// [_i4.LoadingPage]
class LoadingRoute extends _i5.PageRouteInfo<void> {
  const LoadingRoute() : super(LoadingRoute.name, path: '/loading');

  static const String name = 'LoadingRoute';
}

/// generated route for
/// [_i5.EmptyRouterPage]
class AuthRouter extends _i5.PageRouteInfo<void> {
  const AuthRouter({List<_i5.PageRouteInfo>? children})
      : super(AuthRouter.name, path: '/auth', initialChildren: children);

  static const String name = 'AuthRouter';
}

/// generated route for
/// [_i6.LoginPage]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: 'login');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i7.CreateAccountPage]
class CreateAccountRoute extends _i5.PageRouteInfo<void> {
  const CreateAccountRoute()
      : super(CreateAccountRoute.name, path: 'create-account');

  static const String name = 'CreateAccountRoute';
}

/// generated route for
/// [_i8.ResetPasswordPage]
class ForgottenPasswordRoute extends _i5.PageRouteInfo<void> {
  const ForgottenPasswordRoute()
      : super(ForgottenPasswordRoute.name, path: 'forgotten-password');

  static const String name = 'ForgottenPasswordRoute';
}
