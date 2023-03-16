import 'package:dicoding_final1/features/main_screen/main_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primaryColor: Colors.orange,
          colorScheme: ThemeData().colorScheme.copyWith(
                primary: Colors.orange,
              )),
      routes: {'/': (context) => const MainScreen()},
    );
  }
}
