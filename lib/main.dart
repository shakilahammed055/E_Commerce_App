import 'package:e_commerce/consts/theme_data.dart';
import 'package:e_commerce/providers/theme_provider.dart';
import 'package:e_commerce/screens/inner_screens/products_details.dart';
import 'package:e_commerce/screens/inner_screens/wishlist_screen.dart';
import 'package:e_commerce/widgets/root_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // return MaterialApp(
    //   title: "E Commerce App",
    //   theme: ThemeData(
    //     primarySwatch: Colors.blue,
    //   ),
    //   debugShowCheckedModeBanner: false,
    //   home: HomePage(),
    // );
    return MultiProvider(
      providers: [ChangeNotifierProvider(create: (context) => ThemeProvider())],
      child: Consumer<ThemeProvider>(
        builder: (context, ThemeProvider, child) {
          return MaterialApp(
            title: "E Commerce App",
            debugShowCheckedModeBanner: false,
            theme: styles.themeData(
                isDarkTheme: ThemeProvider.getIsDarkTheme, context: context),
            home: RootScreen(),
            routes: {
              ProductsDetails.routName: (context) => ProductsDetails(),
              WishlistScreen.routeName: (context) => WishlistScreen(),
            },
          );
        },
      ),
    );
  }
}
