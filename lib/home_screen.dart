import 'package:flutter/material.dart';
import 'package:test_ui/recipe_service.dart';
import '../models/recipe.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Recipe> recipes = RecipeService.getRecipes();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Recipe List"),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: recipes.length,
        itemBuilder: (context, index) {
          final recipe = recipes[index];

          return Card(
            margin: const EdgeInsets.all(10),
            child: ListTile(
              leading: const Icon(Icons.fastfood),
              title: Text(recipe.title),
              subtitle: Text(recipe.description),
            ),
          );
        },
      ),
    );
  }
}