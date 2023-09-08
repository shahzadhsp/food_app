import 'package:flutter/material.dart';

import 'package:food_app/Screens/custom_widgets/popular_container.dart';
import 'package:food_app/Screens/product_details.dart';
import 'package:food_app/provider/wish_list_provider.dart';

class PopularDealScreen extends StatefulWidget {
  const PopularDealScreen({super.key});

  @override
  State<PopularDealScreen> createState() => _PopularDealScreenState();
}

class _PopularDealScreenState extends State<PopularDealScreen> {
  final populardeals = [
    {
      "name": "Burger",
      "image":
          "https://images.unsplash.com/photo-1512152272829-e3139592d56f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "price": 12,
      "totalPrice": 0,
      "quantity": 1,
    },
    {
      "name": "Sand Wich",
      "image":
          "https://plus.unsplash.com/premium_photo-1685314943840-80c0ad6ba886?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "price": 14,
      "totalPrice": 0,
      "quantity": 1,
    },
    {
      "name": "Food in Glass",
      "image":
          "https://images.unsplash.com/photo-1539102113920-32874e87fc97?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "price": 15,
      "totalPrice": 0,
      "quantity": 1,
    },
    {
      "name": "Fries",
      "image":
          "https://images.unsplash.com/photo-1576777647209-e8733d7b851d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "price": 16,
      "totalPrice": 0,
      "quantity": 1,
    },
    {
      "name": "Omlete",
      "image":
          "https://images.unsplash.com/photo-1510693206972-df098062cb71?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=698&q=80",
      "price": 18,
      "totalPrice": 0,
      "quantity": 1,
    },
    {
      "name": "Picking Pizza",
      "image":
          "https://images.unsplash.com/photo-1534352956036-cd81e27dd615?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=401&q=80",
      "price": 20,
      "totalPrice": 0,
      "quantity": 1,
    },
    {
      "name": "Pizza",
      "image":
          "https://images.unsplash.com/photo-1520201163981-8cc95007dd2a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "price": 22,
      "totalPrice": 0,
      "quantity": 1,
    },
    {
      "name": "Cheese",
      "image":
          "https://plus.unsplash.com/premium_photo-1661661992703-089c9c981ab9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "price": 10,
      "totalPrice": 0,
      "quantity": 1,
    },
    {
      "name": "Slice Fruit",
      "image":
          "https://images.unsplash.com/photo-1589881133825-bbb3b9471b1b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80",
      "price": 16,
      "totalPrice": 0,
      "quantity": 1,
    },
    {
      "name": "Assorted Food",
      "image":
          "https://images.unsplash.com/photo-1561339429-d5da4e6e9105?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80",
      "price": 16,
      "totalPrice": 0,
      "quantity": 1,
    },
  ];
  
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    
    return SafeArea(
        child: Scaffold(
            body: Column(children: [
      Container(
          height: height * 0.2,
          width: width,
          decoration: BoxDecoration(
              color: Colors.pink.shade100,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40))),
          child: Column(children: [
            SizedBox(height: 70),
            Padding(
                padding: const EdgeInsets.only(left: 20),
                child: Row(children: [
                  IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(Icons.arrow_back)),
                  SizedBox(width: 30),
                  Text('Popular Deal Screen',
                      style: TextStyle(fontSize: 30, color: Colors.black))
                ]))
          ])),
      Expanded(
          child: GridView.builder(
              itemCount: populardeals.length,
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              scrollDirection: Axis.vertical,
              gridDelegate:
                  SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
              itemBuilder: (context, index) {
                return PopularContainer(
                  index: index,
                    imageUrl: populardeals[index]['image'].toString(),
                    text: populardeals[index]['name'].toString(),
                    price: populardeals[index]['price'].toString(),
                    icon: Icons.favorite_border_outlined,
                    onTap: () {
                      print('ho gia');
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => ProductDetailScreen(
                              //  id: index, // Pass the id
                              image: populardeals[index]['image'].toString(),
                              initialPrice: populardeals[index]['price'] as int,
                              productId: index.toString(),
                              productName:
                                  populardeals[index]['name'].toString(),
                              productPrice: populardeals[index]['price'] as int,
                              quantity: populardeals[index]['quantity'] as int),
                        ),
                      );
                    });
              }))
    ])));
  }
}
