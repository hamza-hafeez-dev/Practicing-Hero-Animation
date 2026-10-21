import 'package:flutter/material.dart';
import 'package:flutter_hero_assignment/model_product.dart';
import 'package:flutter_hero_assignment/product_tiles.dart';

class ProductPage extends StatefulWidget {
  const ProductPage({super.key, required this.products});

  final List<ModelProduct> products;

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: widget.products.length,
              itemBuilder: (context, index) {
                return ProductTiles(modelProduct: widget.products[index]);
              },
            ),
          ),
        ],
      ),
    );
  }
}
