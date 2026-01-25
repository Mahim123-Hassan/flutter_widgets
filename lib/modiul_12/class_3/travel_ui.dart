import 'package:flutter/material.dart';

import 'cityWidget.dart';

class TravelUi extends StatefulWidget {
  const TravelUi({super.key});

  @override
  State<TravelUi> createState() => _TravelUiState();
}

class _TravelUiState extends State<TravelUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(

        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.network(
                  "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSpPMQoQEdI7XLvMXec1Yx_44fIobArdaJ3uA&s",
                  height: 250,
                  fit: BoxFit.cover,
                  width: double.infinity,
                ),
                Container(height: 250, color: Colors.black.withOpacity(0.4)),
                Positioned(
                  left: 20,
                  bottom: 50,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Explore The World",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 23,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Container(
                        width: 300,
                        child: TextFormField(
                          decoration: InputDecoration(
                            hintText: "Search destination...",
                            filled: true,
                            fillColor: Colors.white,
                            prefixIcon: Icon(Icons.search),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Top Destination",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            // Container(height: 250, color: Colors.black.withOpacity(0.4)),
            SizedBox(
              height: 300,
              width: 500,
              child: GridView.count(
                physics: NeverScrollableScrollPhysics(),
                padding: .symmetric(vertical: 5, horizontal: 5),
                childAspectRatio: 1.4,
                crossAxisCount: 2,
                children: List.generate(4, (context) {
                  return cityWidget(
                    img:
                        "https://www.usnews.com/object/image/00000159-83ce-d8ce-a17b-e3df36610000/New%20York%20City%2C%20New%20York?size=responsiveFlow1280&update-time=&format=webp",
                    rating: "0.5",
                    title: "Bangladesh",
                  );
                }),
              ),
            ),
        
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Trending Packages",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),

          ],
        ),
      ),
    );
  }
}
