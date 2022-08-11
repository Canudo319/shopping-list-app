import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/shopping_item_model.dart';

class ShoppingItemListTile extends StatelessWidget {
  final ShoppingItemModel item;

  const ShoppingItemListTile(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
      child: ListTile(
        onTap: () {},
        leading: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
          size: 28,
        ),
        title: _ShoppingItemListNameText(item),
        subtitle: Text(
          item.brand ?? "",
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
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
  final ShoppingItemModel item;

  const _ShoppingItemListNameText(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          item.name,
          style: const TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
        const Spacer(),
        Text(
          "R\$ ${item.price}",
          style: const TextStyle(
            fontSize: 28,
            color: Colors.white,
          ),
        ),
      ],
    );
  }
}
