import 'package:flutter/material.dart';
import 'package:food_app/Screens/custom_widgets/profile_custom_button.dart';
import 'package:provider/provider.dart';
import '../provider/home_provider.dart';

class CheckoutScreen extends StatefulWidget {
  const CheckoutScreen({super.key});
  @override
  State<CheckoutScreen> createState() => _CheckoutScreenState();
}

class _CheckoutScreenState extends State<CheckoutScreen> {
  bool selectedCardIndex = false;
  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height - kBottomNavigationBarHeight;
    double width = MediaQuery.of(context).size.width;

    //  final LatLng _center = const LatLng(45.521563, -122.677433);
    // Completer<GoogleMapController> _controller = Completer();
    // void _onMapCreated(GoogleMapController controller) {
    //   _controller.complete(controller);
    // }

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
                            // showDialog(
                            //   context: context,
                            //   builder: (BuildContext context) {
                            //     return AlertDialog(
                            //       title: Text("Add New Card"),
                            //       content: SingleChildScrollView(
                            //         child: Column(
                            //           children: [
                            //             TextField(
                            //               decoration: InputDecoration(
                            //                   labelText: 'Card Heading'),
                            //             ),
                            //             TextField(
                            //               decoration: InputDecoration(
                            //                   labelText: 'Card Number'),
                            //             ),
                            //             TextField(
                            //               decoration: InputDecoration(
                            //                   labelText: 'CNIC'),
                            //             ),
                            //             TextField(
                            //               decoration: InputDecoration(
                            //                   labelText: 'Date'),
                            //             ),
                            //           ],
                            //         ),
                            //       ),
                            //       actions: <Widget>[
                            //         TextButton(
                            //           child: Text('Add New Card'),
                            //           onPressed: () {
                            //             // Perform actions when "Add New Card" is pressed
                            //             // This could include saving the data or further processing
                            //             Navigator.of(context)
                            //                 .pop(); // Close the dialog
                            //           },
                            //         ),
                            //         TextButton(
                            //           child: Text('Cancel'),
                            //           onPressed: () {
                            //             Navigator.of(context)
                            //                 .pop(); // Close the dialog
                            //           },
                            //         ),
                            //       ],
                            //     );
                            //   },
                            // );
                          },
                          child: Text(
                            'Add New',
                            style: TextStyle(fontSize: 20),
                          ),
                        )
                      ],
                    ),
                  ),
                  // GoogleMap(
                  //   onMapCreated: _onMapCreated,
                  //   initialCameraPosition:
                  //       CameraPosition(target: _center, zoom: 11.0),
                  // )
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20.0),
                    child: Column(
                      children: [
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                16.0), // Set border radius here
                            side: BorderSide(
                                color: Colors.blue), // Set border color here
                          ),
                          child: Container(
                            height: 70,
                            width: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                  color: Colors.deepOrangeAccent.shade100),
                            ),
                            child: ListTile(
                              leading: Icon(
                                Icons.location_on,
                                color: Colors.blueAccent,
                              ),
                              title: Column(
                                children: [
                                  Text(
                                    'Office',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'Street no5 ward no 10 near\nraja chowk hasilpur'),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                16.0), // Set border radius here
                            side: BorderSide(
                                color: Colors.deepOrangeAccent
                                    .shade100), // Set border color here
                          ),
                          child: Container(
                            height: 70,
                            width: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              border: Border.all(
                                  color: Colors.deepOrangeAccent.shade100),
                            ),
                            child: ListTile(
                              leading: Icon(
                                Icons.home,
                                color: Colors.deepOrangeAccent,
                              ),
                              title: Column(
                                children: [
                                  Text(
                                    'Home',
                                    style: TextStyle(
                                        fontSize: 18,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  Text(
                                      'Street no11 ward no 16 near\nriaz ul islam mosque'),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
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
                color: Colors.blueGrey.shade100,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40.0),
                  topRight: Radius.circular(40.0),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: EdgeInsets.fromLTRB(40, 0, 0, 0),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'Payment Method',
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                16.0), // Set border radius here
                            side: BorderSide(
                                // color: Colors.deepOrangeAccent
                                //     .shade100
                                ), // Set border color here
                          ),
                          child: Container(
                            height: 60,
                            width: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              // border: Border.all(
                              //     color: Colors.deepOrangeAccent.shade100),
                            ),
                            child: ListTile(
                              leading: Text('daata'),
                              title: Text('Bank Card'),
                              trailing: Icon(Icons.abc),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                16.0), // Set border radius here
                            side: BorderSide(
                                // color: Colors.deepOrangeAccent
                                //     .shade100
                                ), // Set border color here
                          ),
                          child: Container(
                            height: 60,
                            width: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              // border: Border.all(
                              //     color: Colors.deepOrangeAccent.shade100),
                            ),
                            child: ListTile(
                              leading: Text('daata'),
                              title: Text('Paypal'),
                              trailing: Icon(Icons.abc),
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Card(
                          elevation: 4,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                16.0), // Set border radius here
                            side: BorderSide(
                                // color: Colors.deepOrangeAccent
                                //     .shade100
                                ), // Set border color here
                          ),
                          child: Container(
                            height: 60,
                            width: 500,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(16),
                              // border: Border.all(
                              //     color: Colors.deepOrangeAccent.shade100),
                            ),
                            child: ListTile(
                              leading: Text('daata'),
                              title: Text('Master Card'),
                              trailing: Icon(Icons.abc),
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
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
                    onPressed: () {
                      print('continue pressed');
                      showDialog(
                        context: context,
                        builder: (BuildContext context) {
                          return AlertDialog(
                            title: CircleAvatar(
                              backgroundColor: Colors.deepOrangeAccent,
                              radius: 50,
                            ),
                            content: SingleChildScrollView(
                              child: Column(
                                children: [
                                  // TextField(
                                  //   decoration: InputDecoration(
                                  //       labelText: 'Card Heading'),
                                  // ),
                                  Text(
                                    'Order Successfull',
                                    style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold),
                                  ),
                                  // TextField(
                                  //   decoration: InputDecoration(
                                  //       labelText: 'Card Number'),
                                  // ),
                                  // TextField(
                                  //   decoration: InputDecoration(
                                  //       labelText: 'CNIC'),
                                  // ),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  Text('Your Order is Succssfully placed',
                                      style: TextStyle(
                                        fontSize: 16,
                                      )),
                                  SizedBox(
                                    height: 10,
                                  ),

                                  // TextField(
                                  //   decoration: InputDecoration(
                                  //       labelText: 'Date'),
                                  // ),
                                  ProfileCustomButton(text: 'Track your order'),
                                  SizedBox(
                                    height: 10,
                                  ),
                                  InkWell(
                                    onTap: () {
                                      Navigator.pop(context);
                                    },
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: [
                                        Icon(Icons.arrow_back),
                                        SizedBox(
                                          width: 10,
                                        ),
                                        Text('Goback')
                                      ],
                                    ),
                                  )
                                ],
                              ),
                            ),
                            actions: <Widget>[
                             Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                               TextButton(
                                child: Text('Ok', style: TextStyle(
                                        color: Colors.black
                                  ),),
                                onPressed: () {
                                  // Perform actions when "Add New Card" is pressed
                                  // This could include saving the data or further processing
                                  Navigator.of(context)
                                      .pop(); // Close the dialog
                                },
                              ),
                              TextButton(
                                child: Text('Cancel',style: TextStyle(
                                        color: Colors.black
                                  )),
                                onPressed: () {
                                  Navigator.of(context)
                                      .pop(); // Close the dialog
                                },
                              ),
                             ],)
                            ],
                          );
                        },
                      );
                    },
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
