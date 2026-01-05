import 'package:flutter/material.dart';

class GridviewCount extends StatelessWidget {
  const GridviewCount({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gridview_Count",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        backgroundColor: Colors.lightGreenAccent,
      ),
      body: GridView.count(
        crossAxisCount: 3,
        children: List.generate(10, (index) {
          return Card(
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
            color: Colors.red,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              
              children: [
                Icon(Icons.phone, color: Colors.white),
                Text(
                  "Cash Out",
                  style: TextStyle(fontSize: 20, color: Colors.white),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
