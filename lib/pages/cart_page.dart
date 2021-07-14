import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class CartPage extends StatelessWidget {
  static const routeName = '/cart';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => CartPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Cart'),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
