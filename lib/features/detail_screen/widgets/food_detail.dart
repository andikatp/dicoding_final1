import 'package:flutter/material.dart';

import '../../../models/recipe.dart';

SliverToBoxAdapter foodDetail(Color primary, Recipe resep) {
  return SliverToBoxAdapter(
    child: Container(
      margin: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
      height: 80,
      decoration: BoxDecoration(
        color: primary.withOpacity(0.4),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.grass,
                color: Colors.red,
                size: 30,
              ),
              Text(
                resep.kcalories.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                'Calories',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              const Icon(
                Icons.timer,
                color: Colors.blue,
                size: 30,
              ),
              Text(
                resep.duration.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                'Duration',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.face_unlock_outlined,
                color: primary,
                size: 30,
              ),
              Text(
                resep.kcalories.toString(),
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
              const Text(
                'Calories',
                style: TextStyle(fontSize: 12),
              )
            ],
          ),
        ],
      ),
    ),
  );
}
