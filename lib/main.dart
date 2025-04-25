import 'package:flutter/material.dart';
import 'package:stickers/screens/main_navigation/main_navigation.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {MainNavigation.routeName: (_) => MainNavigation()},
      initialRoute: MainNavigation.routeName,
    );
  }
}
