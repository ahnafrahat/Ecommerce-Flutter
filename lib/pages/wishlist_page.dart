import 'package:ecommerce_block/blocs/wishlist/wishlist_bloc.dart';
import 'package:ecommerce_block/models/product_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
      body: BlocBuilder<WishlistBloc, WishlistState>(
        builder: (context, state) {
          if (state is WishlistLoading) {
            return Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is WishlistLoaded) {
            return GridView.builder(
                padding: EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 16,
                ),
                itemCount: state.wishList.products.length,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 1, childAspectRatio: 1.5),
                itemBuilder: (BuildContext context, int index) {
                  return Center(
                    child: ProductCardWide(
                      product: state.wishList.products[index],
                    ),
                  );
                });
          } else {
            return Center(
              child: Text('Something Fucked Up!'),
            );
          }
        },
      ),
    );
  }
}
