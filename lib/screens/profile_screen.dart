import 'package:e_commerce/widgets/titles_text.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: TitleTextWidget(label: "Profile Screen"),
      ),
    );
  }
}
