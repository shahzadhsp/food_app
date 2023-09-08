import 'dart:core';

class ModelClass {
  late final String productId;
  late final String name;
  late final int? initialPrice;
  late final int? productPrice;

  late final int? quantity;
  late final String? image;

  ModelClass({
    required this.productId,
    required this.name,
    required this.initialPrice,
    required this.productPrice,
    required this.quantity,
    required this.image,
  });
  ModelClass.fromMap(Map<dynamic, dynamic> res)
      : productId = res['productId'],
        name = res['name'],
        initialPrice = res['initialPrice'],
        productPrice = res['productPrice'],
        quantity = res['quantity'],
        image = res['image'];

  Map<String, Object?> toMap() {
    return {
      'productId': productId,
      'name': name,
      'initialPrice': initialPrice,
      'productPrice': productPrice,
      'quantity': quantity,
      'image': image,
    };
  }
}
