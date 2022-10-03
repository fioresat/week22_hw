import 'package:week22_hw/domain/recipe.dart';
import 'package:week22_hw/domain/recipe_interactor.dart';

import 'http_recipe_service.dart';
import '../domain/recipe_service.dart';

class DefaultRecipeInteractor implements RecipeInteractor {
  final RecipeService _service = HttpRecipeService();

  @override
  Future<List<Recipe>> getRecipes() => _service.fetchRecipes();
}