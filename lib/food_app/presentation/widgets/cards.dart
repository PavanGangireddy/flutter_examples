import 'package:flutter/material.dart';
import 'package:flutter_app_pilot/core/route_path_constants.dart';

import '../pages/constants.dart' as constants;

class DishCard extends StatelessWidget {
  const DishCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  _onDishTap(BuildContext context, int id) {
    Navigator.pushNamed(context, RoutePathConstants.foodAppDishDetailRoute,
        arguments: {"id": id});
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () => _onDishTap(context, index),
        child: Container(
            width: 200,
            margin: const EdgeInsets.only(left: 15, right: 15),
            child: Stack(alignment: Alignment.center, children: [
              Positioned(
                bottom: 10,
                child: _DishCard(index: index),
              ),
              Positioned(
                top: 0,
                child: Container(
                  height: 150,
                  width: 150,
                  child: Hero(
                    tag: 'dish-$index',
                    child: Image.asset(
                      'assets/food_app/dish-${index + 1}.png',
                    ),
                  ),
                ),
              )
            ])));
  }
}

class _DishCard extends StatelessWidget {
  const _DishCard({
    Key? key,
    required this.index,
  }) : super(key: key);

  final int index;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: constants.shadedDecoration,
      width: 200.0,
      height: 200.0,
      alignment: Alignment.centerLeft,
      padding: const EdgeInsets.only(left: 15.0),
      child: Text("DishContent"),
    );
  }
}
