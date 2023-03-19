import 'package:bordered_text/bordered_text.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import '../../../../models/recipe.dart';
import '../../../detail_screen/detail_screen.dart';

Container gridWeb(BuildContext context, Recipe recipe) {
  return Container(
    margin: const EdgeInsets.all(20),
    height: 100,
    width: 100,
    child: GestureDetector(
      onTap: () => Navigator.pushNamed(context, DetailScreen.routeName,
          arguments: recipe),
      child: Stack(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Hero(
              tag: recipe.name,
              child: CachedNetworkImage(
                imageUrl: recipe.imageUrl,
                height: double.infinity,
                width: double.infinity,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(
                  child: CircularProgressIndicator(),
                ),
                errorWidget: (context, url, error) => const Center(
                  child: Icon(Icons.error),
                ),
              ),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              gradient: LinearGradient(
                colors: [
                  const Color.fromARGB(255, 255, 164, 103).withOpacity(0.5),
                  Colors.transparent
                ],
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
              ),
            ),
          ),
          Positioned(
            bottom: 20,
            left: 10,
            child: BorderedText(
              strokeColor: Colors.black,
              strokeWidth: 2,
              child: Text(
                recipe.name,
                style: const TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                  color: Colors.white,
                ),
              ),
            ),
          ),
        ],
      ),
    ),
  );
}
