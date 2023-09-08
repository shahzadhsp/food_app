import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_database/firebase_database.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Screens/Sign_In_Screen.dart';
import 'package:food_app/Screens/home_screen.dart';

import 'home_screen copy.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _phoneController = TextEditingController();
  // Ceate a instance for Authentication
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  // final DatabaseReference databaseReference =
  //     FirebaseDatabase.instance.ref("users");

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Create Account',
                style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 28),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Create a new account',
                style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 18),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      TextFormField(
                        controller: _nameController,
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: TextStyle(color: Colors.deepOrangeAccent),
                          filled: true,
                          fillColor: Colors.white,
                          hintMaxLines: 1,
                          labelText: 'Enter Your Name',
                          labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          // prefixIcon:
                          //     Icon(Icons.email, color: Colors.deepOrangeAccent),
                        ),
                        validator: (value) {
                          var newValue = value ?? '';
                          if (newValue.isEmpty) {
                            return 'Name is Required';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        controller: _emailController,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(color: Colors.deepOrangeAccent),
                          filled: true,
                          fillColor: Colors.white,
                          hintMaxLines: 1,
                          labelText: 'Enter Your Email',
                          labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon:
                              Icon(Icons.email, color: Colors.deepOrangeAccent),
                        ),
                        validator: (value) {
                          var newValue = value ?? '';
                          if (newValue.isEmpty) {
                            return 'Email is Required';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        cursorColor: Colors.deepOrangeAccent,
                        controller: _phoneController,
                        decoration: InputDecoration(
                          hintText: 'Phone',
                          hintStyle: TextStyle(color: Colors.deepOrangeAccent),
                          filled: true,
                          fillColor: Colors.white,
                          hintMaxLines: 1,
                          labelText: 'Enter Your Phone',
                          labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon:
                              Icon(Icons.phone, color: Colors.deepOrangeAccent),
                        ),
                        validator: (value) {
                          var newValue = value ?? '';
                          if (newValue.isEmpty) {
                            return 'Phone is Required';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 20.0),
                      TextFormField(
                        controller: _passwordController,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(color: Colors.deepOrangeAccent),
                          filled: true,
                          fillColor: Colors.white,
                          hintMaxLines: 1,
                          labelText: 'Enter Your Password',
                          labelStyle: TextStyle(color: Colors.deepOrangeAccent),
                          floatingLabelBehavior: FloatingLabelBehavior.always,
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                          ),
                          prefixIcon:
                              Icon(Icons.lock, color: Colors.deepOrangeAccent),
                        ),
                        validator: (value) {
                          var newValue = value ?? '';
                          if (newValue.isEmpty) {
                            return 'Password is Required';
                          } else if (newValue.length <= 8) {
                            return 'Password must be contained 8 charachters';
                          }
                          return null;
                        },
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      const SizedBox(height: 16.0),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.deepOrangeAccent)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            // Navigator.push(
                            //     context,
                            //     MaterialPageRoute(
                            //       builder: (context) => HomeScreen(),
                            //     ));
                            // Form is valid, perform login logic here
                            firebaseAuth
                                .createUserWithEmailAndPassword(
                                    email: _emailController.text.trim(),
                                    password: _passwordController.text.trim())
                                .then((value) {
                              String id = DateTime.now()
                                  .millisecondsSinceEpoch
                                  .toString();
                              FirebaseFirestore.instance
                                  .collection('shahzad')
                                  .doc(id)
                                  .set({
                                'id': id,
                                'name': _nameController.text.toString(),
                                'email': _emailController.text.toString(),
                                'phone': _phoneController.text.toString(),
                                'password': _passwordController.text.toString(),
                              }).then((value) {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => HomeScreen(),
                                    ));
                              });
                            });
                            print(_emailController.text);
                            print(_phoneController.text);

                            print(_passwordController.text);
                            print(_nameController.text);

                            // Perform login with email and password
                            // ...
                          }
                        },
                        child: const Text('Sign up'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Alreadt  have an account?'),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignInScreen(),
                                  ));
                            },
                            child: Text(
                              'Sign in',
                              style: TextStyle(color: Colors.deepOrangeAccent),
                            ),
                          ),
                          SizedBox(
                            height: 80,
                          ),
                        ],
                      ),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.deepOrangeAccent)),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => PhoneVerification(),
                              ));
                        },
                        child: const Text('Continue with phone'),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
