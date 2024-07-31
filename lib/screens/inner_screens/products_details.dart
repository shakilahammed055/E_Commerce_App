import 'package:e_commerce/consts/app_constants.dart';
import 'package:e_commerce/widgets/app_name_text.dart';
import 'package:e_commerce/widgets/products/heart_button_widget.dart';
import 'package:e_commerce/widgets/subtitles_text.dart';
import 'package:e_commerce/widgets/titles_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';

class ProductsDetails extends StatefulWidget {
  static const routName = "/ProductsDetails";
  const ProductsDetails({super.key});

  @override
  State<ProductsDetails> createState() => _ProductsDetailsState();
}

class _ProductsDetailsState extends State<ProductsDetails> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: AppNameTextWidget(
          fontSize: 25,
        ),
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: IconButton(
            onPressed: () {
              Navigator.canPop(context) ? Navigator.pop(context) : null;
            },
            icon: Icon(
              Icons.arrow_back_ios,
              size: 18,
            ),
          ),
        ),
      ),
      body: Column(
        children: [
          FancyShimmerImage(
            imageUrl: AppConstants.productImageUrl,
            height: size.height * 0.38,
            width: double.infinity,
            boxFit: BoxFit.contain,
          ),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Flexible(
                      child: Text(
                        "Title" * 5,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    SubtitleTextWidget(
                      label: "166.5\$",
                      color: Colors.blue,
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 30),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      HeartButtonWidget(
                        bkgColor: Colors.blue,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Expanded(
                        child: SizedBox(
                          height: kBottomNavigationBarHeight - 10,
                          child: ElevatedButton.icon(
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.lightBlue,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                )),
                            onPressed: () {},
                            label: Text("Add to cart"),
                            icon: Icon(Icons.add_shopping_cart),
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    TitleTextWidget(
                      label: "About this item",
                    ),
                    SubtitleTextWidget(label: "In phones"),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                SubtitleTextWidget(label: "Description" * 15),
              ],
            ),
          )
        ],
      ),
    );
  }
}
