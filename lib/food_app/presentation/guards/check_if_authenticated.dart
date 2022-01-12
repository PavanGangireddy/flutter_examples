// import 'package:auto_route/auto_route.dart';
// import 'package:flutter_app_pilot/food_app/presentation/view_models/initial_onboard/initial_onboard_view_model.dart';
// import 'package:flutter_app_pilot/food_app/routes/router.gr.dart';

// class CheckIfAuthenticated extends AutoRouteGuard {
//   CheckIfAuthenticated(this._read);
//   final _read;
//   @override
//   void onNavigation(NavigationResolver resolver, StackRouter router) async {
//     final isOnboardingAcknowledged =
//         await _read(getInitialOnboardingAcknowledged.future);
//     if (isAuthenticated == true) {
//       router.replace(const FoodAppHome());
//     } else {
//       router.push(const OnboardingInitialRoute());
//     }
//   }
// }
