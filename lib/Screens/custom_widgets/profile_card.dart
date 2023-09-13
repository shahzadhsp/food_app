import 'package:flutter/material.dart';

class ProfileCard extends StatelessWidget {
   final String text;
   IconData icon;
   VoidCallback? onTap;
   ProfileCard({super.key,required this.icon,required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Card(
        color: Colors.white,
        child: ListTile(
          title: Text(text),
          leading: Icon(icon),
          trailing: Icon(Icons.chevron_right),
          onTap: onTap,
        ),
      ),
    );
  }
}
