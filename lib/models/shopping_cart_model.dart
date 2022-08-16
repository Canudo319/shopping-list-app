import 'package:shopping_list_app/models/shopping_item_model.dart';

import 'package:intl/intl.dart';

class ShoppingCartModel {
  final int id;
  String name;
  DateTime date;
  List<ShoppingItemModel>? itens;

  ShoppingCartModel({
    required this.id,
    required this.name,
    required this.date,
    this.itens,
  });

  void setName(String name) {
    this.name = name;
  }

  String getFormatedDate() {
    return DateFormat("dd/MM/yyyy - kk:mm").format(date);
  }
}
