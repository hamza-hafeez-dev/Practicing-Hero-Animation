import 'package:flutter/material.dart';
import 'package:flutter_hero_assignment/model_product.dart';
import 'package:flutter_hero_assignment/product-detailpage.dart';

class ProductTiles extends StatefulWidget {
  ProductTiles({super.key, required this.modelProduct});

  ModelProduct modelProduct;

  @override
  State<ProductTiles> createState() => _ProductTilesState();
}

class _ProductTilesState extends State<ProductTiles> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) =>
                ProductDetailPage(product: widget.modelProduct),
          ),
        );
      },
      child: Hero(
        tag: widget.modelProduct.price,
        child: ListTile(
          hoverColor: Colors.grey,
          leading: CircleAvatar(
            backgroundImage: AssetImage(widget.modelProduct.imageData),
          ),

          title: Text(widget.modelProduct.title),
          titleTextStyle: TextStyle(fontSize: 18, fontWeight: .bold),
          selectedTileColor: Colors.grey.shade300,

          dense: true,

          subtitle: Text(widget.modelProduct.subtitle),
          subtitleTextStyle: TextStyle(
            fontSize: 15,
            color: Colors.grey.shade800,
          ),

          trailing: Text(widget.modelProduct.price.toString()),
        ),
      ),
    );
  }
}
