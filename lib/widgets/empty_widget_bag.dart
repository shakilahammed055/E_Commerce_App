import 'package:e_commerce/widgets/subtitles_text.dart';
import 'package:e_commerce/widgets/titles_text.dart';
import 'package:flutter/material.dart';

class EmptyBagWidget extends StatelessWidget {
  final String imagePath, title, subtitle, buttonText;
  const EmptyBagWidget(
      {super.key,
      required this.imagePath,
      required this.title,
      required this.subtitle,
      required this.buttonText});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          children: [
            Image.asset(
              imagePath,
              height: size.height * 0.35,
              width: double.infinity,
            ),
            TitleTextWidget(
              label: "Whoops",
              fontSize: 40,
              color: Colors.red,
              fontWeight: FontWeight.bold,
            ),
            SizedBox(
              height: 20,
            ),
            SubtitleTextWidget(
              label: title,
              fontWeight: FontWeight.w700,
              fontSize: 25,
            ),
            SizedBox(
              height: 20,
            ),
            SubtitleTextWidget(
              label: subtitle,
              fontWeight: FontWeight.w500,
              fontSize: 20,
            ),
            SizedBox(
              height: 25,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding: EdgeInsets.all(10),
              ),
              onPressed: () {},
              child: Text(
                buttonText,
                style: TextStyle(
                  fontSize: 22,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
