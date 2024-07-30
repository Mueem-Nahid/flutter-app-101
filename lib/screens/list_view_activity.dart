
import 'package:flutter/material.dart';

import '../components/snack_bar.dart';

class MyListViewActivity extends StatelessWidget {
  final listItems = [
    {
      'id': 1,
      'image':
      'https://cdn.britannica.com/49/182849-050-4C7FE34F/scene-Iron-Man.jpg',
      'title': 'Iron man'
    },
    {
      'id': 2,
      'image':
      'https://www.superherotoystore.com/cdn/shop/articles/Untitled_design_1080x.png?v=1641978925',
      'title': 'Bat man'
    },
    {
      'id': 3,
      'image':
      'https://static1.cbrimages.com/wordpress/wp-content/uploads/2024/04/wonder-woman-ai-art-header.jpg',
      'title': 'Wonder Woman'
    },
    {
      'id': 4,
      'image':
      'https://jafcomics.com/cdn/shop/products/c56aef93-4ee8-43f5-9e14-8d95b29f4242.jpg?v=1674402657',
      'title': 'Super girl'
    },
    {
      'id': 5,
      'image':
      'https://loudandclearreviews.com/wp-content/uploads/2024/01/justice-league-crisis.webp',
      'title': 'Flash'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('List view'),
      ),
      body: GridView.builder(
        // ListView || GridView
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 1, childAspectRatio: 1.2),
          itemCount: listItems.length,
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                mySnackBar(listItems[index]['title'], context);
              },
              child: Container(
                margin: EdgeInsets.all(10),
                width: double.infinity,
                height: 220,
                child: Image.network(
                  listItems[index]['image'] as String,
                  fit: BoxFit.cover,
                ),
              ),
            );
          }),
    );
  }
}