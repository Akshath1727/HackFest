import 'package:flutter/material.dart';
import 'product_card.dart';

class MyApp extends StatelessWidget {
  final List<Product> products = [
    Product(
      name: 'Alovera',
      description: 'Good for Your Skin, helps to remove acne and pimple',
      imageUrl: "https://media.istockphoto.com/id/654264292/photo/alovera-plant.webp?b=1&s=170667a&w=0&k=20&c=NaCa3tcLKWgS3P6CxIuIadVEMePZWwHApFbs1HNi9Xo=",
      price: 200,
    ),
    Product(
      name: 'Bonsai',
      description: 'Small Plants which are great for your Internal design',
      imageUrl: 'https://images.unsplash.com/photo-1599598425947-5202edd56bdb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxzZWFyY2h8NHx8Ym9uc2FpfGVufDB8fDB8fHww&auto=format&fit=crop&w=500&q=60',
      price: 200,
    ),

    // Add more products as needed
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Product List',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Product List'),
        ),
        body: ListView.builder(
          itemCount: products.length,
          itemBuilder: (context, index) {
            final product = products[index];
            return ProductCard(
              name: product.name,
              description: product.description,
              imageUrl: product.imageUrl,
              price: product.price,
            );
          },
        ),
      ),
    );
  }
}

class Product {
  final String name;
  final String description;
  final String imageUrl;
  final double price;

  const Product({
    required this.name,
    required this.description,
    required this.imageUrl,
    required this.price,
  });
}
