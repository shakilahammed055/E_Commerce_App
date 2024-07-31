import 'package:e_commerce/providers/theme_provider.dart';
import 'package:e_commerce/screens/inner_screens/wishlist_screen.dart';
import 'package:e_commerce/services/assets_manager.dart';
import 'package:e_commerce/widgets/app_name_text.dart';
import 'package:e_commerce/widgets/custom_list_tile.dart';
import 'package:e_commerce/widgets/subtitles_text.dart';
import 'package:e_commerce/widgets/titles_text.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final themeProvider = Provider.of<ThemeProvider>(context);
    return Scaffold(
      appBar: AppBar(
        title: AppNameTextWidget(),
        leading: Image.asset(AssetsManager.shoppingCart),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Visibility(
            visible: false,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: TitleTextWidget(
                  label: "Please Login To Get Unlimitate Access"),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Row(
              children: [
                Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Theme.of(context).cardColor,
                    border: Border.all(
                      color: Theme.of(context).colorScheme.surface,
                      width: 3,
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://wallpapers.com/pretty-profile-pictures"),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                SizedBox(
                  width: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    TitleTextWidget(label: "Shakil Ahammed"),
                    SubtitleTextWidget(label: "shakilahammed055@gmail.com"),
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TitleTextWidget(
                  label: "General",
                ),
                CustomListTile(
                  imagePath: AssetsManager.orderSvg,
                  text: "All Order",
                  function: () {},
                ),
                CustomListTile(
                  imagePath: AssetsManager.wishlistSvg,
                  text: "Wishlist",
                  function: () {
                    Navigator.pushNamed(context, WishlistScreen.routeName);
                  },
                ),
                CustomListTile(
                  imagePath: AssetsManager.recent,
                  text: "Viewed recently",
                  function: () {},
                ),
                CustomListTile(
                  imagePath: AssetsManager.address,
                  text: "Address",
                  function: () {},
                ),
                Divider(
                  thickness: 1.5,
                ),
                SizedBox(
                  height: 10,
                ),
                TitleTextWidget(
                  label: "Settings",
                ),
                SwitchListTile(
                  title: Text(themeProvider.getIsDarkTheme
                      ? "dark Mode"
                      : "Light Mode"),
                  value: themeProvider.getIsDarkTheme,
                  onChanged: (value) {
                    themeProvider.setDarkTheme(themeValue: value);
                  },
                ),
                Divider(
                  thickness: 1.5,
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: ElevatedButton.icon(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                    ),
                    onPressed: () {},
                    icon: Icon(Icons.login),
                    label: Text(
                      "Login",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
