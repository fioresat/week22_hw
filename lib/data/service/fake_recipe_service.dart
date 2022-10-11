import '../../domain/model/recipe.dart';
import '../../domain/service/recipe_service.dart';

const _generalImage = "https://images.immediate.co.uk/production/volatile/sites/30/2020/08/chorizo-mozarella-gnocchi-bake-cropped-9ab73a3.jpg?quality=90&resize=768,574";

class FakeRecipeService implements RecipeService {
  @override
  Future<List<Recipe>> fetchRecipes() async {
    return [
      Recipe(title: "Recipe 1", image: _generalImage),
      Recipe(title: "Recipe 2", image: _generalImage),
      Recipe(title: "Recipe 3", image: _generalImage),
      Recipe(title: "Recipe 4", image: _generalImage),
      Recipe(title: "Recipe 5", image: _generalImage),
    ];
  }
}