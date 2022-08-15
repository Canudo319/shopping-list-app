import 'package:flutter/material.dart';
import 'package:shopping_list_app/models/shopping_cart_model.dart';
import 'package:shopping_list_app/ui/cart_inspection_menu/view/cart_inspection.dart';

class ShoppingCartListTile extends StatelessWidget {
  final ShoppingCartModel cart;

  const ShoppingCartListTile(this.cart, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(0, 4, 0, 4),
      child: ListTile(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute<void>(
              builder: (BuildContext context) => CartInspection(cart),
            ),
          );
        },
        leading: const Icon(
          Icons.shopping_cart,
          color: Colors.white,
          size: 28,
        ),
        title: _ShoppingCartNameText(cart.name),
        subtitle: Text(
          cart.getFormatedDate(),
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

class _ShoppingCartNameText extends StatelessWidget {
  final String text;

  const _ShoppingCartNameText(this.text, {Key? key}) : super(key: key);

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
