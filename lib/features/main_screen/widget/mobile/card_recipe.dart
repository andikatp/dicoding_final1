import 'package:cached_network_image/cached_network_image.dart';
import 'package:dicoding_final1/features/main_screen/widget/mobile/favorite_button.dart';
import 'package:dicoding_final1/models/recipe.dart';
import 'package:flutter/material.dart';

Card cardRecipe(Recipe recipe) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(15),
    ),
    margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
    elevation: 3,
    child: Container(
      height: 100,
      padding: const EdgeInsets.all(8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Hero(
            tag: recipe.name,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: CachedNetworkImage(
                height: 100,
                width: 80,
                imageUrl: recipe.imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) =>
                    const Center(child: Icon(Icons.error)),
              ),
            ),
          ),
          const SizedBox(width: 10),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Text(
                    recipe.name,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                    overflow: TextOverflow.ellipsis,
                    maxLines: 2,
                  ),
                ),
                Wrap(
                  crossAxisAlignment: WrapCrossAlignment.center,
                  children: [
                    Wrap(
                      children: [
                        Image.asset(
                          'images/fire.png',
                          color: Colors.black45,
                          height: 12,
                          width: 12,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          '${recipe.kcalories} Kcal',
                          style: const TextStyle(
                            color: Colors.black45,
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        )
                      ],
                    ),
                    Container(
                      height: 3,
                      width: 3,
                      margin: const EdgeInsets.symmetric(horizontal: 5),
                      decoration: BoxDecoration(
                        color: Colors.black45,
                        borderRadius: BorderRadius.circular(1.5),
                      ),
                    ),
                    Wrap(
                      children: [
                        const Icon(
                          Icons.schedule,
                          color: Colors.black45,
                          size: 12,
                        ),
                        const SizedBox(width: 3),
                        Text(
                          '${recipe.duration} Duration',
                          style: const TextStyle(
                            color: Colors.black45,
                            fontSize: 12,
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
          FavoriteButton(recipe),
        ],
      ),
    ),
  );
}
