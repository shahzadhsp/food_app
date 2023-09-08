import 'package:flutter/material.dart';

class TestScreen extends StatefulWidget {
  const TestScreen({super.key});

  @override
  State<TestScreen> createState() => _TestScreenState();
}

class _TestScreenState extends State<TestScreen> {
  int quantity = 0;
  int price = 10;
  int totalPrice = 0;
  void updateTotalPrice() {
    setState(() {
      totalPrice = quantity * price;
    });
  }

  void addQuantity() {
    setState(() {
      quantity++;
      updateTotalPrice();
    });
  }

  void minusQuantity() {
    setState(() {
      if (quantity > 0) {
        quantity--;
        updateTotalPrice();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          totalPrice.toString(),
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Center(
          child: Column(
        children: [
          TextButton(
            onPressed: () {
              print("total price ${totalPrice}");
              print('quantity ${quantity}');

              setState(() {
                addQuantity();
              });
            },
            child: Text('Add Item'),
          ),
          Text(' ${quantity}'),
          TextButton(
            onPressed: () {
              print("total price ${totalPrice}");
              print('Minus ');

              setState(() {
                minusQuantity();
              });
            },
            child: Text('Remove Item '),
          ),
        ],
      )),
    );
  }
}
