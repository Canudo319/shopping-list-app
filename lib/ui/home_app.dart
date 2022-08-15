import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/shopping_cart_model.dart';
import 'package:shopping_list_app/ui/change_primary_color.dart';
import 'package:shopping_list_app/widgets/shopping_cart_list_tile.dart';

import '../models/shopping_item_model.dart';
import '../widgets/greeter_widget.dart';

class HomeApp extends StatelessWidget {
  final void Function(ThemeData) _setThemeData;

  const HomeApp(this._setThemeData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<ShoppingCartListTile> _extract(List<ShoppingCartModel> listaCarts) {
      List<ShoppingCartListTile> listTiles = [];

      for (var cart in listaCarts) {
        listTiles.add(ShoppingCartListTile(cart));
      }

      return listTiles;
    }

    var shoppingCarts = [
      ShoppingCartModel(
        id: 1,
        date: DateTime(2022, 08, 14),
        name: "Carrinho 1",
        itens: [
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
        ],
      ),
      ShoppingCartModel(
        id: 1,
        date: DateTime(2022, 08, 14),
        name: "Carrinho 2",
        itens: [
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
        ],
      )
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
        children: [..._extract(shoppingCarts)],
      ),
    );
  }
}
