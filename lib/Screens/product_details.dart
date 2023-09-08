import 'package:flutter/material.dart';
import 'package:food_app/Screens/cart_screen.dart';
import 'package:food_app/Screens/wish_Items.dart';
import 'package:food_app/model/category_model.dart';
import 'package:food_app/provider/wish_list_provider.dart';
import 'package:provider/provider.dart';
import '../provider/home_provider.dart';

// ignore: must_be_immutable
class ProductDetailScreen extends StatefulWidget {
  ProductDetailScreen({
    super.key,
    required this.image,
    required this.initialPrice,
    required this.productId,
    required this.productName,
    required this.productPrice,
    required this.quantity,
  });

  final String? productId;
  final int? initialPrice;
  final int? productPrice;
  final int? quantity;

  final String? image;

  String? productName;

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  final populardeals = [
    {
      "name": "Burger",
      "image":
          "https://images.unsplash.com/photo-1512152272829-e3139592d56f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "productPrice": 12,
    },
    {
      "name": "Sand Wich",
      "image":
          "https://plus.unsplash.com/premium_photo-1685314943840-80c0ad6ba886?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "productPrice": 14,
    },
    {
      "name": "Food in Glass",
      "image":
          "https://images.unsplash.com/photo-1539102113920-32874e87fc97?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "productPrice": 15,
    },
    {
      "name": "Fries",
      "image":
          "https://images.unsplash.com/photo-1576777647209-e8733d7b851d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "productPrice": 16,
    },
    {
      "name": "Omlete",
      "image":
          "https://images.unsplash.com/photo-1510693206972-df098062cb71?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=698&q=80",
      "productPrice": 18,
    },
    {
      "name": "Picking Pizza",
      "image":
          "https://images.unsplash.com/photo-1534352956036-cd81e27dd615?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=401&q=80",
      "productPrice": 20,
    },
    {
      "name": "Pizza",
      "image":
          "https://images.unsplash.com/photo-1520201163981-8cc95007dd2a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "productPrice": 22,
    },
    {
      "name": "Cheese",
      "image":
          "https://plus.unsplash.com/premium_photo-1661661992703-089c9c981ab9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "productPrice": 10,
    },
    {
      "name": "Slice Fruit",
      "image":
          "https://images.unsplash.com/photo-1589881133825-bbb3b9471b1b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80",
      "productPrice": 16,
    },
    {
      "name": "Assorted Food",
      "image":
          "https://images.unsplash.com/photo-1561339429-d5da4e6e9105?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80",
      "productPrice": 16,
    },
  ];
  final List<int> selectedItems = [];
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    List<ModelClass> selectedItems = [];
    final homeProvider = Provider.of<HomeProvider>(context, listen: true);

