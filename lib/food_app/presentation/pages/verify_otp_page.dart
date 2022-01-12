import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_pilot/food_app/presentation/view_models/auth/auth_view_model.dart';
import 'package:flutter_app_pilot/food_app/routes/router.gr.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class VerifyOTPPage extends HookConsumerWidget {
  const VerifyOTPPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Verify OTP page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  final authViewModel =
                      ref.read(authViewModelProvider.notifier);
                  authViewModel.setAuthenticated();
                  context.router.popUntilRoot();
                  context.router.push(const FoodAppHome());
                },
                child: const Text(
                  "Verify OTP Page",
                  style: TextStyle(color: Colors.black),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
