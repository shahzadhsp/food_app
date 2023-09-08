import 'package:flutter/material.dart';

// ignore: must_be_immutable
class IconContainer extends StatelessWidget {
  IconData icon;
  String text;
  VoidCallback onTap;
  IconContainer(
      {super.key, required this.icon, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        height: 80,
        width: 50,
        decoration: BoxDecoration(
            color: const Color.fromRGBO(255, 110, 64, 1),
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: Colors.white,
            ),
            SizedBox(
              height: 4,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.only(left: 4.0, right: 4),
                child: Text(
                  text,
                  style: TextStyle(color: Colors.white, fontSize: 12),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
