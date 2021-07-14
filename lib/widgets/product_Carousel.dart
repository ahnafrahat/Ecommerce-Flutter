import 'widgets.dart';
import 'package:flutter/material.dart';
import '../models/models.dart';

class ProductCarrousel extends StatelessWidget {
  final List<Product> products;
  const ProductCarrousel({
    required this.products,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.width / 1.8,
      child: ListView.builder(
        padding: EdgeInsets.symmetric(
          horizontal: 20.0,
          vertical: 10.0,
        ),
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        itemCount: products.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(right: 10),
            child: ProductCard(product: products[index]),
          );
        },
      ),
    );
  }
}
