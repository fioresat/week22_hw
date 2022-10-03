import 'package:week22_hw/domain/model/recipe.dart';

abstract class RecipeService {
  Future<List<Recipe>> fetchRecipes();
}