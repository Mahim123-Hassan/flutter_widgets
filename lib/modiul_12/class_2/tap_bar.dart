import 'package:flutter/material.dart';

class TapBar extends StatelessWidget {
  const TapBar({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          title: Text("Tab"),
          backgroundColor: Colors.teal,

          bottom: TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.settings), text: "Setting"),
              Tab(icon: Icon(Icons.star), text: "Star"),
            ],
          ),
        ),
      ),
    );
  }
}
