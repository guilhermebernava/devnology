class CartItemModel {
  final String id;
  final double value;
  final String fullTitle;
  final String image;
  late double totalValue;
  int quantity;

  CartItemModel({
    required this.id,
    required this.value,
    required this.quantity,
    required this.fullTitle,
    required this.image,
  }) {
    totalValue = quantity * value;
  }
}
