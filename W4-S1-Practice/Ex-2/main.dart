import 'package:flutter/material.dart';

enum Product {
  dart(
    image: "assets/w4-s1/dart.png",
    title: "Dart",
    description: "The best object language",
  ),
  flutter(
    image: "assets/w4-s1/flutter.png",
    title: "Flutter",
    description: "The best mobile widget library",
  ),
  firebase(
    image: "assets/w4-s1/firebase.png",
    title: "Firebase",
    description: "The best cloud database",
  );

  final String title;
  final String description;
  final String image;

  const Product({
    required this.title,
    required this.description,
    required this.image,
  });
}

void main() {
  runApp(MaterialApp(
      home: Scaffold(
    appBar: AppBar(
      title: Text("Products"),
    ),
    body: Container(
      color: Colors.blue,
      padding: EdgeInsets.all(20),
      child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            HobbyCard(product: Product.dart),
            HobbyCard(product: Product.flutter),
            HobbyCard(product: Product.firebase) //HobbyCard(),
          ]),
    ),
  )));
}

class HobbyCard extends StatelessWidget {
  final Product product;

  const HobbyCard({
    super.key,
    required this.product,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(bottom: 10),
      child: Card(
        color: Colors.white,
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Image(image: AssetImage(product.image), height: 100),
              Text(
                product.title,
                style: TextStyle(fontSize: 40),
              ),
              Text(
                product.description,
              )
            ],
          ),
        ),
      ),
    );
  }
}
