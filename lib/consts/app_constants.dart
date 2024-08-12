import 'package:e_commerce/models/categories_model.dart';

import '../services/assets_manager.dart';

class AppConstants {
  static const String imageUrl =
      'https://i.ibb.co/8r1Ny2n/20-Nike-Air-Force-1-07.png';

  static List<String> bannersImages = [
    AssetsManager.banner1,
    AssetsManager.banner2
  ];

  static List<CategoriesModel> categoriesList = [
    CategoriesModel(
      id: "Phones",
      image: AssetsManager.mobiles,
      name: "Phones",
    ),
    CategoriesModel(
      id: "Laptops",
      image: AssetsManager.pc,
      name: "Laptops",
    ),
    CategoriesModel(
      id: "Electronics",
      image: AssetsManager.electronics,
      name: "Electronics",
    ),
    CategoriesModel(
      id: "Watches",
      image: AssetsManager.watch,
      name: "Watches",
    ),
    CategoriesModel(
      id: "Clothes",
      image: AssetsManager.fashion,
      name: "Clothes",
    ),
    CategoriesModel(
      id: "Shoes",
      image: AssetsManager.shoes,
      name: "Shoes",
    ),
    CategoriesModel(
      id: "Books",
      image: AssetsManager.book,
      name: "Books",
    ),
    CategoriesModel(
      id: "Cosmetics",
      image: AssetsManager.cosmetics,
      name: "Cosmetics",
    ),
  ];
  static String apiKey = "AIzaSyDDoU3N0Eh7Fv95WxNNq2Rd-mtlyR5i4Q8";
  static String appId = "1:543307613691:android:2f3d56de8af9b326bd775e";
  static String messagingSenderId = "543307613691";
  static String projectId = "e-commerce-app-aafc0";
  static String storagebucket = "e-commerce-app-aafc0.appspot.com";
}
