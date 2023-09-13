import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Screens/home_screen.dart';

import 'Sign_up_screen.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  String imgUrl =
      'https://images.pexels.com/photos/4974368/pexels-photo-4974368.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1';
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final FirebaseAuth firebaseAuth = FirebaseAuth.instance;
  // final FirebaseAuth auth = FirebaseAuth.instance;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 100,
              ),
              CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
                radius: 50,
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                'Welcome Back',
                style: TextStyle(color: Colors.deepOrangeAccent, fontSize: 28),
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                'Sign in',
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
                      Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            'Forgot Password',
                            style: TextStyle(color: Colors.deepOrangeAccent),
                          )),
                      const SizedBox(height: 16.0),
                      ElevatedButton(
                        style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all(
                                Colors.deepOrangeAccent)),
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                          
                            // Form is valid, perform login logic here
                            firebaseAuth
                                .signInWithEmailAndPassword(
                                    email: _emailController.text.trim(),
                                    password:
                                        _passwordController.text.toString())
                                .then((value) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HomeScreen(),
                                  ));
                            });

                            // Perform login with email and password
                            // ...
                          }
                        },
                        child: const Text('Sign in'),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text('Don\'t have an account?'),
                          TextButton(
                            onPressed: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => SignUpScreen(),
                                  ));
                            },
                            child: Text(' Create a new account ',
                                style:
                                    TextStyle(color: Colors.deepOrangeAccent)),
                          )
                        ],
                      )
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
