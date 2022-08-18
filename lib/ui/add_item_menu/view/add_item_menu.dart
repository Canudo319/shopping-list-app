import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/shopping_cart_model.dart';
import 'package:shopping_list_app/models/shopping_item_model.dart';

import '../../../widgets/info_text.dart';

class AddItemMenu extends StatelessWidget {
  final ShoppingCartModel cart;
  final void Function(ShoppingItemModel) addItem;

  const AddItemMenu(this.cart, this.addItem, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var item = ShoppingItemModel(
      id: cart.itens.length + 1,
      name: "Item",
      price: 0.00,
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Adicionar item no carrinho"),
        actions: [
          RawMaterialButton(
            onPressed: () {
              addItem(item);
              Navigator.pop(context);
            },
            shape: const CircleBorder(),
            child: const Icon(
              Icons.save,
              color: Colors.white,
              size: 30,
            ),
          )
        ],
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const InfoText("Nome do item"),
            TextFormField(
              initialValue: item.name,
              style: const TextStyle(
                fontSize: 20,
              ),
              onChanged: (String s) {
                item.name = s;
              },
            ),
          ],
        ),
      ),
    );
  }
}
