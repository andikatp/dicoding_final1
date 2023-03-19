import 'package:dicoding_final1/features/detail_screen/widgets/mobile/detail_mobile.dart';
import 'package:dicoding_final1/features/detail_screen/widgets/web/web_detail.dart';
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
      body: LayoutBuilder(
        builder: (context, constraint) {
          if (constraint.maxWidth <= 700) {
            return MobileDetail(resep);
          } else {
            return webDetail(primary, constraint, resep);
          }
        },
      ),
    );
  }
}
