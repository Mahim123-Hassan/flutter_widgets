import 'package:flutter/material.dart';

class citywidget extends StatelessWidget {
  final String img, title, rating;

  const citywidget({
    super.key,
    required this.img,
    required this.title,
    required this.rating,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200,
          width: 300,
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Image.network(img),
        ),
        Positioned(
          bottom: 15,
          right: 50,
          child: Text(
            title,
            style: TextStyle(
              color: Colors.white,
              fontSize: 25,
              //  fontWeight: FontWeight.bold,
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},
          child: Text(('⭐$rating'), style: TextStyle(color: Colors.orange)),
        ),
      ],
    );
  }
}
