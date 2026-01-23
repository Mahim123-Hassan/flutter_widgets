import 'package:flutter/material.dart';

class TravelUi extends StatefulWidget {
  const TravelUi({super.key});

  @override
  State<TravelUi> createState() => _TravelUiState();
}

class _TravelUiState extends State<TravelUi> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
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
          SizedBox(height: 10,),

        ],
      ),
    );
  }
}
