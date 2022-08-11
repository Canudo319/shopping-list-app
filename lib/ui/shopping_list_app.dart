import 'package:flutter/material.dart';
import 'package:shopping_list_app/ui/home_app.dart';

class ShoppingListApp extends StatelessWidget {
  const ShoppingListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping App",
      theme: ThemeData(
        primaryColor: Colors.blue,
      ),
      home: const HomeApp(),
    );
  }
}
