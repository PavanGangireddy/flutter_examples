import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app_pilot/food_app/presentation/widgets/splash_page.dart';
import 'package:flutter_app_pilot/food_app/presentation/view_models/initial_onboard/initial_onboard_view_model.dart';
import 'package:flutter_app_pilot/food_app/routes/router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class OnboardingInitialPage extends HookConsumerWidget {
  const OnboardingInitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final initialOnboardState = ref.watch(initialOnboardViewModelProvider);

    return Scaffold(
        backgroundColor: Colors.white70,
        appBar: AppBar(
          backgroundColor: Colors.black,
          title: const Text("Onboarding Initial Page"),
        ),
        body: initialOnboardState.when(
            initial: () => SplashPage(),
            acknowledged: () => AutoRouter.declarative(
                  routes: (_) {
                    return [const AuthWrapperRouter()];
                  },
                ),
            notAcknowledged: () => SafeArea(
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        GestureDetector(
                          onTap: () {
                            final initialOnboardStateNotifier = ref
                                .read(initialOnboardViewModelProvider.notifier);
                            initialOnboardStateNotifier
                                .setInitialOnboardingAcknowledged();
                            context.replaceRoute(const OnboardingInitialRouter(
                                children: [AuthWrapperRouter()]));
                          },
                          child: const Text(
                            "Press me to get onboarded",
                            style: TextStyle(color: Colors.black),
                          ),
                        ),
                      ],
                    ),
                  ),
                )));
  }
}
