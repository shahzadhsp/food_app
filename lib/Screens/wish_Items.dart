import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../provider/home_provider.dart';

class WishItems extends StatefulWidget {
  const WishItems({super.key});

  @override
  State<WishItems> createState() => _WishItemsState();
}

class _WishItemsState extends State<WishItems> {
  @override
  Widget build(BuildContext context) {
    // Responsive UI with MediaQuery
    double height =
        MediaQuery.of(context).size.height - kBottomNavigationBarHeight;
    double width = MediaQuery.of(context).size.width;
    //  MediaQuery.sizeOf(context);
    // create a object your provider class
    final homeProvider = Provider.of<HomeProvider>(context);

    return SafeArea(
      child: Scaffold(
          body: Stack(children: [
        Container(
          height: height,
          width: width,
          color: Colors.pink.shade100,
        ),
        Container(
            height: height * 0.2,
            width: width,
            color: Colors.pink.shade100,
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
                      width: 10,
                    ),
                    Text('Yore Favorite Items', style: TextStyle(fontSize: 30)),
                  ]))
            ])),
        Positioned(
          bottom: 0,
          child: Container(
            height: height * 0.8,
            width: width,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Center(child: Text('No Data')),
          ),
        ),
      ])),
    );
  }
}
