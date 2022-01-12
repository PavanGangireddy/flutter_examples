// import 'package:auto_route/auto_route.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_app_pilot/core/general_providers.dart';
// import 'package:hooks_riverpod/hooks_riverpod.dart';
// import 'package:flutter_hooks/flutter_hooks.dart';
// import 'package:flutter_app_pilot/food_app/routes/router.gr.dart';

// final isOnboardingAcknowledgedProvider = FutureProvider<bool?>((ref) async {
//   final result =
//       await ref.read(localStorageProvider).isOnboardingAcknowledged();
//   return result;
// });

// class OnboardingInitialWrapperPage extends HookConsumerWidget {
//   const OnboardingInitialWrapperPage({Key? key}) : super(key: key);
//   @override
//   Widget build(BuildContext context, WidgetRef ref) {
//     final acknowledged = useState(false);

//     useEffect(() {
//       getResult() async {
//         final result = await ref.read(isOnboardingAcknowledgedProvider.future);
//         result;
//       }

//       getResult().then((value) => acknowledged.value = true);
//     }, []);

//     return AutoRouter.declarative(
//       routes: (_) {
//         return [
//           const SplashRoute(),
//           if (acknowledged.value == true) const OnboardingInitialRoute()
//         ];
//       },
//     );
//   }
// }
