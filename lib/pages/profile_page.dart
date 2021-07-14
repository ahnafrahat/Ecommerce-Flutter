import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class ProfilePage extends StatelessWidget {
  static const routeName = '/profile';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => ProfilePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Profile'),
      bottomNavigationBar: CustomBottomAppBar(),
    );
  }
}
