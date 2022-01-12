import 'package:auto_route/annotations.dart';
import 'package:flutter_app_pilot/food_app/presentation/pages/onboarding_initial_page.dart';
import 'package:flutter_app_pilot/food_app/presentation/pages/mobile_no_page.dart';
import 'package:flutter_app_pilot/food_app/presentation/pages/home.dart';
import 'package:flutter_app_pilot/food_app/presentation/pages/verify_otp_page.dart';
import 'package:flutter_app_pilot/food_app/presentation/wrappers/auth_wrapper_page.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Page,Route',
  routes: <AutoRoute>[
    AutoRoute(
        page: OnboardingInitialPage,
        name: "OnboardingInitialRouter",
        initial: true,
        children: [
          AutoRoute(
              path: "login",
              page: AuthWrapperPage,
              name: "AuthWrapperRouter",
              children: [
                AutoRoute(page: MobileNoPage),
                AutoRoute(page: VerifyOTPPage),
              ]),
        ]),
    AutoRoute(path: "/apps/food-app/home", page: FoodAppHome)
  ],
)
class $AppRouter {}
