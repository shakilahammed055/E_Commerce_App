import 'package:dynamic_height_grid_view/dynamic_height_grid_view.dart';
import 'package:e_commerce/services/assets_manager.dart';
import 'package:e_commerce/widgets/empty_widget_bag.dart';
import 'package:e_commerce/widgets/products/products_widget.dart';
import 'package:e_commerce/widgets/titles_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../providers/viewed_recently_provider.dart';

class ViewedRecentlyScreen extends StatelessWidget {
  static const routName = "/ViewedRecentlyScreen";
  const ViewedRecentlyScreen({super.key});
  final bool isEmpty = false;
  @override
  Widget build(BuildContext context) {
    final viewedProdProvider = Provider.of<ViewedProdProvider>(context);

    return viewedProdProvider.getViewedProds.isEmpty
        ? Scaffold(
            body: EmptyBagWidget(
              imagePath: AssetsManager.orderBag,
              title: "No viewed products yet",
              subtitle:
                  "Looks like your cart is empty add something and make me happy",
              buttonText: "Shop now",
            ),
          )
        : Scaffold(
            appBar: AppBar(
              leading: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.asset(
                  AssetsManager.shoppingCart,
                ),
              ),
              title: TitlesTextWidget(
                  label:
                      "Viewed recently (${viewedProdProvider.getViewedProds.length})"),
              actions: [
                IconButton(
                  onPressed: () {
                    //  MyAppFunctions.showErrorOrWarningDialog(
                    //   isError: false,
                    //   context: context,
                    //   subtitle: "Clear cart?",
                    //   fct: () {
                    //   viewedProdProvider.clearLocalWishlist();
                    //   },
                    // );
                  },
                  icon: const Icon(
                    Icons.delete_forever_rounded,
                    color: Colors.red,
                  ),
                ),
              ],
            ),
            body: DynamicHeightGridView(
              mainAxisSpacing: 12,
              crossAxisSpacing: 12,
              builder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ProductWidget(
                      productId: viewedProdProvider.getViewedProds.values
                          .toList()[index]
                          .productId),
                );
              },
              itemCount: viewedProdProvider.getViewedProds.length,
              crossAxisCount: 2,
            ),
          );
  }
}
