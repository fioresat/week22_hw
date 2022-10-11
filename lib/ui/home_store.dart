import 'package:injectable/injectable.dart';
import 'package:mobx/mobx.dart';
import 'package:week22_hw/domain/model/recipe.dart';
import 'package:week22_hw/domain/service/recipe_service.dart';

import '../data/interactor/defaul_recipe_interactor.dart';
import '../domain/interactor/recipe_interactor.dart';

part 'home_store.g.dart'; // Указание для кодогенерации

@Injectable()
class HomeStore = _HomeStore with _$HomeStore;

abstract class _HomeStore with Store {
  final RecipeInteractor interactor;

  _HomeStore(this.interactor);

  @observable
  List<Recipe> value = [];

  @action
  Future fetchData() async {
    final result = await interactor.getRecipes();
    value = result;
  }
}