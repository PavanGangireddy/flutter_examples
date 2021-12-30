import 'package:flutter/material.dart';
import 'package:flutter_app_pilot/widgets/app_card.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:stacked_card_carousel/stacked_card_carousel.dart';
import 'package:flutter_app_pilot/core/route_path_constants.dart';

class HomeRoute extends StatelessWidget {
  const HomeRoute({Key? key}) : super(key: key);

  static List<Widget> appCards = [
    AppCard(
      image: Image.asset("assets/images/maxresdefault.jpg"),
      title: "Food App",
      description:
          "It play extremely important role in motivating\nour team and ensuring their success.",
      routeName: RoutePathConstants.foodAppRoute,
    ),
    AppCard(
      image: Image.asset("assets/images/maxresdefault.jpg"),
      title: "Todos App",
      description:
          "It provides guidance, instruction, direction to\nour team. Handsome member in our team.",
      routeName: RoutePathConstants.todosRoute,
    ),
    AppCard(
      image: Image.asset("assets/images/maxresdefault.jpg"),
      title: "Location Route",
      description:
          "Team player, hard worker, expert in\n both andriod and flutter",
      routeName: RoutePathConstants.locationsRoute,
    ),
    AppCard(
      image: Image.asset("assets/images/maxresdefault.jpg"),
      title: "Recipe List",
      description:
          "Flutter developer, keen learner\n very supporting. Bodyguard of our team",
      routeName: RoutePathConstants.recipeListRoute,
    ),
    AppCard(
      image: Image.asset("assets/images/maxresdefault.jpg"),
      title: "Stop watch Timer",
      description:
          "Flutter developer, keen learner\n very supporting. Bodyguard of our team",
      routeName: RoutePathConstants.stopWatchTimerRoute,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: StackedCardCarousel(
          initialOffset: 30,
          spaceBetweenItems: 300,
          items: appCards,
        ));
  }
}
