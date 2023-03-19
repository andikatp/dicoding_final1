import 'package:flutter/material.dart';

import '../../../../models/recipe.dart';

 SliverList stepsPart(BuildContext context, Recipe resep) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        childCount: resep.steps.length,
        (context, index) => Padding(
          padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
          child: ListTile(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
            tileColor: Theme.of(context).primaryColor.withOpacity(0.4),
            leading: Container(
              width: 30,
              height: 30,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.circular(15),
              ),
              child: Center(
                child: Text(index.toString()),
              ),
            ),
            title: Text(resep.steps[index]),
          ),
        ),
      ),
    );
  }

