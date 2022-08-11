class ShoppingItemModel {
  final int id;
  String name;
  String? brand;
  String? type;
  double price;

  ShoppingItemModel(
      {required this.id,
      required this.name,
      this.brand,
      this.type,
      required this.price});
}
