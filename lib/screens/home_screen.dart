import 'package:card_swiper/card_swiper.dart';
import 'package:e_commerce/consts/app_constants.dart';
import 'package:e_commerce/services/assets_manager.dart';
import 'package:e_commerce/widgets/app_name_text.dart';
import 'package:e_commerce/widgets/products/latest_arrival_products_widget.dart';
import 'package:e_commerce/widgets/titles_text.dart';
import 'package:flutter/material.dart';

class Homecreen extends StatefulWidget {
  const Homecreen({super.key});

  @override
  State<Homecreen> createState() => _HomecreenState();
}

class _HomecreenState extends State<Homecreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: AppNameTextWidget(),
        leading: Padding(
          padding: const EdgeInsets.all(6.0),
          child: Image.asset(AssetsManager.shoppingCart),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: size.height * 0.25,
              child: Swiper(
                itemBuilder: (context, index) {
                  return Image.asset(AppConstants.bannersImages[index]);
                },
                itemCount: AppConstants.bannersImages.length,
                autoplay: true,
                pagination: SwiperPagination(
                  alignment: Alignment.bottomCenter,
                  builder: DotSwiperPaginationBuilder(
                      activeColor: Colors.red, color: Colors.white),
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            TitleTextWidget(
              label: "Latest arrival",
              fontSize: 22,
            ),
            SizedBox(
              height: 18,
            ),
            SizedBox(
              height: size.height * 0.2,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: 10,
                itemBuilder: (context, index) {
                  return LatestArrivalProductsWidget();
                },
              ),
            )
          ],
        ),
      ),
    );
  }
}
