import 'package:auto_route/auto_route.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_app_pilot/food_app/presentation/view_models/sign_in_form/sign_in_form_view_model.dart';
import 'package:flutter_app_pilot/food_app/presentation/widgets/splash_page.dart';
import 'package:flutter_app_pilot/food_app/presentation/view_models/auth/auth_view_model.dart';
import 'package:flutter_app_pilot/food_app/routes/router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_hooks/flutter_hooks.dart';

class AuthWrapperPage extends HookConsumerWidget {
  const AuthWrapperPage({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    useEffect(() {
      print("use effect being called");
    }, []);

    final authViewModel = ref.watch(authViewModelProvider);
    final signInFormViewModel = ref.watch(signInFormViewModelProvider);

    return authViewModel.when(
        initial: () => SplashPage(),
        authenticated: () {
          context.replaceRoute(const FoodAppHome());
          return SplashPage();
        },
        unauthenticated: () => AutoRouter.declarative(
              routes: (_) {
                return [
                  if (signInFormViewModel.hasEnteredMobileNo)
                    const VerifyOTPRoute()
                  else
                    const MobileNoRoute()
                ];
              },
            ));
  }
}
