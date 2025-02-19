import './store_card.dart';
import 'package:flutter/material.dart';

class StoreSlider extends StatelessWidget {
  final List<Map<String, dynamic>> foodItems;

  const StoreSlider({Key? key, required this.foodItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: foodItems.map((food) {
          return StoreCard(
            title: food["title"],
            location: food["location"],
            price: food["price"],
            date: food["date"],
            imageUrl: food["imageUrl"],
            backgroundColor: food["color"],
          );
        }).toList(),
      ),
    );
  }
}