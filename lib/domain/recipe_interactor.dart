import 'package:week22_hw/domain/recipe.dart';

abstract class RecipeInteractor {
  Future<List<Recipe>> getRecipes();
}