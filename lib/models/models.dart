import 'package:flutter/material.dart';
class Event{
  const Event({required this.title, required this.location, required this.time, required this.background, required this.foreground});
  final String title;
  final String location;
  final DateTime time; 
  final Color foreground;
  final Color background;
}

class Stall{
  const Stall({required this.name, required this.location, required this.price, required this.startingDate, required this.endingDate});
  final String name;
  final String location;
  final int price;
  final DateTime startingDate;
  final DateTime endingDate;
}