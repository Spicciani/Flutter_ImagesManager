import 'package:flutter/material.dart';
import 'package:image_manager/main_menu_scree.dart';

void main() {
  runApp(const ImageManagerApp());
}

class ImageManagerApp extends StatelessWidget {
  const ImageManagerApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Info01 Image Manager",
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.teal),
        useMaterial3: true,
      ),
      home: const MainMenu(),
    );
  }
}
