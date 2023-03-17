import 'package:cached_network_image/cached_network_image.dart';
import 'package:dicoding_final1/models/recipe.dart';
import 'package:flutter/material.dart';

class DetailScreen extends StatelessWidget {
  static const routeName = '/detail-screen';

  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final primary = Theme.of(context).primaryColor;
    final resep = ModalRoute.of(context)?.settings.arguments as Recipe;
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            actions: [
              IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
            ],
            elevation: 0,
            backgroundColor: Colors.transparent,
            foregroundColor: Colors.black,
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    resep.name,
                    style: const TextStyle(
                        fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      const Icon(Icons.person),
                      Text(
                        resep.createdBy,
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                      const Spacer(),
                      Container(
                        height: 25,
                        width: 60,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: primary,
                        ),
                        child: const Center(
                          child: Text(
                            'Follow',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Hero(
                    tag: resep.name,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: CachedNetworkImage(
                        imageUrl: resep.imageUrl,
                        height: 250,
                        fit: BoxFit.cover,
                        placeholder: (context, url) =>
                            const Center(child: CircularProgressIndicator()),
                        errorWidget: (context, url, error) =>
                            const Center(child: Icon(Icons.error)),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
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
          ),
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
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: resep.ingredients.length,
              (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  tileColor: primary.withOpacity(0.4),
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(child: Text(index.toString())),
                  ),
                  title: Text(resep.ingredients[index]),
                ),
              ),
            ),
          ),
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
          SliverList(
            delegate: SliverChildBuilderDelegate(
              childCount: resep.steps.length,
              (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20)),
                  tileColor: primary.withOpacity(0.4),
                  leading: Container(
                    width: 30,
                    height: 30,
                    decoration: BoxDecoration(
                        color: primary,
                        borderRadius: BorderRadius.circular(15)),
                    child: Center(child: Text(index.toString())),
                  ),
                  title: Text(resep.steps[index]),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
