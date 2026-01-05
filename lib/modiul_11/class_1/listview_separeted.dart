import 'package:flutter/material.dart';

class ListviewSepareted extends StatelessWidget {
  const ListviewSepareted({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Listview_separated",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        backgroundColor: Colors.orange,
        centerTitle: true,
      ),
      body: ListView.separated(
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.email),
              trailing: Icon(Icons.delete, color: Colors.red),
              title: Text(
                "hmahim951@gmail.com",
                style: TextStyle(fontSize: 25),
              ),
            ),
          );
        },
        separatorBuilder: (context, index) {
          return Divider(thickness: 3, color: Colors.red);
        },
      ),
    );
  }
}
