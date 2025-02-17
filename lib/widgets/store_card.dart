import 'package:flutter/material.dart';

class StoreCard extends StatelessWidget {
  final String title;
  final String location;
  final String price;
  final String date;
  final String imageUrl;
  final Color backgroundColor;

  const StoreCard({
    Key? key,
    required this.title,
    required this.location,
    required this.price,
    required this.date,
    required this.imageUrl,
    required this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      margin: EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(15),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
            child: Image.network(
              imageUrl,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.location_on, color: Colors.white70, size: 16),
                    SizedBox(width: 4),
                    Text(
                      location,
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.attach_money, color: Colors.white70, size: 16),
                    SizedBox(width: 4),
                    Text(
                      price,
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ],
                ),
                SizedBox(height: 4),
                Row(
                  children: [
                    Icon(Icons.calendar_today, color: Colors.white70, size: 16),
                    SizedBox(width: 4),
                    Text(
                      date,
                      style: TextStyle(fontSize: 14, color: Colors.white70),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}