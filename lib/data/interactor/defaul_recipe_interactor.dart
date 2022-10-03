import 'package:week22_hw/domain/model/recipe.dart';
import 'package:week22_hw/domain/interactor/recipe_interactor.dart';

import '../service/http_recipe_service.dart';
import '../../domain/service/recipe_service.dart';

class DefaultRecipeInteractor implements RecipeInteractor {
  final RecipeService _service = HttpRecipeService();

  @override
  Future<List<Recipe>> getRecipes() => _service.fetchRecipes();
}