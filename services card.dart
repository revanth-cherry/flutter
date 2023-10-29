import 'package:flutter/material.dart';

class MyApp5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Services'),
        ),
        body: Center(
          child: Container(
            width: 300.0, // Set the width of the container
            decoration: BoxDecoration(
              color: Colors.white, // Set the background color
              border: Border.all(color: Colors.grey), // Add a border
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start, // Align children at the top
              crossAxisAlignment: CrossAxisAlignment.start, // Align children at the left
              children: <Widget>[
                Image.asset('lib/assets/youngagement.jpg'), // Replace with your image path
                Padding(
                  padding: EdgeInsets.only(left: 16.0, right: 16.0, top: 16.0, bottom: 16.0),
                  child: Text(
                    'Elevate your Engagement with Our Exceptional Catering Services in Neredmet, Secunderabad. Renowned as the finest caterers in Neredmet, we take pride in delivering unparalleled taste and uniqueness in both quality and experience.',
                    style: TextStyle(fontSize: 20.0),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
