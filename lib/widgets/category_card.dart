import 'package:flutter/material.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({super.key, required this.name, required this.count});
  final String name;
  final String count;
  // final dynamic icon;
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.only(top: 15),
      decoration: BoxDecoration(
          color: Colors.black, borderRadius: BorderRadius.circular(30)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            name,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
          Text(
            '$count product',
            style: TextStyle(color: Colors.white, fontSize: 10),
          )
        ],
      ),
    );
  }
}
