// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/services.dart';
// import 'package:food_app/Screens/home_screen.dart';

// // ignore: must_be_immutable
// class PhoneOtpScreen extends StatefulWidget {
//   String verificationId;
//   PhoneOtpScreen({super.key, required this.verificationId});

//   @override
//   State<PhoneOtpScreen> createState() => _PhoneOtpScreenState();
// }

// class _PhoneOtpScreenState extends State<PhoneOtpScreen> {
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     final _verifycationCodeController = TextEditingController();
//     final auth = FirebaseAuth.instance;

//     return SafeArea(
//       child: Scaffold(
//           body: SingleChildScrollView(
//         child: Stack(
//           children: [
//             Container(
//               height: height,
//               width: width,
//               color: Colors.pink.shade100,
//               child: Padding(
//                 padding: const EdgeInsets.only(left: 14.0),
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Align(
//                         alignment: Alignment.topLeft,
//                         child: Icon(Icons.arrow_back)),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Align(
//                       alignment: Alignment.topLeft,
//                       child: CircleAvatar(
//                         backgroundColor: Colors.deepOrange,
//                         child: Text(
//                           'Shahzad'.substring(0, 1),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 50,
//                     ),
//                     Align(
//                         alignment: Alignment.topLeft,
//                         child: Text(
//                           'Verify your mobile number',
//                           style: TextStyle(fontSize: 24),
//                         )),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Align(
//                         alignment: Alignment.topLeft,
//                         child: Text(
//                             'Enter 6-digit code sent to your mobile number')),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Align(
//                         alignment: Alignment.topLeft,
//                         child: Text(
//                           '+92304-4978989',
//                           style: TextStyle(color: Colors.deepOrange),
//                         ))
//                   ],
//                 ),
//               ),
//             ),
//             Positioned(
//               bottom: 0,
//               child: Container(
//                 height: height * 0.6,
//                 width: width,
//                 decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.only(
//                         topLeft: Radius.circular(50),
//                         topRight: Radius.circular(50))),
//                 child: Column(
//                   children: [
//                     SizedBox(
//                       height: 60,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(left: 30),
//                       child: Align(
//                         alignment: Alignment.topLeft,
//                         child: Text(
//                           'Enter Your Code',
//                           style: TextStyle(fontSize: 16),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 12.0),
//                       child: Row(
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           SizedBox(
//                             height: 68,
//                             width: 54,
//                             child: TextFormField(
//                               controller: _verifycationCodeController,
//                               textAlign: TextAlign.center,
//                               inputFormatters: [
//                                 LengthLimitingTextInputFormatter(1),
//                                 FilteringTextInputFormatter.digitsOnly,
//                               ],
//                               keyboardType: TextInputType.number,
//                               decoration: InputDecoration(
//                                   hintText: '0',
//                                   hintStyle: TextStyle(fontSize: 16),
//                                   border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10))),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 68,
//                             width: 54,
//                             child: TextFormField(
//                               controller: _verifycationCodeController,
//                               textAlign: TextAlign.center,
//                               inputFormatters: [
//                                 LengthLimitingTextInputFormatter(1),
//                                 FilteringTextInputFormatter.digitsOnly,
//                               ],
//                               keyboardType: TextInputType.number,
//                               decoration: InputDecoration(
//                                   hintText: '0',
//                                   hintStyle: TextStyle(fontSize: 16),
//                                   border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10))),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 68,
//                             width: 54,
//                             child: TextFormField(
//                               controller: _verifycationCodeController,
//                               textAlign: TextAlign.center,
//                               inputFormatters: [
//                                 LengthLimitingTextInputFormatter(1),
//                                 FilteringTextInputFormatter.digitsOnly,
//                               ],
//                               keyboardType: TextInputType.number,
//                               decoration: InputDecoration(
//                                   hintText: '0',
//                                   hintStyle: TextStyle(fontSize: 16),
//                                   border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10))),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 68,
//                             width: 54,
//                             child: TextFormField(
//                               controller: _verifycationCodeController,
//                               textAlign: TextAlign.center,
//                               inputFormatters: [
//                                 LengthLimitingTextInputFormatter(1),
//                                 FilteringTextInputFormatter.digitsOnly,
//                               ],
//                               keyboardType: TextInputType.number,
//                               decoration: InputDecoration(
//                                   hintText: '0',
//                                   hintStyle: TextStyle(fontSize: 16),
//                                   border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10))),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 68,
//                             width: 54,
//                             child: TextFormField(
//                               controller: _verifycationCodeController,
//                               textAlign: TextAlign.center,
//                               inputFormatters: [
//                                 LengthLimitingTextInputFormatter(1),
//                                 FilteringTextInputFormatter.digitsOnly,
//                               ],
//                               keyboardType: TextInputType.number,
//                               decoration: InputDecoration(
//                                   hintText: '0',
//                                   hintStyle: TextStyle(fontSize: 16),
//                                   border: OutlineInputBorder(
//                                       borderRadius: BorderRadius.circular(10))),
//                             ),
//                           ),
//                           SizedBox(
//                             height: 68,
//                             width: 54,
//                             child: TextFormField(
//                               controller: _verifycationCodeController,
//                               decoration: InputDecoration(
//                                 hintText: 'Enter your phone',
//                                 border: OutlineInputBorder(
//                                   borderSide: BorderSide(
//                                     width: 2.0,
//                                     color: Colors.black,
//                                   ),
//                                   borderRadius: BorderRadius.circular(10.0),
//                                 ),
//                               ),
//                             ),
//                           )
//                         ],
//                       ),
//                     ),
//                     SizedBox(
//                       height: 30,
//                     ),
//                     Text('Try Again in 30 Seconds'),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Container(
//                         height: height * 0.07,
//                         width: width * 0.83,
//                         decoration: BoxDecoration(
//                             color: Colors.deepOrange,
//                             borderRadius: BorderRadius.circular(10)),
//                         child: TextButton(
//                             onPressed: () async {
//                               final credential = PhoneAuthProvider.credential(
//                                   verificationId: widget.verificationId,
//                                   smsCode:
//                                       _verifycationCodeController.text.trim());

//                               try {
//                                 await auth.signInWithCredential(credential);
//                                 Navigator.push(
//                                     context,
//                                     MaterialPageRoute(
//                                       builder: (context) => HomeScreen(),
//                                     ));
//                               } catch (e) {}
//                             },
//                             child: Text('Continue')))
//                   ],
//                 ),
//               ),
//             )
//           ],
//         ),
//       )),
//     );
//   }
// }
