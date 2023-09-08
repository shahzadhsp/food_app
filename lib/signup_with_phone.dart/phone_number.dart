// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import 'package:food_app/signup_with_phone.dart/phone_otp_screen.dart';

// class PhoneNumberVerification extends StatefulWidget {
//   const PhoneNumberVerification({super.key});

//   @override
//   State<PhoneNumberVerification> createState() =>
//       _PhoneNumberVerificationState();
// }

// class _PhoneNumberVerificationState extends State<PhoneNumberVerification> {
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     final width = MediaQuery.of(context).size.width;
//     final _phoneController = TextEditingController();
//     final FirebaseAuth firebaseAuth = FirebaseAuth.instance;

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
//                           'Mobile'.substring(0, 1),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 50,
//                     ),
//                     Align(
//                         alignment: Alignment.topLeft,
//                         child: Text(
//                           'What\s Your Phone NUmber',
//                           style: TextStyle(fontSize: 24),
//                         )),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Align(
//                         alignment: Alignment.topLeft,
//                         child:
//                             Text('We will check your phone number is correct')),
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
//                           'Mobile Number',
//                           style: TextStyle(fontSize: 16),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 10,
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.symmetric(horizontal: 30.0),
//                       child: TextFormField(
//                         controller: _phoneController,
//                         decoration: InputDecoration(
//                           hintText: 'Enter your phone',
//                           border: OutlineInputBorder(
//                             borderSide: BorderSide(
//                               width: 2.0,
//                               color: Colors.black,
//                             ),
//                             borderRadius: BorderRadius.circular(10.0),
//                           ),
//                         ),
//                       ),
//                     ),
//                     SizedBox(
//                       height: 40,
//                     ),
//                     Container(
//                         height: height * 0.07,
//                         width: width * 0.83,
//                         decoration: BoxDecoration(
//                             color: Colors.deepOrange,
//                             borderRadius: BorderRadius.circular(10)),
//                         child: TextButton(
//                             onPressed: () {
//                               firebaseAuth
//                                   .verifyPhoneNumber(
//                                     phoneNumber: _phoneController.text.trim(),
//                                     verificationCompleted:
//                                         (phoneAuthCredential) {},
//                                     verificationFailed: (error) {
//                                       // ScaffoldMessenger.of(context)
//                                       //     .showSnackBar(SnackBar(
//                                       //       duration: Duration(seconds: 10),
//                                       //         content: Text(error.toString())));
//                                       print(error.toString());
//                                     },
//                                     codeSent:
//                                         (String verificationId, int? token) {
//                                       Navigator.push(
//                                           context,
//                                           MaterialPageRoute(
//                                             builder: (context) =>
//                                                 PhoneOtpScreen(
//                                                     verificationId:
//                                                         verificationId),
//                                           ));
//                                     },
//                                     codeAutoRetrievalTimeout: (e) {
//                                       ScaffoldMessenger.of(context)
//                                           .showSnackBar(SnackBar(
//                                               content: Text(e.toString())));
//                                     },
//                                   )
//                                   .then((value) {});
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
