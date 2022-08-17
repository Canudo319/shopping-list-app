import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/shopping_cart_model.dart';
import 'package:shopping_list_app/widgets/info_text.dart';

import '../../../widgets/alert_dialog_empty_text.dart';

class AddCartMenu extends StatelessWidget {
  final int? defaultCartNumber;
  final void Function(ShoppingCartModel) addCart;
  const AddCartMenu(
    this.defaultCartNumber,
    this.addCart, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var cart = ShoppingCartModel(
      id: defaultCartNumber ?? 1,
      name: "Carrinho ${defaultCartNumber ?? 1}",
      date: DateTime.now(),
      itens: [],
    );

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: const Text("Adicionar carrinho"),
        actions: [
          RawMaterialButton(
            onPressed: () {
              if (cart.name.isEmpty) {
                AlertDialogEmptyText.show(
                  "Nome do carrinho não pode ser vázio",
                  context,
                );
              } else {
                addCart(cart);
                Navigator.pop(context);
              }
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
            const InfoText("Nome do carrinho"),
            TextFormField(
              initialValue: cart.name,
              style: const TextStyle(
                fontSize: 20,
              ),
              onChanged: (String s) {
                cart.name = s;
              },
            ),
          ],
        ),
      ),
    );
  }
}
