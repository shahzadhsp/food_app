import 'package:flutter/material.dart';

import 'package:food_app/Screens/custom_widgets/profile_card.dart';
import 'package:food_app/Screens/user_profile.dart';

class MainProfile extends StatefulWidget {
  const MainProfile({super.key});

  @override
  State<MainProfile> createState() => _MainProfileState();
}

class _MainProfileState extends State<MainProfile> {
  @override
  Widget build(BuildContext context) {
    double height =
        MediaQuery.of(context).size.height - kBottomNavigationBarHeight;
    double width = MediaQuery.of(context).size.width;

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
                      Text('Profile', style: TextStyle(fontSize: 30)),
                    ]))
              ])),
          Positioned(
            bottom: 0,
            child: Container(
              height: height * 0.8,
              width: width,
              //  color: Colors.white,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 30,
                  ),
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage(
                        'https://images.unsplash.com/photo-1519456264917-42d0aa2e0625?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1470&q'),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Muhammad Shahzad'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('+923044978989'),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 400),
            child: Container(
              height: height * .7,
              width: width,
              decoration: BoxDecoration(
                color: Colors.blueGrey.shade200,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(40),
                  topRight: Radius.circular(40),
                ),
              ),
              child: ListView(
                children: [
                  SizedBox(
                    height: 10,
                  ),
                  ProfileCard(
                    icon: Icons.person,
                    text: 'My Profile',
                    onTap: () {
                      print('user profile');
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => UserProfile(),
                          ));
                    },
                  ),
                  ProfileCard(icon: Icons.credit_card, text: 'Payment Setting'),
                  ProfileCard(icon: Icons.notifications, text: 'Notifications'),
                  ProfileCard(
                      icon: Icons.favorite_border_outlined, text: 'Wishlist'),
                  ProfileCard(
                      icon: Icons.shopping_cart, text: 'Order Tracking '),
                  ProfileCard(icon: Icons.logout, text: 'Logout')
                ],
              ),
            ),
          )
        ],
      ),
    ));
  }
}
