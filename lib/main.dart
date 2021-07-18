import 'package:ecommerce_block/blocs/wishlist/wishlist_bloc.dart';
import 'package:ecommerce_block/config/app_route.dart';
import 'package:flutter/material.dart';
import 'pages/pages.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (_) => WishlistBloc()..add(StartWishList()),
        )
      ],
      child: MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          primarySwatch: Colors.lightGreen,
        ),
        home: HomePage(),
        onGenerateRoute: AppRouter.onGenerateRoute,
        initialRoute: HomePage.routeName,
      ),
    );
  }
}
