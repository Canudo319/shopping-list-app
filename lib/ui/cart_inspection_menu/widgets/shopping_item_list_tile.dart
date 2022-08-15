import 'package:flutter/material.dart';

import '../../../models/shopping_item_model.dart';
import '../../item_inspection.dart';

class ShoppingItemListTile extends StatelessWidget {
  final ShoppingItemModel item;

  const ShoppingItemListTile(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => ItemInspection(item),
            ),
          );
        },
        leading: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
          size: 28,
        ),
        title: _ShoppingItemListNameText(item.name),
        subtitle: Text(
          item.brand ?? "",
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
        trailing: _ShoppingItemListNameText("R\$ ${item.price}"),
        tileColor: Theme.of(context).primaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            14.0,
          ),
        ),
      ),
    );
  }
}

class _ShoppingItemListNameText extends StatelessWidget {
  final String text;

  const _ShoppingItemListNameText(this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: const TextStyle(
        fontSize: 28,
        color: Colors.white,
      ),
    );
  }
}
