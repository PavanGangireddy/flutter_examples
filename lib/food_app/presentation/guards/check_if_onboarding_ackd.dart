// import 'package:auto_route/auto_route.dart';
// import 'package:flutter_app_pilot/food_app/routes/router.gr.dart';
// import 'package:flutter_app_pilot/core/general_providers.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';

// class CheckIfOnboardingAcknowledged extends AutoRouteGuard {
//   CheckIfOnboardingAcknowledged(this._read);
//   final _read;

//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) async {
//     final isOnboardingAcknowledged =
//         await _read(localStorageProvider).isOnboardingAcknowledged();
//     final setIsOnboardingAcknowledged =
//         await _read(localStorageProvider).setIsOnboardingAcknowledged;

//     if (isOnboardingAcknowledged == true) {
//       resolver.next(true);
//     } else {
//       router.push(OnboardingInitialRoute());
//     }
//   }
// }
