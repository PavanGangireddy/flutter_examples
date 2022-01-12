import 'package:flutter_app_pilot/food_app/presentation/guards/check_if_onboarding_ackd.dart';
import 'package:flutter_app_pilot/food_app/presentation/pages/home.dart';
import 'package:flutter_app_pilot/food_app/routes/router.gr.dart';
import 'package:flutter_app_pilot/screens/HomeRoute/home_route.dart';
import 'package:flutter_app_pilot/food_app/presentation/pages/food_app_cart.dart';
import 'package:flutter_app_pilot/screens/stopwatch_timer.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_pilot/screens/todos_app.dart';
import 'package:flutter_app_pilot/screens/recipes_app.dart';
import 'screens/locations.dart';
import 'screens/location_detail.dart';
import 'package:flutter_app_pilot/food_app/presentation/pages/food_app_dish_detail.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

import './core/route_path_constants.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends HookConsumerWidget {
  MyApp({Key? key}) : super(key: key);

  final _appRouter = AppRouter();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routerDelegate: _appRouter.delegate(),
      routeInformationParser: _appRouter.defaultRouteParser(),
    );
  }

  RouteFactory _routes() {
    return (settings) {
      final routeArgs = settings.arguments as Map;
      Widget screen;
      switch (settings.name) {
        case RoutePathConstants.locationsRoute:
          screen = const Locations();
          break;
        case RoutePathConstants.locationDetailRoute:
          screen = LocationDetail(routeArgs['id']);
          break;
        case RoutePathConstants.stopWatchTimerRoute:
          screen = const StopWatchTimer();
          break;
        case RoutePathConstants.todosRoute:
          screen = const TodosApp();
          break;
        case RoutePathConstants.recipeListRoute:
          screen = const RecipesApp();
          break;
        case RoutePathConstants.homeRoute:
          screen = const HomeRoute();
          break;
        // case RoutePathConstants.foodAppRoute:
        //   screen = FoodAppHome();
        //   break;
        case RoutePathConstants.foodAppDishDetailRoute:
          screen = FoodAppDishDetailRoute(index: routeArgs['id']);
          break;
        case RoutePathConstants.foodAppCartRoute:
          screen = FoodAppCartRoute();
          break;
        default:
          return null;
      }
      return MaterialPageRoute(
          settings: settings, builder: (BuildContext context) => screen);
    };
  }
}
