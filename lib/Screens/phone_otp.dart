import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import 'home_screen.dart';


// ignore: must_be_immutable
class PhoneOtp extends StatefulWidget {
  String VerificationId;
  PhoneOtp({super.key, required this.VerificationId});

  @override
  State<PhoneOtp> createState() => _PhoneOtpState();
}

class _PhoneOtpState extends State<PhoneOtp> {
  @override
  Widget build(BuildContext context) {
    final phoneCodeController = TextEditingController();
    final auth = FirebaseAuth.instance;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Phone Otp Verifycation'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          TextFormField(
            controller: phoneCodeController,
            decoration: const InputDecoration(hintText: 'Enter 6 digit code'),
          ),
          const SizedBox(
            height: 30,
          ),
          MaterialButton(
            onPressed: () async {
              final credential = PhoneAuthProvider.credential(
                  verificationId: widget.VerificationId,
                  smsCode: phoneCodeController.text.trim());
              await auth.signInWithCredential(credential).then((value) {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              });
            },
            child: const Text('verify'),
          )
        ],
      ),
    );
  }
}
