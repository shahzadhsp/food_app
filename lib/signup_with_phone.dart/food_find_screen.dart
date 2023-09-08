import 'package:flutter/material.dart';

import 'package:food_app/signup_with_phone.dart/enter_location_screen.dart';

class FoodFindScreen extends StatefulWidget {
  const FoodFindScreen({super.key});

  @override
  State<FoodFindScreen> createState() => _FoodFindScreenState();
}

class _FoodFindScreenState extends State<FoodFindScreen> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final width = MediaQuery.of(context).size.width;

    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            height: height,
            width: width,
            color: Colors.pink.shade100,
            child: Padding(
              padding: const EdgeInsets.only(left: 14.0),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Align(
                      alignment: Alignment.topLeft,
                      child: Icon(Icons.arrow_back)),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            child: Container(
              height: height * 0.85,
              width: width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50))),
              child: Column(
                children: [
                  SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 12.0),
                    child: Container(
                      height: height * 0.25,
                      width: width,
                      decoration: BoxDecoration(
                          color: Colors.pink.shade100,
                          borderRadius: BorderRadius.circular(10)),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Text(
                    'Find Restaurants and your\n        Favourite Food',
                    style: TextStyle(color: Colors.black, fontSize: 24),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      height: height * 0.07,
                      width: width * 0.83,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                          onPressed: () {},
                          child: Text('Allow Location Access'))),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                      height: height * 0.07,
                      width: width * 0.83,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: TextButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EnterLocation(),
                                ));
                          },
                          child: Text(
                            'Enter My Location',
                            style: TextStyle(color: Colors.black, fontSize: 20),
                          )))
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
