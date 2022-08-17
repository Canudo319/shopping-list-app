import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/shopping_cart_model.dart';
import 'package:shopping_list_app/models/shopping_item_model.dart';
import 'package:shopping_list_app/ui/cart_inspection_menu/widgets/shopping_item_list_tile.dart';
import 'package:shopping_list_app/widgets/text_button_setname.dart';

import '../../../widgets/add_button.dart';

class CartInspection extends StatefulWidget {
  final ShoppingCartModel cart;
  final void Function(String) setName;

  const CartInspection(this.cart, this.setName, {Key? key}) : super(key: key);

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

    void _setCartName(String name) {
      setState(() {
        widget.setName(name);
      });
    }

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextButtonSetName(
              nomeInicial: widget.cart.name,
              setName: _setCartName,
            ),
            const SizedBox(height: 2),
            Text(
              widget.cart.getFormatedDate(),
              style: const TextStyle(fontSize: 12),
            ),
          ],
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          children: [
            Expanded(
              child: Card(
                color: Colors.transparent,
                elevation: 0,
                child: ListView(
                  children: [..._extract(widget.cart.itens)],
                ),
              ),
            ),
            AddButton(() {}),
          ],
        ),
      ),
    );
  }
}
