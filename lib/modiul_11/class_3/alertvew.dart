import 'dart:math';

import 'package:flutter/material.dart';

class Alertvew extends StatelessWidget {
  const Alertvew({super.key});

  @override
  Widget build(BuildContext context) {
    showAlertDilog() {
      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text("This is title"),
            content: Text("Are you sure"),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Cancle"),
              ),
              ElevatedButton(onPressed: () {}, child: Text("Submit")),
            ],
          );
        },
      );
    }

    showAlertDilogWithIcon() {
      showDialog(
        context: context,
        barrierDismissible: false,
        builder: (context) {
          return AlertDialog(
            title: Text("Installation block"),
            content: Column(
              mainAxisSize: .min,
              children: [
                Row(
                  children: [
                    Icon(Icons.warning, color: Colors.red, size: 48),
                    Text("Warning", style: TextStyle(fontSize: 25)),
                  ],
                ),
                Text(
                  " I love Bangladesh, I am week in English,I Love Allah, Allah Tumi towfik dan koro j ami jeno vlo Muslim hoite peri",
                  style: TextStyle(color: Colors.grey),
                ),
              ],
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("OK"),
              ),
              FilledButton(onPressed: () {}, child: Text("Submit")),
            ],
          );
        },
      );
    }

    showAlertDilogWithsimpledialog() {
      showDialog(
        context: context,
        builder: (context) => SimpleDialog(
          title: Text("Simple dialog"),
          children: [
            SimpleDialogOption(child: Text("Option-1")),
            SimpleDialogOption(child: TextField()),
          ],
        ),
      );
    }

    showBottomSheet() {
      showModalBottomSheet(
        context: context,
        builder: (context) => Container(
          child: Column(
            mainAxisSize: .min,
            children: [
              Text("Chose option", style: TextStyle(fontSize: 18)),
              ListTile(title: Text("Option -1")),
              ListTile(title: Text("Option -1")),
              ListTile(title: Text("Option -1")),
              ListTile(title: Text("Option -1")),
            ],
          ),
        ),
      );
    }

    showCustomDialog() {
      showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Column(
            mainAxisSize: .min,
            children: [
              Image.network(
                "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRJo7n7XXByw40QwFnGILGMq2BxD55PkKl8yA&s",
              ),
              SizedBox(height: 10),
              Text("Costom Dialog"),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: Text("Close"),
              ),
            ],
          ),
        ),
      );
    }

    showLoadingDialog() {
      showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Row(
              children: [
                CircularProgressIndicator(),
                SizedBox(width: 10),
                Text("Loading"),
              ],
            ),
          ),
        ),
      );
    }

    showSnackBar() {
      ScaffoldMessenger.of(
        context,
      ).showSnackBar(SnackBar(content: Text("This is snackbar")));
    }

    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Alert Vew",
          style: TextStyle(fontSize: 25, color: Colors.white),
        ),
        backgroundColor: Colors.greenAccent,
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: .center,
          children: [
            FilledButton(
              onPressed: () {
                showAlertDilog();
              },
              child: Text("Alert Dilog"),
            ),
            ElevatedButton(
              onPressed: () {
                showAlertDilogWithIcon();
              },
              child: Text("Alert Dilog With Icon"),
            ),
            ElevatedButton(
              onPressed: () {
                showAlertDilogWithsimpledialog();
              },
              child: Text("Alert Dilog With Simple dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                showBottomSheet();
              },
              child: Text("Bottom sheet"),
            ),
            ElevatedButton(
              onPressed: () {
                showCustomDialog();
              },
              child: Text("Dialog"),
            ),
            ElevatedButton(
              onPressed: () {
                showLoadingDialog();
              },
              child: Text("Loading"),
            ),
            ElevatedButton(onPressed: (){
              showSnackBar();

            }, child: Text("snackbar"))
          ],
        ),
      ),
    );
  }
}
