import 'package:e_commerce/screens/cart/quantity_bottomsheet_widget.dart';
import 'package:e_commerce/widgets/subtitles_text.dart';
import 'package:e_commerce/widgets/titles_text.dart';
import 'package:fancy_shimmer_image/fancy_shimmer_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class CartWidget extends StatelessWidget {
  const CartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return FittedBox(
      child: IntrinsicWidth(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: FancyShimmerImage(
                  imageUrl:
                      "https://www.google.com/url?sa=i&url=https%3A%2F%2Fwww.stuff.tv%2Fnews%2Ffinally-nikes-making-self-lacing-sneakers-all-hyperadapt-10%2F&psig=AOvVaw0fgXEJp0an4zt6EzrIZxbZ&ust=1722368405737000&source=images&cd=vfe&opi=89978449&ved=0CBEQjRxqFwoTCODL1bmAzYcDFQAAAAAdAAAAABAX",
                  height: size.height * 0.1,
                  width: size.width * 0.2,
                ),
              ),
              SizedBox(
                width: 10,
              ),
              IntrinsicWidth(
                child: Column(
                  children: [
                    Row(
                      children: [
                        SizedBox(
                          width: size.width * 0.6,
                          child: TitleTextWidget(
                            label: "Title",
                            maxLines: 2,
                          ),
                        ),
                        Column(
                          children: [
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.delete,
                                color: Colors.red,
                              ),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                IconlyLight.heart,
                                color: Colors.red,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                    Row(
                      children: [
                        SubtitleTextWidget(
                          label: "16\$",
                          fontSize: 18,
                          color: Colors.blue,
                        ),
                        Spacer(),
                        OutlinedButton.icon(
                          style: OutlinedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              side: BorderSide(
                                width: 1.5,
                                color: Colors.blue,
                              )),
                          onPressed: () async {
                            await showModalBottomSheet(
                              backgroundColor:
                                  Theme.of(context).scaffoldBackgroundColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(20),
                                  topRight: Radius.circular(20),
                                ),
                              ),
                              context: context,
                              builder: (context) {
                                return QuantityBottomsheetWidget();
                              },
                            );
                          },
                          icon: Icon(IconlyLight.arrowDown2),
                          label: Text("Qty: 6"),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
