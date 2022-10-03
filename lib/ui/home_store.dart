import 'package:mobx/mobx.dart';
import 'package:week22_hw/domain/recipe.dart';
import 'package:week22_hw/domain/recipe_service.dart';

import '../data/defaul_recipe_interactor.dart';
import '../domain/recipe_interactor.dart';

part 'home_store.g.dart'; // Указание для кодогенерации

class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  final RecipeInteractor interactor = DefaultRecipeInteractor();

  @observable
  List<Recipe> value = [];

  @action
  Future fetchData() async {
    final result = await interactor.getRecipes();
    value = result;
  }
}