import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce_block/models/category_model.dart';
import 'package:ecommerce_block/models/models.dart';
import 'package:flutter/material.dart';
import '../widgets/widgets.dart';

class HomePage extends StatelessWidget {
  static const routeName = '/';

  static Route route() {
    return MaterialPageRoute(
      settings: RouteSettings(name: routeName),
      builder: (_) => HomePage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar('Home'),
      bottomNavigationBar: CustomBottomAppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: CarouselSlider(
                options: CarouselOptions(
                  aspectRatio: 1.5,
                  viewportFraction: 0.9,
                  enlargeCenterPage: true,
                  enlargeStrategy: CenterPageEnlargeStrategy.height,
                  autoPlay: true,
                ),
                items: Category.categories
                    .map((category) => HeroCarousel(category: category))
                    .toList(),
              ),
            ),
            SectionTitle('Recommended'),
            ProductCarrousel(
              products: Product.products
                  .where((product) => product.isRecommended)
                  .toList(),
            ),
            SectionTitle('Most Popular'),
            ProductCarrousel(
              products: Product.products
                  .where((product) => product.isPopular == true)
                  .toList(),
            ),
          ],
        ),
      ),
    );
  }
}
