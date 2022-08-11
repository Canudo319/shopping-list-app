import 'package:flutter/material.dart';
import 'package:shopping_list_app/ui/home_app.dart';

class ShoppingListApp extends StatefulWidget {
  const ShoppingListApp({Key? key}) : super(key: key);

  @override
  State<ShoppingListApp> createState() => _ShoppingListAppState();
}

class _ShoppingListAppState extends State<ShoppingListApp> {
  var themeApp = ThemeData(
    primaryColor: Colors.blue,
  );

  void _setThemeData(ThemeData theme) {
    setState(() {
      themeApp = theme;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Shopping App",
      theme: themeApp,
      home: HomeApp(_setThemeData),
    );
  }
}
