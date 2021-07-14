import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class WishListPage extends StatelessWidget {
  static const routeName = '/wishList';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => WishListPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Wish List'),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
