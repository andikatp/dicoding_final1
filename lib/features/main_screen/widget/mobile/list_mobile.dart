// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dicoding_final1/features/main_screen/widget/mobile/card_recipe.dart';
import 'package:flutter/material.dart';
import '../../../../models/recipe.dart';
import '../../../detail_screen/detail_screen.dart';

class ListMobile extends StatelessWidget {
  final List<Recipe> recipes;
  const ListMobile(this.recipes, {super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: recipes.length,
        (context, index) => GestureDetector(
          onTap: () => Navigator.pushNamed(
            context,
            DetailScreen.routeName,
            arguments: recipes[index],
          ),
          child: cardRecipe(recipes[index]),
        ),
      ),
    );
  }
}
