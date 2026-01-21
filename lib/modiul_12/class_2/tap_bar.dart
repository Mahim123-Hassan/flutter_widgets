import 'package:flutter/material.dart';

import '../../modiul_11/class_3/alertvew.dart';

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
            indicatorColor: Colors.amber,
            indicatorWeight: 4,
            indicatorPadding: EdgeInsets.all(5),
            indicator: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(12),
            ),

            tabs: [
              Tab(icon: Icon(Icons.home), text: "Home"),
              Tab(icon: Icon(Icons.settings), text: "Setting"),
              Tab(icon: Icon(Icons.star), text: "Star"),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            Container(
              height: 200,
              color: Colors.red,
              child: Center(
                child: Text(
                  "Home",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 200,
              color: Colors.blue,
              child: Center(
                child: Text(
                  "setting",
                  style: TextStyle(fontSize: 40, color: Colors.white),
                ),
              ),
            ),
            Container(
              height: 200,
              color: Colors.greenAccent,
              child: Center(
                child: Text("Star", style: TextStyle(fontSize: 40)),
              ),
            ),
          ],
        ),

        drawer: Drawer(
          child: ListView(
            children: [
              DrawerHeader(
                child: Column(
                  children: [
                    CircleAvatar(
                      radius: 40,

                      backgroundImage: NetworkImage(
                        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR_me7OEPZ1Bl8fASvnnH8bXaKL2Sx-ORRkDg&s",
                      ),
                    ),
                    Text(
                      "Mahim Hassan",

                      style: TextStyle(
                        fontWeight: FontWeight.w700,
                        fontSize: 20,
                      ),
                    ),
                    Text(
                      "hmahim951@gmail.come",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
              ListTile(
                title: Text(
                  "Item-1",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Alertvew()),
                  );
                },
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Item-2",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
                onTap: (){
                  Navigator.pushNamed(context, "/home");
                },
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Item-3",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
              Divider(),
              ListTile(
                title: Text(
                  "Item-4",
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
