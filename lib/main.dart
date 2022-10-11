import 'package:flutter/material.dart';
import 'package:week22_hw/ui/screen/recipes_screen.dart';

import 'di/config.dart';


void main() {
  configureDependencies();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: '/home',
      routes: {
        '/home': (_) => const RecipesScreen(),
      },
    );
  }
}