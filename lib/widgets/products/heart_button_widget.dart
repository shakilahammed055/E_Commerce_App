import 'package:flutter/material.dart';
import 'package:flutter_iconly/flutter_iconly.dart';

class HeartButtonWidget extends StatefulWidget {
  const HeartButtonWidget({
    super.key,
    this.bkgColor = Colors.transparent,
    this.size = 20,
    // required this.productId,
    // this.isInWishlist = false,
  });
  final Color bkgColor;
  final double size;
  // final String productId;

  @override
  State<HeartButtonWidget> createState() => _HeartButtonWidgetState();
}

class _HeartButtonWidgetState extends State<HeartButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: widget.bkgColor,
        shape: BoxShape.circle,
      ),
      child: IconButton(
        style: IconButton.styleFrom(shape: CircleBorder()),
        onPressed: () {},
        icon: Icon(
          IconlyLight.heart,
          size: widget.size,
        ),
      ),
    );
  }
}
