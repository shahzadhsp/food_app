import 'package:flutter/material.dart';
import 'package:food_app/provider/home_provider.dart';
import 'package:food_app/provider/wish_list_provider.dart';
import 'package:provider/provider.dart';

// ignore: must_be_immutable
class PopularContainer extends StatelessWidget {
  final int index;
  final String text;
  final String imageUrl;
  final String price;
  IconData icon;
  VoidCallback onTap;
  PopularContainer(
      {super.key,
      required this.index,
      required this.imageUrl,
      required this.icon,
      required this.price,
      required this.onTap,
      required this.text});

  @override
  Widget build(BuildContext context) {
    final favoriteProvider = Provider.of<FavoriteProvider>(context);
    final List<int> selectedItems = [];

    return Consumer(
      builder: (context, value, child) {
        return InkWell(
          onTap: onTap,
          child: Card(
            elevation: 10,
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0)),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.topRight,
                    child: IconButton(
                      onPressed: () {
                        favoriteProvider.addFavoriteItem(index);
                      },
                      icon: Icon(
                      icon,
                        color: Colors.deepOrangeAccent,
                      ),
                    ),
                  ),
                  Container(
                    height: 70,
                    width: 70,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(50)),
                    child: CircleAvatar(
                      backgroundImage: NetworkImage(imageUrl),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Align(
                      alignment: Alignment.topLeft,
                      child: Text(
                        text,
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                  ),
                  Column(
                    children: [
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 12),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$${price}'),
                            Icon(Icons.shopping_cart,
                                color: Colors.deepOrangeAccent)
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
