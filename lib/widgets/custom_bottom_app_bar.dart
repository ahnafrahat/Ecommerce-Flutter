import 'package:ecommerce_block/pages/cart_page.dart';
import 'package:ecommerce_block/pages/home_page.dart';
import 'package:ecommerce_block/pages/profile_page.dart';
import 'package:flutter/material.dart';

class CustomBottomAppBar extends StatelessWidget {
  const CustomBottomAppBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, HomePage.route());
              },
              icon: Icon(Icons.home),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, CartPage.route());
              },
              icon: Icon(Icons.shopping_cart),
            ),
            IconButton(
              onPressed: () {
                Navigator.pushReplacement(context, ProfilePage.route());
              },
              icon: Icon(Icons.person),
            ),
          ],
        ),
      ),
    );
  }
}
