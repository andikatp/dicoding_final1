import 'package:dicoding_final1/features/detail_screen/widgets/mobile/steps_part.dart';
import 'package:dicoding_final1/features/detail_screen/widgets/mobile/top_part_detail.dart';
import 'package:flutter/material.dart';

import '../../../../models/recipe.dart';
import 'app_bar_detail.dart';
import 'food_detail.dart';
import 'ingredient_part.dart';

class MobileDetail extends StatelessWidget {
  const MobileDetail(this.resep, {super.key});
  final Recipe resep;

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        appBarDetail(context, resep),
        topPartDetail(context, resep),
        foodDetail(context, resep),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40)
                .copyWith(top: 0),
            child: const Text(
              'Ingredients',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
        ingredientPart(context, resep),
        SliverToBoxAdapter(
          child: Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 40)
                .copyWith(top: 0),
            child: const Text(
              'Steps',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
        ),
        stepsPart(context, resep),
      ],
    );
  }
}
