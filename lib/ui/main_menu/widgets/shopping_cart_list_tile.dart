import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/shopping_cart_model.dart';
import 'package:shopping_list_app/ui/cart_inspection_menu/view/cart_inspection.dart';
import 'package:shopping_list_app/widgets/generic_list_tile.dart';

class ShoppingCartListTile extends StatefulWidget {
  final ShoppingCartModel cart;

  const ShoppingCartListTile(this.cart, {Key? key}) : super(key: key);

  @override
  State<ShoppingCartListTile> createState() => _ShoppingCartListTileState();
}

class _ShoppingCartListTileState extends State<ShoppingCartListTile> {
  @override
  Widget build(BuildContext context) {
    void _setCartName(String newName) {
      setState(() {
        widget.cart.setName(newName);
      });
    }

    const icone = Icon(
      Icons.shopping_cart,
      color: Colors.white,
      size: 28,
    );

    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
      child: GenericListTile(
        newScreen: CartInspection(widget.cart, _setCartName),
        title: widget.cart.name,
        subtitle: widget.cart.getFormatedDate(),
        icone: icone,
      ),
    );
  }
}
