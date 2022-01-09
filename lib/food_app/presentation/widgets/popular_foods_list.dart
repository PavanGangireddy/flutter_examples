import 'package:flutter/material.dart';
import 'package:flutter_app_pilot/food_app/presentation/view_models/dish/dishes_view_model.dart';
import 'package:flutter_app_pilot/widgets/cards.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';

class PopularFoodsList extends HookConsumerWidget {
  const PopularFoodsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final dishList =
        ref.watch(dishesViewModelProvider.select((state) => state.dishes));

    return dishList.maybeWhen(
        orElse: () => Container(
              color: Colors.white,
              child: const Center(child: CircularProgressIndicator()),
            ),
        initial: () => Container(
              color: Colors.white,
              child: const Center(child: CircularProgressIndicator()),
            ),
        loading: () => Container(
              color: Colors.white,
              child: const Center(child: CircularProgressIndicator()),
            ),
        data: (data) => data.isEmpty
            ? const Center(child: Text("start typing"))
            : Container(
                height: 300.0,
                child: ListView(
                    shrinkWrap: true,
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    children: [
                      for (var i = 0; i < data.length; i++) ...[
                        if (i > 0) const Divider(height: 0),
                        DishCard(index: i)
                      ],
                    ])),
        error: (err) {
          return Center(
            child: Text('$err.toString()'),
          );
        });
  }
}