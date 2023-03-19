import 'package:flutter/material.dart';

import '../../../../models/recipe.dart';

Flexible stepsPartWeb(Color primary, BoxConstraints constraint, Recipe resep) {
  return Flexible(
    flex: 1,
    child: SingleChildScrollView(
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'Steps',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 22),
            ),
            ListView.builder(
              shrinkWrap: true,
              itemBuilder: (context, index) => Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 5),
                child: ListTile(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                  tileColor: primary.withOpacity(0.4),
                  leading: constraint.maxWidth <= 950
                      ? null
                      : Container(
                          width: 30,
                          height: 30,
                          decoration: BoxDecoration(
                            color: primary,
                            borderRadius: BorderRadius.circular(15),
                          ),
                          child: Center(
                              child: Text(
                            index.toString(),
                            style: const TextStyle(color: Colors.white),
                          )),
                        ),
                  title: Text(
                    resep.steps[index],
                    style: const TextStyle(color: Colors.white),
                  ),
                ),
              ),
              itemCount: resep.steps.length,
            ),
          ],
        ),
      ),
    ),
  );
}
