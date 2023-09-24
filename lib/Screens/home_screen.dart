import 'package:flutter/material.dart';
import 'package:food_app/Screens/cart_screen.dart';
import 'package:food_app/Screens/categories_screen.dart';
import 'package:food_app/Screens/custom_widgets/categories_widgets.dart';
import 'package:food_app/Screens/custom_widgets/popular_container.dart';
import 'package:food_app/Screens/main_profile.dart';
import 'package:food_app/Screens/offers_screen.dart';
import 'package:food_app/Screens/popular_screen.dart';
import 'package:food_app/Screens/profile_screen.dart';
import 'package:food_app/Screens/wish_Items.dart';

import '../model/category_model.dart';
import 'custom_widgets/icon_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final categories = [
    {
      "name": "Burger",
      "image":
          "https://images.unsplash.com/photo-1512152272829-e3139592d56f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "price": 12,
    },
    {
      "name": "Sand Wich",
      "image":
          "https://plus.unsplash.com/premium_photo-1685314943840-80c0ad6ba886?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "price": 14,
    },
    {
      "name": "Food in Glass",
      "image":
          "https://images.unsplash.com/photo-1539102113920-32874e87fc97?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "price": 15,
    },
    {
      "name": "Fries",
      "image":
          "https://images.unsplash.com/photo-1576777647209-e8733d7b851d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "price": 16,
    },
    {
      "name": "Omlete",
      "image":
          "https://images.unsplash.com/photo-1510693206972-df098062cb71?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=698&q=80",
      "price": 18,
    },
    {
      "name": "Picking Pizza",
      "image":
          "https://images.unsplash.com/photo-1534352956036-cd81e27dd615?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=401&q=80",
      "price": 20,
    },
    {
      "name": "Pizza",
      "image":
          "https://images.unsplash.com/photo-1520201163981-8cc95007dd2a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "price": 22,
    },
    {
      "name": "Cheese",
      "image":
          "https://plus.unsplash.com/premium_photo-1661661992703-089c9c981ab9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "price": 10,
    },
    {
      "name": "Slice Fruit",
      "image":
          "https://images.unsplash.com/photo-1589881133825-bbb3b9471b1b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80",
      "price": 16,
    },
    {
      "name": "Assorted Food",
      "image":
          "https://images.unsplash.com/photo-1561339429-d5da4e6e9105?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80",
      "price": 16,
    },
  ];
  final populardeals = [
    {
      "name": "Burger",
      "image":
          "https://images.unsplash.com/photo-1512152272829-e3139592d56f?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "price": 12,
    },
    {
      "name": "Sand Wich",
      "image":
          "https://plus.unsplash.com/premium_photo-1685314943840-80c0ad6ba886?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=870&q=80",
      "price": 14,
    },
    {
      "name": "Food in Glass",
      "image":
          "https://images.unsplash.com/photo-1539102113920-32874e87fc97?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "price": 15,
    },
    {
      "name": "Fries",
      "image":
          "https://images.unsplash.com/photo-1576777647209-e8733d7b851d?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "price": 16,
    },
    {
      "name": "Omlete",
      "image":
          "https://images.unsplash.com/photo-1510693206972-df098062cb71?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=698&q=80",
      "price": 18,
    },
    {
      "name": "Picking Pizza",
      "image":
          "https://images.unsplash.com/photo-1534352956036-cd81e27dd615?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=401&q=80",
      "price": 20,
    },
    {
      "name": "Pizza",
      "image":
          "https://images.unsplash.com/photo-1520201163981-8cc95007dd2a?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "price": 22,
    },
    {
      "name": "Cheese",
      "image":
          "https://plus.unsplash.com/premium_photo-1661661992703-089c9c981ab9?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80",
      "price": 10,
    },
    {
      "name": "Slice Fruit",
      "image":
          "https://images.unsplash.com/photo-1589881133825-bbb3b9471b1b?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=464&q=80",
      "price": 16,
    },
    {
      "name": "Assorted Food",
      "image":
          "https://images.unsplash.com/photo-1561339429-d5da4e6e9105?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=435&q=80",
      "price": 16,
    },
  ];
  List<ModelClass> selectedItems = [];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: Container(
          height: 80,
          decoration: BoxDecoration(
            color: Colors.pink.shade100,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight: Radius.circular(50),
            ),
          ),
          child:
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
            IconContainer(
              icon: Icons.home,
              text: 'Home',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => HomeScreen(),
                    ));
              },
            ),
            IconContainer(
              icon: Icons.favorite_border_outlined,
              text: 'Wish List',
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => WishItems(),
                    ));
              },
            ),
            IconContainer(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => CartScreen(),
                    ));
                print('Cart');
              },
              icon: Icons.shopping_cart,
              text: 'Cart',
            ),
            IconContainer(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => OffersScreen(),
                    ));
              },
              icon: Icons.local_offer,
              text: 'Offer',
            ),
            IconContainer(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MainProfile(),
                    ));
              },
              icon: Icons.person,
              text: 'Profile',
            ),
          ]),
        ),
        //backgroundColor: Colors.pink.shade100,
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: Colors.pink.shade100,
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(50.0),
                      // topRight: Radius.circular(50.0),
                    )),
                child: Column(
                  children: [
                    SizedBox(
                      height: 40,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Maan Food',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                                color: Colors.black),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 20.0),
                      child: Row(
                        children: [
                          Container(
                            height: 50,
                            width: 300,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                hintText: 'Search',
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                prefixIcon: Icon(Icons.search),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 4,
                          ),
                          Container(
                            height: 50,
                            width: 40,
                            child: TextFormField(
                              decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),
                                prefixIcon: Icon(Icons.info),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                  height: 600,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50.0),
                        topRight: Radius.circular(50.0),
                      )),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoresScreen(),
                                  ));
                            },
                            child: Text(
                              'Categories',
                              style: TextStyle(color: Colors.black),
                            ),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => CategoresScreen(),
                                  ));
                            },
                            child: Text('See All',
                                style: TextStyle(color: Colors.black)),
                          )
                        ],
                      ),

                      // Categories list itme listview
                      Container(
                        height: 130,
                        width: double.infinity,
                        child: ListView.builder(
                          itemCount: categories.length,
                          shrinkWrap: true,

                          // cacheExtent: 100,

                          scrollDirection: Axis.horizontal,
                          physics: BouncingScrollPhysics(),
                          itemBuilder: (context, index) {
                            return SizedBox(
                              width: 120,
                              child: CategoriesContainer(
                                image: categories[index]['image'].toString(),
                                text: categories[index]['name'].toString(),
                                price: categories[index]['price'].toString(),
                                ontap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => CategoresScreen(),
                                      ));
                                },
                              ),
                            );
                          },
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PopularDealScreen(),
                                  ));
                            },
                            child: Text('Popular Deals',
                                style: TextStyle(color: Colors.black)),
                          ),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => PopularDealScreen(),
                                  ));
                            },
                            child: Text('See All',
                                style: TextStyle(color: Colors.black)),
                          )
                        ],
                      ),

                      // Popular list item gridview
                      Container(
                        height: 330,
                        child: GridView.builder(
                            itemCount: populardeals.length,
                            shrinkWrap: true,
                            physics: BouncingScrollPhysics(),
                            scrollDirection: Axis.vertical,
                            gridDelegate:
                                SliverGridDelegateWithFixedCrossAxisCount(
                                    crossAxisCount: 2),
                            itemBuilder: (context, index) {
                              return PopularContainer(
                                index: index,
                                imageUrl:
                                    populardeals[index]['image'].toString(),
                                text: populardeals[index]['name'].toString(),
                                price: populardeals[index]['price'].toString(),
                                onTap: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            PopularDealScreen(),
                                      ));
                                }, icon: Icons.favorite_border_outlined,
                              );
                            }),
                      )
                    ],
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
