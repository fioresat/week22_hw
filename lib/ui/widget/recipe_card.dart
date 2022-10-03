import 'package:flutter/material.dart';
import 'package:week22_hw/domain/model/recipe.dart';

class RecipeCard extends StatelessWidget {
  final Recipe recipe;

  const RecipeCard({
    Key? key,
    required this.recipe,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(recipe.title, style: TextStyle(fontSize: 20),),
        Container(
          margin: EdgeInsets.only(bottom: 10, left: 10, right: 10),
          width: 250,
          height: 250,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: NetworkImage(recipe.image),
              fit: BoxFit.contain,
            ),
          ),
        ),
      ],
    );
  }
}