import 'package:e_commerce/consts/app_constants.dart';
import 'package:e_commerce/widgets/products/heart_button_widget.dart';
import 'package:e_commerce/widgets/subtitles_text.dart';
import 'package:e_commerce/widgets/titles_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class ProductWidget extends StatefulWidget {
  const ProductWidget({super.key});

  @override
  State<ProductWidget> createState() => _ProductWidgetState();
}

class _ProductWidgetState extends State<ProductWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.all(5),
      child: GestureDetector(
        onTap: () {
          print("Navigate to product detail screen");
        },
        child: Column(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: FancyShimmerImage(
                imageUrl: AppConstants.productImageUrl,
                height: size.height * 0.20,
                width: double.infinity,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Flexible(
                  flex: 5,
                  child: TitleTextWidget(
                    label: "Title",
                    maxLines: 2,
                    fontSize: 18,
                  ),
                ),
                Flexible(
                  child: HeartButtonWidget(),
                  flex: 2,
                )
              ],
            ),
            SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SubtitleTextWidget(label: "165.00\$"),
                  Material(
                    borderRadius: BorderRadius.circular(15),
                    color: Colors.lightBlue,
                    child: IconButton(
                      splashColor: Colors.red,
                      splashRadius: 25.0,
                      onPressed: () {},
                      icon: Icon(Icons.add_shopping_cart_rounded),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
