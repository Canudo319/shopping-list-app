import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/shopping_cart_model.dart';
import 'package:shopping_list_app/models/shopping_item_model.dart';
import 'package:shopping_list_app/ui/cart_inspection_menu/widgets/shopping_item_list_tile.dart';

import '../../main_menu/widgets/shopping_cart_list_tile.dart';

class CartInspection extends StatefulWidget {
  final ShoppingCartModel cart;

  const CartInspection(this.cart, {Key? key}) : super(key: key);

  @override
  State<CartInspection> createState() => _CartInspectionState();
}

class _CartInspectionState extends State<CartInspection> {
  @override
  Widget build(BuildContext context) {
    List<ShoppingItemListTile> _extract(List<ShoppingItemModel> listaItens) {
      List<ShoppingItemListTile> listTiles = [];

      for (var item in listaItens) {
        listTiles.add(ShoppingItemListTile(item));
      }

      return listTiles;
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              widget.cart.name,
              style: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 20,
              ),
            ),
            const SizedBox(height: 2),
            Text(
              widget.cart.getFormatedDate(),
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      body: ListView(
        padding: const EdgeInsets.all(10),
        children: [..._extract(widget.cart.itens ?? [])],
      ),
    );
  }
}
