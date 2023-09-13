import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:food_app/Screens/main_profile.dart';
import 'package:food_app/firebase_options.dart';

import 'package:food_app/provider/home_provider.dart';
import 'package:food_app/provider/wish_list_provider.dart';
import 'package:provider/provider.dart';



main() async {
 
WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => HomeProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => FavoriteProvider(),
        )
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: MainProfile(),
      ),
    );
  }
}
