import 'package:flutter/material.dart';
import 'package:shopping_list_app/ui/item_menu/view/item_menu.dart';
import 'package:shopping_list_app/widgets/generic_list_tile.dart';

import '../../../models/shopping_item_model.dart';

class ShoppingItemListTile extends StatelessWidget {
  final ShoppingItemModel item;
  final void Function() refesh;

  const ShoppingItemListTile(this.item, this.refesh, {Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    const icone = Icon(
      Icons.shopping_bag,
      color: Colors.white,
      size: 28,
    );

    void _addItem(ShoppingItemModel item) {
      refesh();
    }

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
      child: GenericListTile(
        newScreen: ItemMenu(_addItem, itemInicial: item),
        title: item.name,
        subtitle: item.brand,
        trailing: "R\$ ${item.price}",
        icone: icone,
      ),
    );
  }
}
