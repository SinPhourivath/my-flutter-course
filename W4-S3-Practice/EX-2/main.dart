import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.blue,
          title: const Text("Favorite cards"),
        ),
        body: Column(
          children: [
            BestCard(),
            BestCard(),
            BestCard(),
          ],
        ),
      ),
    ));

class BestCard extends StatefulWidget {
  const BestCard({
    super.key,
  });

  @override
  State<BestCard> createState() => _BestCardState();
}

class _BestCardState extends State<BestCard> {
  bool isFavorite = false;

  void _toggleFavorite() {
    setState(() {
      isFavorite = !isFavorite;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        border: Border(
          bottom: BorderSide(width: .5, color: Colors.grey),
        ),
      ),
      padding: const EdgeInsets.fromLTRB(10, 20, 10, 20),
      child: Row(
        // No need mainAxisAlignment. I gusses it's because we are using Expanded?
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Expanded(
            // flex: 7,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'title',
                  style: TextStyle(
                      color: Colors.blue, fontWeight: FontWeight.w800),
                ),
                SizedBox(height: 10.0),
                Text('description')
              ],
            ),
          ),
          IconButton(
              onPressed: _toggleFavorite,
              icon: Icon(
                  isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
                  color: isFavorite ? Colors.red : Colors.grey))
        ],
      ),
    );
  }
}
