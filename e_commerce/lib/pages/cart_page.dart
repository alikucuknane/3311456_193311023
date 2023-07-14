import 'package:flutter/material.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Column(
        children: [
          // App bar Widget
          // Product card
          Column(
            children: [
              Card(
                child: Column(
                  children: [],
                ),
              ),
              Card()
            ],
          )
          // Check out
        ],
      ),
      // Bottom nav. bar
      // bottomNavigationBar: ,
    );
  }
}
