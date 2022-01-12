import 'package:flutter/material.dart';
import 'package:flutter_app_pilot/food_app/presentation/view_models/sign_in_form/sign_in_form_view_model.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class MobileNoPage extends HookConsumerWidget {
  const MobileNoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      backgroundColor: Colors.white70,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Text("Mobile no page"),
      ),
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  final signInFormViewModelNotifier =
                      ref.read(signInFormViewModelProvider.notifier);
                  signInFormViewModelNotifier.setMobileNoNonEmpty();
                },
                child: const Text(
                  "MobileNoPage",
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
