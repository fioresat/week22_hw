import 'package:injectable/injectable.dart';
import 'package:week22_hw/domain/model/recipe.dart';
import 'package:week22_hw/domain/interactor/recipe_interactor.dart';

import '../service/http_recipe_service.dart';
import '../../domain/service/recipe_service.dart';

@Injectable(as: RecipeInteractor)
class DefaultRecipeInteractor implements RecipeInteractor {
  final RecipeService _service;

  DefaultRecipeInteractor(this._service);

  @override
  Future<List<Recipe>> getRecipes() => _service.fetchRecipes();
}