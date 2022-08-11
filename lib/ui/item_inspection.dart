import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/shopping_item_model.dart';

class ItemInspection extends StatelessWidget {
  final ShoppingItemModel item;

  const ItemInspection(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(item.name),
      ),
    );
  }
}
