import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Screens/phone_otp.dart';


class PhoneVerification extends StatefulWidget {
  const PhoneVerification({super.key});

  @override
  State<PhoneVerification> createState() => _PhoneVerificationState();
}

class _PhoneVerificationState extends State<PhoneVerification> {
  @override
  Widget build(BuildContext context) {
    final phoneController = TextEditingController();
    // create instance auth
    final auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Verifycation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: phoneController,
            decoration: const InputDecoration(hintText: 'Enter phone number'),
          ),
          const SizedBox(
            height: 30,
          ),
          MaterialButton(
            onPressed: () {
              auth.verifyPhoneNumber(
                phoneNumber: phoneController.text.trim(),
                verificationCompleted: (phoneAuthCredential) {},
                verificationFailed: (error) {
                  print(error.toString());
                },
                codeSent: (String verificationId, int? token) {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => PhoneOtp(
                          VerificationId: verificationId,
                        ),
                      ));
                },
                codeAutoRetrievalTimeout: (e) {
                  print(e.toString());
                },
              );
            },
            child: const Text('Continue'),
          )
        ],
      ),
    );
  }
}
