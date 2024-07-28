import 'package:e_commerce/widgets/titles_text.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: TitleTextWidget(label: "Cart Screen")),
    );
  }
}
