import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:food_app/model/category_model.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeProvider extends ChangeNotifier {
  List<ModelClass> lst = [];
  int _count = 0;
  int get count => _count;

  double _totalPrice = 0.0;
  double get totalPrice => _totalPrice;

  Future<void> addItem(String productId, int initialPrice, int productPrice,
      String image, String name, int quantity) async {
    final dbref = FirebaseDatabase.instance.ref('products');
    final id = DateTime.now().microsecondsSinceEpoch.toString();
    await dbref.child(id).set({
      'id': id,
      'productId': productId,
      'initialPrice': initialPrice,
      'name': name,
      'image': image,
      'quantity': quantity,
      'productPrice': productPrice,
    });
    print('name${name.toString()}>>>>>>>>>>>');
    print('productid${productId.toString()}>>>>>>>>>>>');
    print('initialprice${initialPrice.toString()}>>>>>>>>>>>');
    print('productprice${productPrice.toString()}>>>>>>>>>>>');
    print('image${image.toString()}>>>>>>>>>>>');
    print('quantity${quantity.toString()}>>>>>>>>>>>');

    notifyListeners();
  }

  void _setPrefItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    prefs.setInt('cart_item', _count);
    prefs.setDouble('total_price', _totalPrice);
    notifyListeners();
  }

  void _getPrefItems() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _count = prefs.getInt('cart_item') ?? 0;
    _totalPrice = prefs.getDouble('total_price') ?? 0.0;
    notifyListeners();
  }

// for add cou nter
  void addCounter() {
    _count++;
    _setPrefItems();
    notifyListeners();
  }

// for remove the counter
  void removeCounter() {
    _count--;
    _setPrefItems();
    notifyListeners();
  }

// for get the counter
  int getCounter() {
    _getPrefItems();
    return _count;
  }

  // for add the total price
  void addTotalPrice(double productPrice) {
    _totalPrice = _totalPrice + productPrice;
    _setPrefItems();
    notifyListeners();
  }

// for remove the total Price
  void removeTotalPrice(double productPrice) {
    _totalPrice = _totalPrice - productPrice;
    _setPrefItems();
    notifyListeners();
  }

// for get the counter
  double getTotalPrice() {
    _getPrefItems();
    return _totalPrice;
  }
}
