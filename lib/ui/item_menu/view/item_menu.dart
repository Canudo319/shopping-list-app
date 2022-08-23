import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:shopping_list_app/models/shopping_item_model.dart';

import '../../../widgets/info_text.dart';

class ItemMenu extends StatelessWidget {
  final void Function(ShoppingItemModel) func;
  final ShoppingItemModel? itemInicial;

  const ItemMenu(this.func, {this.itemInicial, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var item = itemInicial ??
        ShoppingItemModel(
          id: 0,
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
              func(item);
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
            const SizedBox(height: 10),
            const InfoText("Marca do item"),
            TextFormField(
              initialValue: item.brand ?? "",
              style: const TextStyle(
                fontSize: 20,
              ),
              onChanged: (String s) {
                item.brand = s;
              },
            ),
            const SizedBox(height: 10),
            const InfoText("Tipo de item"),
            TextFormField(
              initialValue: item.type ?? "",
              style: const TextStyle(
                fontSize: 20,
              ),
              onChanged: (String s) {
                item.type = s;
              },
            ),
            const SizedBox(height: 10),
            const InfoText("Preço do item"),
            TextFormField(
              initialValue: item.price.toString(),
              style: const TextStyle(
                fontSize: 20,
              ),
              onChanged: (String s) {
                item.price = double.tryParse(s) ?? 0.0;
              },
              keyboardType:
                  const TextInputType.numberWithOptions(decimal: true),
              inputFormatters: <TextInputFormatter>[
                FilteringTextInputFormatter.allow(RegExp(r'^(\d+)?\.?\d{0,2}'))
              ],
            ),
          ],
        ),
      ),
    );
  }
}
