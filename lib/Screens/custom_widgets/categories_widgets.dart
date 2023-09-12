import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CategoriesContainer extends StatelessWidget {
  final String text;
  final String image;
  final String price;
  VoidCallback ontap;
  CategoriesContainer(
      {super.key,
      required this.image,
      required this.text,
      required this.price,
      required this.ontap});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: ontap,
      child: Column(
        children: [
          // SizedBox(
          //   height: 30,
          // ),
          Container(
            height: 70,
            width: 70,
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(50)),
            child: CircleAvatar(backgroundImage: NetworkImage(image)),
          ),
          SizedBox(
            height: 4,
          ),
          FittedBox(
            child: Text(
              text,
              style: TextStyle(fontSize: 16),
            ),
          ),
          SizedBox(
            height: 0,
          ),
          FittedBox(
            child: Text(
              '\$${price}',
              style: TextStyle(fontSize: 16),
            ),
          ),
        ],
      ),
    );
  }
}
