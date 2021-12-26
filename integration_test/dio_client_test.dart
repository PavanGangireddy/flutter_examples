import 'package:flutter/material.dart';
import 'package:flutter_app_pilot/main.dart';
import 'package:flutter_app_pilot/services/RecipeService/fake_service.dart';
import 'package:flutter_app_pilot/services/service_providers.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('Override FakeRecipeService', (tester) async {
    await tester.pumpWidget(
      ProviderScope(
        overrides: [
          recipeServiceProvider.overrideWithValue(FakeRecipeServiceImpl())
        ],
        child: const MyApp(),
      ),
    );

    await tester.pump(const Duration(milliseconds: 50000));

    // The first frame is a loading state.
    expect(find.byType(CircularProgressIndicator), findsOneWidget);
  });
}
