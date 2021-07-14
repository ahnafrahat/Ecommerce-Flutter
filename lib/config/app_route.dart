import 'package:ecommerce_block/models/models.dart';
import 'package:ecommerce_block/pages/cart_page.dart';
import 'package:ecommerce_block/pages/category_page.dart';
import 'package:ecommerce_block/pages/profile_page.dart';
import 'package:ecommerce_block/pages/wishlist_page.dart';
import 'package:flutter/material.dart';
import '../pages/pages.dart';

class AppRouter {
  static Route onGenerateRoute(RouteSettings settings) {
    print('This is route ${settings.name}');

    switch (settings.name) {
      case HomePage.routeName:
        return HomePage.route();
      case CartPage.routeName:
        return CartPage.route();
      case ProfilePage.routeName:
        return ProfilePage.route();
      case WishListPage.routeName:
        return WishListPage.route();
      case ProductPage.routeName:
        return ProductPage.route(product: settings.arguments as Product);
      case CategoryPage.routeeName:
        return CategoryPage.route(category: settings.arguments as Category);
      default:
        return _errorRoute();
    }
  }

  static Route _errorRoute() {
    return MaterialPageRoute(
      settings: RouteSettings(name: '/error'),
      builder: (_) => Scaffold(
        appBar: AppBar(
          title: Text('Error'),
        ),
      ),
    );
  }
}
