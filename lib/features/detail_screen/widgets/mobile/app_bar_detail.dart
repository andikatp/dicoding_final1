import 'package:dicoding_final1/models/recipe.dart';
import 'package:flutter/material.dart';

SliverAppBar appBarDetail(BuildContext context, Recipe recipe) {
  return SliverAppBar(
    leading: IconButton(
      icon: const Icon(
        Icons.chevron_left,
        size: 36,
      ),
      onPressed: () => Navigator.pop(context),
    ),
    actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
    ],
    expandedHeight: 60,
    elevation: 0,
    backgroundColor: Theme.of(context).primaryColor,
    foregroundColor: Colors.black,
    pinned: true,
    flexibleSpace: FlexibleSpaceBar(
      background: Container(
        color: Colors.white,
      ),
    ),
  );
}
