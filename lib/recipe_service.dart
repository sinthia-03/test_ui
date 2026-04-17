import 'dart:convert';
import '../models/recipe.dart';

class RecipeService {
  static List<Recipe> getRecipes() {
    const String jsonString = '''
    {
      "recipes": [
        {
          "title": "Pasta Carbonara",
          "description": "Creamy pasta dish with bacon and cheese.",
          "ingredients": ["spaghetti", "bacon", "egg", "cheese"]
        },
        {
          "title": "Caprese Salad",
          "description": "Fresh salad with tomato and mozzarella.",
          "ingredients": ["tomatoes", "mozzarella", "basil"]
        },
        {
          "title": "Banana Smoothie",
          "description": "Healthy banana smoothie.",
          "ingredients": ["bananas", "milk"]
        },
        {
          "title": "Chicken Stir-Fry",
          "description": "Quick chicken with vegetables.",
          "ingredients": ["chicken", "broccoli", "carrot", "soy sauce"]
        },
        {
          "title": "Grilled Salmon",
          "description": "Salmon with lemon and herbs.",
          "ingredients": ["salmon", "lemon", "olive oil"]
        },
        {
          "title": "Vegetable Curry",
          "description": "Spicy vegetable curry.",
          "ingredients": ["vegetables", "coconut milk", "curry powder"]
        },
        {
          "title": "Berry Parfait",
          "description": "Layered yogurt dessert.",
          "ingredients": ["berries", "yogurt", "granola"]
        }
      ]
    }
    ''';

    final data = jsonDecode(jsonString);
    final List recipesJson = data['recipes'];

    return recipesJson.map((e) => Recipe.fromJson(e)).toList();
  }
}