import 'package:flutter/material.dart';

import '../../../../models/recipe.dart';

class FavoriteButton extends StatefulWidget {
  final Recipe recipe;
  const FavoriteButton(this.recipe, {super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () => setState(
          () => widget.recipe.isFavorite = !widget.recipe.isFavorite),
      icon: Icon(
        widget.recipe.isFavorite ? Icons.favorite : Icons.favorite_outline,
        color: Theme.of(context).primaryColor,
      ),
    );
  }
}
