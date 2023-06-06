import 'dart:math';
import 'package:flutter/material.dart';

class Item {
  final String imageUrl;
  final String text;

  Item({required this.imageUrl, required this.text});
}

List<Item> generateRandomItems(int count) {
  final Random random = Random();
  final List<String> imagePaths = [
    'assets/images/chinese.png',
   'assets/images/chinese.png',
    // Add more image paths as needed
  ];
  final List<String> texts = [
    'Text 1',
    'Text 2',
    'Text 3',
    // Add more texts as needed
  ];
  final List<Item> items = [];

  for (int i = 0; i < count; i++) {
    final imagePath = imagePaths[random.nextInt(imagePaths.length)];
    final text = texts[random.nextInt(texts.length)];
    items.add(Item(imageUrl: imagePath, text: text));
  }

  return items;
}

class RandomGridView extends StatelessWidget {
  final List<Item> items = generateRandomItems(20); // Generate 20 random items

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Random GridView'),
      ),
      body: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 4, // Number of columns
          crossAxisSpacing: 1.0,
          mainAxisSpacing: 1.0,
        ),
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          final item = items[index];

          return Container(
            child: Column(
              children: [
                Image.asset(item.imageUrl),
                Text(item.text),
              ],
            ),
          );
        },
      ),
    );
  }
}
