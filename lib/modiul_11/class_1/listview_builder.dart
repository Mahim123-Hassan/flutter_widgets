import 'package:flutter/material.dart';

class ListviewBuilder extends StatelessWidget {
  const ListviewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Listview_builder",
          style: TextStyle(fontSize: 32, color: Colors.white),
        ),
        backgroundColor: Colors.blue,
      ),
      body: ListView.builder(
        itemCount: 20,
        itemBuilder: (context, index) {
          return Card(
            child: ListTile(
              leading: Icon(Icons.phone),
              trailing: Icon(Icons.delete, color: Colors.red),
              title: Text("Mahim hassan",style: TextStyle(fontSize: 20),),
              subtitle: Text("01719339205",style: TextStyle(fontSize: 17),),
            ),
          );
        },
      ),
    );
  }
}
