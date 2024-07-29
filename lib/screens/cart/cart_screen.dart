import 'package:e_commerce/screens/cart/cart_widget.dart';
import 'package:e_commerce/services/assets_manager.dart';
import 'package:e_commerce/widgets/empty_widget_bag.dart';
import 'package:e_commerce/widgets/titles_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CartScreen extends StatelessWidget {
  const CartScreen({super.key});
  final bool isEmpty = false;

  @override
  Widget build(BuildContext context) {
    return isEmpty
        ? Scaffold(
            body: EmptyBagWidget(
              imagePath: AssetsManager.shoppingBasket,
              title: "Your cart is empty",
              subtitle:
                  "Looks like your cart is empty \nAdd something and make me happy",
              buttonText: "Shop Now",
            ),
          )
        : Scaffold(
            appBar: AppBar(
              actions: [
                IconButton(
                  onPressed: () {},
                  icon: Icon(IconlyLight.delete),
                ),
              ],
              title: TitleTextWidget(label: "Cart(5)"),
              leading: Image.asset(AssetsManager.shoppingCart),
            ),
            body: ListView.builder(
              itemCount: 30,
              itemBuilder: (context, index) {
                return CartWidget();
              },
            ),
          );
  }
}
