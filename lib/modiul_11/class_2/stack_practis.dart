import 'package:flutter/material.dart';

import 'citywidget.dart';

class StackPractis extends StatelessWidget {
  const StackPractis({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,

          children: [
            Stack(
              children: [
                Container(height: 200, width: 200, color: Colors.blue),
                Positioned(
                  left: 30,
                  right: 30,
                  top: 60,
                  bottom: 30,
                  child: Container(
                    height: 180,
                    width: 180,
                    color: Colors.green.withOpacity(0.5),
                  ),
                ),
                Positioned(
                  left: 50,
                  bottom: 50,
                  right: 50,
                  top: 80,
                  child: Container(
                    height: 150,
                    width: 150,
                    color: Colors.blueGrey,
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                CircleAvatar(
                  radius: 70,
                  backgroundImage: NetworkImage(
                    "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR8SGd3hrFih4myNDpd3LKAMkKlUGD3sOiHaQ&s",
                  ),
                ),
                Positioned(
                  bottom: 15,
                  right: 5,
                  child: Container(
                    height: 20,
                    width: 20,

                    decoration: BoxDecoration(
                      color: Colors.blue,
                      shape: BoxShape.circle,
                      border: Border.all(color: Colors.white, width: 3),
                    ),
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: [
                  citywidget(
                    img:
                        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR2IJ1xndk8Nu2RZWsv8ylGh8-z4g-hRqYpDQ&s',

                    title: 'Bangladesh',
                    rating: '12.0',
                  ),
                  SizedBox(width: 10),
                  citywidget(
                    img:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT2q8RZCZtUloO_14zCLKtRohmsRewfeyAnIg&s",
                    rating: '5.0',
                    title: "Tangail",
                  ),
                  citywidget(
                    img:
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQjRPWEBNJFWq5mYNuCtIsXL3MntTYWjhR-kg&s",
                    title: "Pankata",
                    rating: "10.0",
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
