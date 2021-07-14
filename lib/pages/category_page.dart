import 'package:flutter/material.dart';

import '../models/models.dart';
import '../widgets/widgets.dart';

class CategoryPage extends StatelessWidget {
  static const String routeeName = '/category';

  static Route route({required Category category}) {
    return MaterialPageRoute(
      settings: RouteSettings(name: CategoryPage.routeeName),
      builder: (context) => CategoryPage(category: category),
    );
  }

  final Category category;

  CategoryPage({
    required this.category,
  });

  @override
  Widget build(BuildContext context) {
    final List<Product> productByCategory = Product.products
        .where((product) => product.category == category.name)
        .toList();

    return Scaffold(
      appBar: CustomAppBar(category.name),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, childAspectRatio: 0.8),
          itemCount: productByCategory.length,
          itemBuilder: (context, index) {
            return Center(
              child: Padding(
                padding: EdgeInsets.all(5.0),
                child: ProductCard(
                  product: productByCategory[index],
                ),
              ),
            );
          }),
    );
  }
}
