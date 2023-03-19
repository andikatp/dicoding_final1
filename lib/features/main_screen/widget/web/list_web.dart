import 'package:flutter/material.dart';
import '../../../../models/recipe.dart';
import 'grid_recipe.dart';

SliverGrid listWeb(int axis, List<Recipe> recipe) {
  return SliverGrid.builder(
    gridDelegate:
        SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: axis),
    itemCount: recipe.length,
    itemBuilder: (context, index) => gridWeb(context, recipe[index]),
  );
}
