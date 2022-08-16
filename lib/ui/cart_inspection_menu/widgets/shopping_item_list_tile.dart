import 'package:flutter/material.dart';
import 'package:shopping_list_app/widgets/generic_list_tile.dart';

import '../../../models/shopping_item_model.dart';
import '../../item_inspection_menu/view/item_inspection.dart';

class ShoppingItemListTile extends StatelessWidget {
  final ShoppingItemModel item;

  const ShoppingItemListTile(this.item, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const icone = Icon(
      Icons.shopping_bag,
      color: Colors.white,
      size: 28,
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
      child: GenericListTile(
        newScreen: ItemInspection(item),
        title: item.name,
        subtitle: item.brand,
        trailing: "R\$ ${item.price}",
        icone: icone,
      ),
    );
  }
}
