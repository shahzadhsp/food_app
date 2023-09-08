import 'package:firebase_database/firebase_database.dart';
import 'package:firebase_database/ui/firebase_animated_list.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Screens/checkout_screen.dart';
import 'package:provider/provider.dart';
import '../provider/home_provider.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
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
  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height - kBottomNavigationBarHeight;
    double width = MediaQuery.of(context).size.width;
    final dbref = FirebaseDatabase.instance.ref('products');

    final homeProvider = Provider.of<HomeProvider>(context);
    // print("<<<<<<<<<<<<<<<<<<<<<<${homeProvider.productPrice}");
    // print("TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT${homeProvider.totalPrice}");

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
              height: height * 0.2,
              width: width,
              decoration: BoxDecoration(
                color: Colors.pink.shade100,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                ),
              ),
              child: Column(children: [
                SizedBox(height: 40),
                Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Row(children: [
                      IconButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          icon: Icon(Icons.arrow_back)),
                      SizedBox(
                        width: 70,
                      ),
                      Text('Cart', style: TextStyle(fontSize: 30)),
                    ]))
              ])),
          Positioned(
            bottom: 0,
            child: Container(
                height: height * 0.8,
                width: width,
                color: Colors.white,
                // decoration: BoxDecoration(
                //   color: Colors.white,
                //   borderRadius: BorderRadius.only(
                //     topLeft: Radius.circular(40),
                //     topRight: Radius.circular(40),
                //   ),
                // ),
                child: FirebaseAnimatedList(
                  shrinkWrap: true,
                  physics: BouncingScrollPhysics(),
                  query: dbref,
                  itemBuilder: (context, snapshot, animation, index) {
                    final id = snapshot.child('id').value.toString();
                    // final id = DateTime.now().microsecondsSinceEpoch.toString();
                    return Card(
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Container(
                                height: 100,
                                width: 200,
                                child: Image.network(
                                  snapshot.child('image').value.toString(),
                                  fit: BoxFit.cover,
                                ),
                              ),
                              SizedBox(
                                width: 12,
                              ),
                              Column(
                                children: [
                                  Text(
                                    '\$' +
                                        snapshot
                                            .child('initialPrice')
                                            .value
                                            .toString(),
                                  ),
                                  Text(
                                    'Product Name' +
                                        snapshot.child('name').value.toString(),
                                  ),
                                  SizedBox(
                                    height: 4,
                                  ),
                                  TextButton(
                                    onPressed: () {
                                      showDialog(
                                        context: context,
                                        builder: (BuildContext context) {
                                          return AlertDialog(
                                            title: Text('Confirm Delete'),
                                            content: Text(
                                                'Are you sure you want to delete this item from the cart?'),
                                            actions: <Widget>[
                                              TextButton(
                                                onPressed: () {
                                                  // Close the dialog
                                                  dbref.child(id).remove();
                                                  homeProvider.removeCounter();
                                                  homeProvider.removeTotalPrice(
                                                      double.parse(snapshot
                                                          .child('productPrice')
                                                          .value
                                                          .toString()));
                                                  Navigator.of(context).pop();
                                                },
                                                child: Text('Delete',
                                                    style: TextStyle(
                                                        color: Colors
                                                            .deepOrangeAccent,
                                                        fontSize: 16)),
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
                                    },
                                    child: Icon(
                                      Icons.delete,
                                      color: Colors.deepOrangeAccent,
                                    ),
                                  )
                                ],
                              ),
                              SizedBox(
                                width: 25,
                              ),
                              Container(
                                decoration: BoxDecoration(
                                    color: Colors.deepOrangeAccent,
                                    borderRadius: BorderRadius.circular(16.0)),
                                padding: EdgeInsets.all(4),
                                child: Column(
                                  children: [
                                    InkWell(
                                        onTap: () {
                                          
                                        }, child: Icon(Icons.add)),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    Text(
                                      // homeProvider.getCounter().toString(),
                                      '0',
                                      style: TextStyle(fontSize: 20),
                                    ),
                                    SizedBox(
                                      height: 4,
                                    ),
                                    InkWell(
                                        onTap: () {
                                          //  homeProvider.removeCounter();
                                        },
                                        child: Icon(Icons.remove))
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
                    );
                  },
                )),
          ),
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.blueGrey,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(40.0),
              topRight: Radius.circular(40.0),
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Consumer<HomeProvider>(
                  builder: (context, value, child) {
                    return Visibility(
                        visible: value.getTotalPrice().toString() == '0.00'
                            ? false
                            : true,
                        child:
                            Text('Total\$' + value.getTotalPrice().toString()));
                  },
                ),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.deepOrangeAccent,
                      borderRadius: BorderRadius.circular(20)),
                  child: IconButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => CheckoutScreen(),
                          ));
                    },
                    icon: Text('Checkout'),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    ));
  }
}
