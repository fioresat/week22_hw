import 'package:week22_hw/domain/recipe.dart';

abstract class RecipeService {
  Future<List<Recipe>> fetchRecipes();
}