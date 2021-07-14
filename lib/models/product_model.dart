import 'package:equatable/equatable.dart';

class Product extends Equatable {
  final String name;
  final String category;
  final String imageUrl;
  final double price;
  final bool isRecommended;
  final bool isPopular;

  const Product({
    required this.name,
    required this.category,
    required this.imageUrl,
    required this.price,
    required this.isPopular,
    required this.isRecommended,
  });

  @override
  // TODO: implement props
  List<Object?> get props => [
        name,
        category,
        imageUrl,
        price,
        isPopular,
        isRecommended,
      ];

  static List<Product> products = [
    Product(
      name: 'Mango Juice',
      category: 'juice',
      imageUrl:
          'https://images.unsplash.com/photo-1534353473418-4cfa6c56fd38?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
      price: 2.9,
      isPopular: false,
      isRecommended: true,
    ),
    Product(
      name: 'Lemonde',
      category: 'juice',
      imageUrl:
          'https://images.unsplash.com/photo-1584587727565-a486d45d58b4?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=802&q=80',
      price: 3.0,
      isPopular: true,
      isRecommended: true,
    ),
    Product(
      name: 'Orange Juice',
      category: 'juice',
      imageUrl:
          'https://images.unsplash.com/photo-1577680716097-9a565ddc2007?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=2434&q=80',
      price: 5.9,
      isPopular: true,
      isRecommended: true,
    ),
    Product(
      name: 'Strawberry Juice',
      category: 'juice',
      imageUrl:
          'https://images.unsplash.com/photo-1578224709521-ecee303b012f?ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80',
      price: 9.9,
      isPopular: true,
      isRecommended: true,
    ),
  ];
}
