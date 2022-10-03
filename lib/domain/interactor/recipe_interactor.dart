import 'package:week22_hw/domain/model/recipe.dart';

abstract class RecipeInteractor {
  Future<List<Recipe>> getRecipes();
}