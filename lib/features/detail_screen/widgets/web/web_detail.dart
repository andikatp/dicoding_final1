import 'package:dicoding_final1/features/detail_screen/widgets/web/photo_part_web.dart';
import 'package:dicoding_final1/features/detail_screen/widgets/web/steps_part_web.dart';
import 'package:flutter/material.dart';
import '../../../../models/recipe.dart';
import 'ingredient_part_web.dart';

Row webDetail(Color primary, BoxConstraints constraint, Recipe resep) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      ingredientPartWeb(primary, constraint, resep),
      photoPartWeb(resep, primary),
      stepsPartWeb(primary, constraint, resep),
    ],
  );
}
