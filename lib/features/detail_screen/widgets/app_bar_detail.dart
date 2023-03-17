import 'package:flutter/material.dart';

SliverAppBar appBarDetail() {
  return SliverAppBar(
    actions: [
      IconButton(onPressed: () {}, icon: const Icon(Icons.more_horiz)),
    ],
    elevation: 0,
    backgroundColor: Colors.transparent,
    foregroundColor: Colors.black,
    pinned: true,
  );
}
