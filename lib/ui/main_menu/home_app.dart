import 'package:flutter/material.dart';
import 'package:shopping_list_app/ui/main_menu/view/shopping_carts_menu.dart';

class HomeApp extends StatefulWidget {
  const HomeApp({Key? key}) : super(key: key);

  @override
  State<HomeApp> createState() => _HomeAppState();
}

class _HomeAppState extends State<HomeApp> {
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
      home: ShoppingCartsMenu(_setThemeData),
      debugShowCheckedModeBanner: false,
    );
  }
}
