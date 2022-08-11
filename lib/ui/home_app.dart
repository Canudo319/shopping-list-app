import 'package:flutter/material.dart';
import 'package:shopping_list_app/ui/change_primary_color.dart';

import '../models/shopping_item_model.dart';
import '../widgets/greeter_widget.dart';
import '../widgets/shopping_item_list_tile.dart';
import 'item_inspection.dart';

class HomeApp extends StatelessWidget {
  final void Function(ThemeData) _setThemeData;

  const HomeApp(this._setThemeData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ShoppingItemListTile> _extract(List<ShoppingItemModel> listaItens) {
      List<ShoppingItemListTile> listTiles = [];

      for (var item in listaItens) {
        listTiles.add(ShoppingItemListTile(item));
      }

      return listTiles;
    }

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

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const GreeterWidget(),
        actions: [
          RawMaterialButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) =>
                      ChangePrimaryColor(_setThemeData),
                ),
              );
            },
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
    );
  }
}
