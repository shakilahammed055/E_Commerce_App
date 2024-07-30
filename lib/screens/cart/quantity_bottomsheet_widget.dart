import 'package:e_commerce/widgets/subtitles_text.dart';
import 'package:flutter/material.dart';

class QuantityBottomsheetWidget extends StatelessWidget {
  const QuantityBottomsheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 20,
        ),
        Container(
          height: 8,
          width: 50,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.grey,
          ),
        ),
        SizedBox(
          height: 20,
        ),
        Expanded(
          child: ListView.builder(
            itemCount: 30,
            itemBuilder: (context, index) {
              return GestureDetector(
                  onTap: () {
                    print("index ${index + 1}");
                  },
                  child: SubtitleTextWidget(label: "${index + 1}"));
            },
          ),
        ),
      ],
    );
  }
}
