// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../presentation/pages/home.dart' as _i2;
import '../presentation/pages/mobile_no_page.dart' as _i4;
import '../presentation/pages/onboarding_initial_page.dart' as _i1;
import '../presentation/pages/verify_otp_page.dart' as _i5;
import '../presentation/wrappers/auth_wrapper_page.dart' as _i3;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    OnboardingInitialRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.OnboardingInitialPage());
    },
    FoodAppHome.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i2.FoodAppHome());
    },
    AuthWrapperRouter.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i3.AuthWrapperPage());
    },
    MobileNoRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i4.MobileNoPage());
    },
    VerifyOTPRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.VerifyOTPPage());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(OnboardingInitialRouter.name, path: '/', children: [
          _i6.RouteConfig(AuthWrapperRouter.name,
              path: 'login',
              parent: OnboardingInitialRouter.name,
              children: [
                _i6.RouteConfig(MobileNoRoute.name,
                    path: 'mobile-no-page', parent: AuthWrapperRouter.name),
                _i6.RouteConfig(VerifyOTPRoute.name,
                    path: 'verify-ot-pPage', parent: AuthWrapperRouter.name)
              ])
        ]),
        _i6.RouteConfig(FoodAppHome.name, path: '/apps/food-app/home')
      ];
}

/// generated route for
/// [_i1.OnboardingInitialPage]
class OnboardingInitialRouter extends _i6.PageRouteInfo<void> {
  const OnboardingInitialRouter({List<_i6.PageRouteInfo>? children})
      : super(OnboardingInitialRouter.name,
            path: '/', initialChildren: children);

  static const String name = 'OnboardingInitialRouter';
}

/// generated route for
/// [_i2.FoodAppHome]
class FoodAppHome extends _i6.PageRouteInfo<void> {
  const FoodAppHome() : super(FoodAppHome.name, path: '/apps/food-app/home');

  static const String name = 'FoodAppHome';
}

/// generated route for
/// [_i3.AuthWrapperPage]
class AuthWrapperRouter extends _i6.PageRouteInfo<void> {
  const AuthWrapperRouter({List<_i6.PageRouteInfo>? children})
      : super(AuthWrapperRouter.name, path: 'login', initialChildren: children);

  static const String name = 'AuthWrapperRouter';
}

/// generated route for
/// [_i4.MobileNoPage]
class MobileNoRoute extends _i6.PageRouteInfo<void> {
  const MobileNoRoute() : super(MobileNoRoute.name, path: 'mobile-no-page');

  static const String name = 'MobileNoRoute';
}

/// generated route for
/// [_i5.VerifyOTPPage]
class VerifyOTPRoute extends _i6.PageRouteInfo<void> {
  const VerifyOTPRoute() : super(VerifyOTPRoute.name, path: 'verify-ot-pPage');

  static const String name = 'VerifyOTPRoute';
}
