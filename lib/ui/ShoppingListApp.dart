import 'package:flutter/material.dart';
import 'package:shopping_list_app/widgets/GreeterWidget.dart';

class ShoppingListApp extends StatelessWidget {
  const ShoppingListApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const GreeterWidget(),
          actions: [
            ElevatedButton(
              onPressed: () {},
              child: const Icon(
                Icons.format_paint,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: const Center(
          child: Text("Adicionar uma nova compra"),
        ),
      ),
    );
  }
}
