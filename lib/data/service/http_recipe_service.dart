import 'package:injectable/injectable.dart';
import 'package:week22_hw/domain/service/recipe_service.dart';
import 'dart:convert';

import 'package:http/http.dart' as http;
import '../../domain/model/recipe.dart';

@Injectable(as: RecipeService)
class HttpRecipeService implements RecipeService {
  @override
  Future<List<Recipe>> fetchRecipes() async {
    var url = Uri.parse('https://api.spoonacular.com/recipes/complexSearch?apiKey=YOUR_API_KEY_HERE');
    var response = await http.get(url);
    print('Response status: ${response.statusCode}');
    print('Response body: ${response.body}');
    final results = jsonDecode(response.body)['results'] as List<dynamic>;
    return results.map((obj) => Recipe.fromJson(obj)).toList();
  }
}