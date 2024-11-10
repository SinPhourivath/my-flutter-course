import 'package:flutter/material.dart';

List<String> images = [
  "assets/w4-s3/bird.jpg",
  "assets/w4-s3/bird2.jpg",
  "assets/w4-s3/insect.jpg",
  "assets/w4-s3/girl.jpg",
  "assets/w4-s3/man.jpg",
];

void main() => runApp(MaterialApp(
      // This line hide the debug banner
      debugShowCheckedModeBanner: false, // Why this line ? Can you explain it ?
      home: HomeImage(),
    ));

class HomeImage extends StatefulWidget {
  const HomeImage({
    super.key,
  });

  @override
  State<HomeImage> createState() => _HomeImageState();
}

class _HomeImageState extends State<HomeImage> {
  int currentImageIndex = 0;

  void nextImage() {
    setState(() {
      currentImageIndex = (currentImageIndex + 1) % images.length;
    });
  }

  void previousImage() {
    setState(() {
      currentImageIndex = (currentImageIndex - 1) % images.length;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.green[50],
        appBar: AppBar(
          backgroundColor: Colors.green[400],
          title: const Text('Image viewer'),
          actions: <Widget>[
            IconButton(
              icon: const Icon(Icons.navigate_before),
              tooltip: 'Go to the previous image',
              onPressed: previousImage,
            ),
            IconButton(
              icon: const Icon(Icons.navigate_next),
              tooltip: 'Go to the next image',
              onPressed: nextImage,
            ),
          ],
        ),
        body: Image.asset(images[currentImageIndex]));
  }
}
