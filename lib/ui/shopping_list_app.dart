import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/shopping_item_model.dart';
import 'package:shopping_list_app/widgets/greeter_widget.dart';
import 'package:shopping_list_app/widgets/shopping_item_list_tile.dart';

class ShoppingListApp extends StatelessWidget {
  const ShoppingListApp({Key? key}) : super(key: key);

  List<ShoppingItemListTile> _extract(List<ShoppingItemModel> listaItens) {
    List<ShoppingItemListTile> listTiles = [];

    for (var item in listaItens) {
      listTiles.add(ShoppingItemListTile(item));
    }

    return listTiles;
  }

  @override
  Widget build(BuildContext context) {
    var itens = [
      ShoppingItemModel(
        id: 1,
        name: "Bolacha",
        price: 3.99,
        brand: "Trakinas",
      ),
      ShoppingItemModel(
        id: 2,
        name: "Multiuso",
        price: 7.99,
        brand: "Omo",
        type: "Limpeza",
      ),
    ];

    var themeData = ThemeData(
      primaryColor: Colors.blue,
    );

    return MaterialApp(
      theme: themeData,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: themeData.primaryColor,
          title: const GreeterWidget(),
          actions: [
            RawMaterialButton(
              onPressed: () {},
              shape: const CircleBorder(),
              child: const Icon(
                Icons.format_paint,
                color: Colors.white,
              ),
            )
          ],
        ),
        body: ListView(
          padding: const EdgeInsets.all(10),
          children: [..._extract(itens)],
        ),
      ),
    );
  }
}
