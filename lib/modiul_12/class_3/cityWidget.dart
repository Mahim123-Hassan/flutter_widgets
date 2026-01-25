import 'package:flutter/material.dart';

class cityWidget extends StatelessWidget {
  final String img, title, rating;

  const cityWidget({
    super.key,
    required this.img,
    required this.rating,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          clipBehavior: .hardEdge,
            child: Image.network(img,fit: .fill,)),
        Positioned(
          bottom: 15,
          right: 80,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.red,
              fontSize: 17,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
      ],
    );
  }
}
