import 'package:flutter/material.dart';

class AlbumCard extends StatelessWidget {
  const AlbumCard({super.key, required this.title});
  final String title;
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
            title,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}
