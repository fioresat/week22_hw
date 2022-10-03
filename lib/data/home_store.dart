import 'package:mobx/mobx.dart';
import 'package:week22_hw/data/recipe.dart';
import 'package:week22_hw/data/recipe_service.dart';

part 'home_store.g.dart'; // Указание для кодогенерации


class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {

  @observable
  List<Recipe> value = [];

  @action
  Future fetchData() async {
    final service = RecipeService();
    final result = await service.fetchRecipes();
    value = result;
  }
}