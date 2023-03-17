import 'package:cached_network_image/cached_network_image.dart';
import 'package:dicoding_final1/constants/data.dart';
import 'package:dicoding_final1/features/detail_screen/detail_screen.dart';
import 'package:dicoding_final1/features/main_screen/widget/top_part.dart';
import 'package:dicoding_final1/models/recipe.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends State<MainScreen> {
  List<Recipe> _data = data;

  void _searchData(String name) {
    _data =
        data.where((data) => data.name.toLowerCase().contains(name)).toList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: topPart(context, _searchData),
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: _data.length,
              (context, index) => GestureDetector(
                onTap: () => Navigator.pushNamed(
                    context, DetailScreen.routeName,
                    arguments: _data[index]),
                child: Card(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15),
                  ),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 40, vertical: 10),
                  elevation: 3,
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.all(8),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Hero(
                          tag: data[index].name,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: CachedNetworkImage(
                              height: 100,
                              width: 80,
                              imageUrl: data[index].imageUrl,
                              fit: BoxFit.cover,
                              placeholder: (context, url) => const Center(
                                  child: CircularProgressIndicator()),
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
                                  _data[index].name,
                                  style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w500,
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 2,
                                ),
                              ),
                              Row(
                                children: [
                                  Row(
                                    children: [
                                      Image.asset(
                                        'images/fire.png',
                                        color: Colors.black45,
                                        height: 12,
                                        width: 12,
                                      ),
                                      const SizedBox(width: 3),
                                      Text(
                                        '${data[index].kcalories} Kcal',
                                        style: const TextStyle(
                                            color: Colors.black45,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                  const SizedBox(width: 5),
                                  Container(
                                    height: 3,
                                    width: 3,
                                    decoration: BoxDecoration(
                                        color: Colors.black45,
                                        borderRadius:
                                            BorderRadius.circular(10)),
                                  ),
                                  const SizedBox(width: 5),
                                  Row(
                                    children: [
                                      const Icon(
                                        Icons.schedule,
                                        color: Colors.black45,
                                        size: 12,
                                      ),
                                      const SizedBox(width: 3),
                                      Text(
                                        '${data[index].kcalories} Kcal',
                                        style: const TextStyle(
                                            color: Colors.black45,
                                            fontSize: 12),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        IconButton(
                          onPressed: () => setState(() =>
                              data[index].isFavorite = !data[index].isFavorite),
                          icon: Icon(
                            data[index].isFavorite
                                ? Icons.favorite
                                : Icons.favorite_outline,
                            color: Theme.of(context).primaryColor,
                          ),
                        )
                      ],
                    ),
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
