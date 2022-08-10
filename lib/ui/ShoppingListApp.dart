import 'package:flutter/material.dart';
import 'package:shopping_list_app/widgets/GreeterWidget.dart';

class ShoppingListApp extends StatelessWidget {
  const ShoppingListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: GreeterWidget(),
        ),
      ),
    );
  }
}
