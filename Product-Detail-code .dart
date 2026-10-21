// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_hero_assignment/model_product.dart';

class ProductDetailPage extends StatefulWidget {
  ProductDetailPage({super.key, required this.product});

  ModelProduct product;

  @override
  State<ProductDetailPage> createState() => _ProductDetailPageState();
}

class _ProductDetailPageState extends State<ProductDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 200,
                child: Hero(
                  tag: widget.product.price,
                  child: Image.asset(
                    widget.product.imageData,
                    fit: BoxFit.contain,
                  ),
                ),
              ),

              SizedBox(height: 20),

              Text(
                widget.product.title,
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),

              SizedBox(height: 20),

              Text(
                widget.product.subtitle,
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.grey,
                ),
              ),

              SizedBox(height: 20),

              Text(
                'PKR ${widget.product.price}',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