    return SafeArea(
      child: Scaffold(
        body: Stack(
          children: [
            Container(
              height: height,
              width: width,
              color: Colors.pink.shade100,
            ),
            Container(
                height: height * 0.3,
                width: width,
                color: Colors.pink.shade100,
                child: Column(children: [
                  SizedBox(height: 50),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back)),
                        Column(
                          children: [
                            Consumer<HomeProvider>(
                              builder: (context, value, child) {
                                return Badge(
                                  label: Text(value.getCounter().toString()),
                                  textColor: Colors.white,
                                );
                              },
                            ),
                            InkWell(
                              onTap: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => CartScreen(),
                                    ));
                              },
                              child: CircleAvatar(
                                backgroundColor:
                                    Colors.deepOrangeAccent.shade200,
                                radius: 16,
                                child: Icon(
                                  Icons.shopping_cart,
                                  color: Colors.deepOrangeAccent.shade100,
                                ),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  )
                ])),
            Positioned(
              bottom: 0,
              child: Container(
                height: height * 0.7,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40),
                        topRight: Radius.circular(40))),
                child: Padding(
                  padding: const EdgeInsets.only(top: 0),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 160,
                      ),
                      Container(
                        width: width * 0.35,
                        decoration: BoxDecoration(
                            color: Colors.deepOrangeAccent,
                            borderRadius: BorderRadius.circular(32)),
                        child: Row(
                          children: [
                            TextButton(
                                onPressed: () {
                                  //homeProvider.minusQuantity();
                                },
                                child: Icon(
                                  Icons.remove,
                                  color: Colors.white,
                                )),
                            Text('0', style: TextStyle(color: Colors.white)),
                            TextButton(
                                onPressed: () {
                                  //  homeProvider.addQuantity();
                                  print(homeProvider.totalPrice);
                                },
                                child: Icon(Icons.add, color: Colors.white))
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 30,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 14),
                        child: Align(
                            alignment: Alignment.topLeft,
                            child: Text(
                              widget.productName.toString(),
                              style: TextStyle(fontSize: 20),
                            )),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(widget.productPrice.toString()),
                            Icon(
                              Icons.star,
                              size: 14,
                            ),
                            TextButton(
                                onPressed: () {},
                                child: Icon(Icons.time_to_leave))
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Align(
                          alignment: Alignment.topLeft,
                          child: Text(
                            'Product Details',
                            style: TextStyle(fontSize: 20),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10.0),
                        child: Text(
                          'our food is very tasty if you try once\n you can never forget to come again on our restaurant',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                      ),
                      SizedBox(
                        height: 60,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12.0),
                        child: Row(
                          children: [
                            // Favorite button code starts from here
                            Expanded(
                              child: Container(
                                // width: width * 0.9,
                                decoration: BoxDecoration(
                                    color: Colors.deepOrangeAccent,
                                    borderRadius: BorderRadius.circular(32)),
                                child: TextButton(
                                  // write logic here how to add item in the cart list
                                  onPressed: () {
                                    Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => WishItems(),
                                        ));
                                  },
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Icon(
                                        Icons.favorite_border_outlined,
                                        color: Colors.white,
                                      ),
                                      SizedBox(
                                        width: 5,
                                      ),
                                      Container(
                                        child: Consumer<HomeProvider>(
                                          builder: (context, value, child) {
                                            return Text(
                                              'Add to favorite',
                                              style: TextStyle(
                                                  color: Colors.white),
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 20,
                            ),
                            Expanded(
                              child: Container(
                                //   width: width * 0.9,
                                decoration: BoxDecoration(
                                    color: Colors.deepOrangeAccent,
                                    borderRadius: BorderRadius.circular(32)),
                                child: Consumer<HomeProvider>(
                                  builder: (context, value, child) {
                                    return TextButton(
                                      onPressed: () {
                                        homeProvider
                                            .addItem(
                                                widget.productId.toString(),
                                                widget.initialPrice!,
                                                widget.productPrice!,
                                                widget.image.toString(),
                                                widget.productPrice.toString(),
                                                widget.quantity!)
                                            .then((value) {
                                          print(
                                            widget.productId.toString(),
                                          );
                                          print(
                                            widget.initialPrice!,
                                          );
                                          print(
                                            widget.image.toString(),
                                          );

                                          print(
                                            widget.productPrice.toString(),
                                          );

                                          print(widget.quantity!);

                                          homeProvider.addTotalPrice(
                                              double.parse(widget.productPrice
                                                  .toString()));
                                          homeProvider.addCounter();
                                          ScaffoldMessenger.of(context);
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                title: Text(
                                                    'Item Added Succssfully'),
                                                content: Text(
                                                    'Congratulations!\nYour item is add in the cart succssfully'),
                                                actions: <Widget>[
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop(); // Close the dialog
                                                    },
                                                    child: Text(
                                                      'Ok',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .deepOrangeAccent,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                  TextButton(
                                                    onPressed: () {
                                                      Navigator.of(context)
                                                          .pop(); // Close the dialog
                                                    },
                                                    child: Text(
                                                      'Cancel',
                                                      style: TextStyle(
                                                          color: Colors
                                                              .deepOrangeAccent,
                                                          fontSize: 16),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        });
                                      },
                                      child: Text(
                                        'Add to Cart',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    );
                                  },
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Positioned(
              top: height * 0.13,
              left: 100,
              child: Container(
                height: height * 0.3,
                width: width * 0.5,
                decoration: BoxDecoration(
                    color: Colors.red,
                    shape: BoxShape.circle,
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: NetworkImage(widget.image.toString()))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
