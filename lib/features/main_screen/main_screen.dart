import 'package:dicoding_final1/constants/data.dart';
import 'package:dicoding_final1/features/main_screen/widget/mobile/list_mobile.dart';
import 'package:dicoding_final1/features/main_screen/widget/web/list_web.dart';
import 'package:dicoding_final1/widgets/top_part.dart';
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
          topPart(context, _searchData),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            sliver: SliverLayoutBuilder(
              builder: (context, constraint) {
                if (constraint.crossAxisExtent <= 700) {
                  return ListMobile(_data);
                } else if (constraint.crossAxisExtent <= 1200) {
                  return listWeb(3, _data);
                } else {
                  return listWeb(6, _data);
                }
              },
            ),
          ),
        ],
      ),
    );
  }
}
