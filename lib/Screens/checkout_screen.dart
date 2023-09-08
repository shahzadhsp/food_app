import 'dart:async';

import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:provider/provider.dart';
import '../provider/home_provider.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});

  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height - kBottomNavigationBarHeight;
    double width = MediaQuery.of(context).size.width;
    final dbref = FirebaseDatabase.instance.ref('products');

    final homeProvider = Provider.of<HomeProvider>(context);
    // print("<<<<<<<<<<<<<<<<<<<<<<${homeProvider.productPrice}");
    // print("TTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTTT${homeProvider.totalPrice}");
    final LatLng _center = const LatLng(45.521563, -122.677433);
    Completer<GoogleMapController> _controller = Completer();
    void _onMapCreated(GoogleMapController controller) {
      _controller.complete(controller);
    }

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
                      Text('  Checkout', style: TextStyle(fontSize: 30)),
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
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Address',
                          style: TextStyle(fontSize: 20),
                        ),
                        InkWell(
                          onTap: () {
                            showDialog(
                              context: context,
                              builder: (BuildContext context) {
                                return AlertDialog(
                                  title: Text("Add New Card"),
                                  content: SingleChildScrollView(
                                    child: Column(
                                      children: [
                                        TextField(
                                          decoration: InputDecoration(
                                              labelText: 'Card Heading'),
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                              labelText: 'Card Number'),
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                              labelText: 'CNIC'),
                                        ),
                                        TextField(
                                          decoration: InputDecoration(
                                              labelText: 'Date'),
                                        ),
                                      ],
                                    ),
                                  ),
                                  actions: <Widget>[
                                    TextButton(
                                      child: Text('Add New Card'),
                                      onPressed: () {
                                        // Perform actions when "Add New Card" is pressed
                                        // This could include saving the data or further processing
                                        Navigator.of(context)
                                            .pop(); // Close the dialog
                                      },
                                    ),
                                    TextButton(
                                      child: Text('Cancel'),
                                      onPressed: () {
                                        Navigator.of(context)
                                            .pop(); // Close the dialog
                                      },
                                    ),
                                  ],
                                );
                              },
                            );
                          },
                          child: Text(
                            'Add New',
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                  Card(
                    child: GoogleMap(
                      onMapCreated: _onMapCreated,
                      initialCameraPosition:
                          CameraPosition(target: _center, zoom: 11.0),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
              bottom: 0,
              child: Container(
                height: height * 0.4,
                width: width,
                decoration: BoxDecoration(
                    color: Colors.blueGrey,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(40.0),
                        topRight: Radius.circular(40.0))),
              ))
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: Colors.white,
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
                    onPressed: () {},
                    icon: Text('Continue'),
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
