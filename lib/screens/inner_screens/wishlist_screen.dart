import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:e_commerce/services/assets_manager.dart';
import 'package:e_commerce/widgets/products/products_widget.dart';
import 'package:e_commerce/widgets/titles_text.dart';
import 'package:flutter/material.dart';

class WishlistScreen extends StatefulWidget {
  static const routeName = "/WishlistScreen";
  const WishlistScreen({super.key});

  @override
  State<WishlistScreen> createState() => _WishlistScreenState();
}

class _WishlistScreenState extends State<WishlistScreen> {
  late TextEditingController searchTextController;

  @override
  void initState() {
    searchTextController = TextEditingController();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        appBar: AppBar(
          title: TitleTextWidget(
            label: "Wishlists(5)",
          ),
          leading: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Image.asset(AssetsManager.shoppingCart),
          ),
        ),
        body: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Expanded(
                child: DynamicHeightGridView(
                    builder: (context, index) {
                      return ProductWidget();
                    },
                    itemCount: 30,
                    crossAxisCount: 2),
              )
            ],
          ),
        ),
      ),
    );
  }
}
