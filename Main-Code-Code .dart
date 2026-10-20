import 'package:flutter/material.dart';
import 'package:flutter_hero_assignment/model_product.dart';
import 'package:flutter_hero_assignment/product_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hero Animations',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final products = <ModelProduct>[
    ModelProduct(
      title: 'Camera',
      subtitle: 'Most High Image (R) Camera Ever',
      price: 25000,
      imageData: 'assest/images/camera.png',
    ),

    ModelProduct(
      title: 'lego Car',
      subtitle: 'Most Impossiable to build Lego Car Ever ',
      price: 5000,
      imageData: 'assest/images/legocard.png',
    ),

    ModelProduct(
      title: 'Mouse',
      subtitle: 'logitech Most Expensive Mouse Ever',
      price: 2000,
      imageData: 'assest/images/camera.png',
    ),

    ModelProduct(
      title: 'Nike Shoes',
      subtitle: 'Best Shoes For Daily Walk',
      price: 8000,
      imageData: 'assest/images/nikeshoes.png',
    ),

    ModelProduct(
      title: 'Rado Watch',
      subtitle: 'Most Expensive Watch Ever Just For Me',
      price: 45000,
      imageData: 'assest/images/radowatch.png',
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            Text(
              'Are You Here For Buy Some Stuff !',
              style: TextStyle(fontSize: 25, fontWeight: .bold),
            ),
            SizedBox(height: 30),
            ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.amber),
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => ProductPage(products: products),
                  ),
                );
              },
              child: Text('Let\'s Go !'),
            ),
          ],
        ),
      ),
    );
  }
}
