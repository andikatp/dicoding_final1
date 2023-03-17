import 'package:cached_network_image/cached_network_image.dart';
import 'package:dicoding_final1/constants/data.dart';
import 'package:dicoding_final1/features/main_screen/widget/top_part.dart';
import 'package:dicoding_final1/models/recipe.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  List<Recipe> _searchData(String name) {
    return data.where((data) => data.name == name).toList();
  }

  void show() {
    print('halo');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: topPart(context),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: data.length,
              (context, index) => Card(
                margin:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                elevation: 3,
                child: Container(
                  height: 100,
                  padding: const EdgeInsets.all(8),
                  child: Row(
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(3),
                        child: CachedNetworkImage(
                          height: 100,
                          width: 100,
                          imageUrl: data[index].imageUrl,
                          fit: BoxFit.cover,
                          placeholder: (context, url) =>
                              const Center(child: CircularProgressIndicator()),
                          errorWidget: (context, url, error) =>
                              const Center(child: Icon(Icons.error)),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Expanded(
                        child: Column(
                          children: [
                            Expanded(
                              child: Text(
                                data[index].name,
                                style: const TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                                overflow: TextOverflow.ellipsis,
                                maxLines: 2,
                              ),
                            ),
                            Row(
                              children: const [],
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
