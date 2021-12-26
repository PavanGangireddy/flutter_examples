import 'package:flutter/material.dart';
import 'package:flutter_app_pilot/notifiers/recipe_notifier.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter_app_pilot/services/RecipeService/models.dart';

class RecipesApp extends StatelessWidget {
  const RecipesApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: const [
                  SizedBox(height: 50),
                  Title(),
                  SearchInput(),
                  RecipeList()
                ])));
  }
}

class SearchInput extends HookConsumerWidget {
  const SearchInput({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchTextController = useTextEditingController();
    return SizedBox(
        height: 100,
        child: TextField(
          controller: searchTextController,
          onSubmitted: (value) {
            ref.watch(recipeListNotifierProvider.notifier).getRecipeData(value);
          },
        ));
  }
}

class Title extends StatelessWidget {
  const Title({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(20.0),
      child: const Text(
        "RecipesList",
        style: TextStyle(color: Colors.blue, fontSize: 30),
      ),
    );
  }
}

class RecipeList extends HookConsumerWidget {
  const RecipeList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipeList = ref.watch(recipeListNotifierProvider);
    return recipeList.when(
        loading: () => Container(
              color: Colors.white,
              child: const Center(child: CircularProgressIndicator()),
            ),
        data: (data) => data.isEmpty
            ? const Center(child: Text("start typing"))
            : Flexible(
                child: ListView(children: [
                for (var i = 0; i < data.length; i++) ...[
                  if (i > 0) const Divider(height: 0),
                  ProviderScope(
                    overrides: [
                      currentRecipe.overrideWithValue(data[i]),
                    ],
                    child: const RecipeItem(),
                  ),
                ],
              ])),
        error: (err, stack) {
          return Center(
            child: Text('$err.toString()'),
          );
        });
  }
}

final currentRecipe = Provider<APIRecipe>((_) => throw UnimplementedError());

class RecipeItem extends HookConsumerWidget {
  const RecipeItem({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final recipe = ref.watch(currentRecipe);

    return recipeStringCard(recipe.image, recipe.label, recipe.calories);
  }
}

// TODO: Replace with new class
Widget recipeStringCard(String image, String label, double calories) {
  return Card(
    elevation: 4.0,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(6.0),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        ClipRRect(
            borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(6.0), topRight: Radius.circular(6.0)),
            child: CachedNetworkImage(
                // TODO: Replace with image from recipe
                imageUrl: image,
                height: 210,
                fit: BoxFit.fill)),
        const SizedBox(
          height: 12.0,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 8.0),
          child: Text(
            // TODO: Replace with label from recipe
            label,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 15),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
        const Padding(
          padding: EdgeInsets.only(left: 8.0),
          child: Text(
            '450 Kcal',
            style: TextStyle(
              fontWeight: FontWeight.normal,
              fontSize: 11,
            ),
          ),
        ),
        const SizedBox(
          height: 8.0,
        ),
      ],
    ),
  );
}
