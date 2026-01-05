import 'package:flutter/material.dart';

class GridviewBuilder extends StatefulWidget {
  const GridviewBuilder({super.key});

  @override
  State<GridviewBuilder> createState() => _GridviewBuilderState();
}

class _GridviewBuilderState extends State<GridviewBuilder> {
  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Gridview_builder",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: GridView.builder(
        itemCount: 30,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          crossAxisSpacing: 3,
          mainAxisSpacing: 3
        ),
        itemBuilder: (context, index) {
          return Container(
            width: 120,
            color: Colors.blue[100 * ((index % 8) + 1)],
            child: Center(child: Text("Item=$index")),
          );
        },
      ),
    );
  }
}
