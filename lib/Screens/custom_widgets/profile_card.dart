import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ProfileCard extends StatelessWidget {
  final String text;
  IconData icon;
  VoidCallback? onTap;
  ProfileCard({super.key, required this.icon, required this.text, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 10.0),
      child: Card(
        color: Colors.white,
        child: ListTile(
          title: Text(text),
          leading: Icon(
            icon,
            color: Colors.deepOrangeAccent,
          ),
          trailing: Icon(Icons.chevron_right),
          onTap: onTap,
        ),
      ),
    );
  }
}
