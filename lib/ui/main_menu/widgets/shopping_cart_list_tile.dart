import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/shopping_cart_model.dart';
import 'package:shopping_list_app/ui/cart_inspection_menu/view/cart_inspection.dart';
import 'package:shopping_list_app/widgets/generic_list_tile.dart';

class ShoppingCartListTile extends StatelessWidget {
  final ShoppingCartModel cart;

  const ShoppingCartListTile(this.cart, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const icone = Icon(
      Icons.shopping_cart,
      color: Colors.white,
      size: 28,
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
      child: GenericListTile(
        newScreen: CartInspection(cart),
        title: cart.name,
        subtitle: cart.getFormatedDate(),
        icone: icone,
      ),
    );
  }
}
