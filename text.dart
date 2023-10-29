import 'package:flutter/material.dart';

class MyApp3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Text Scrolling Example'),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // Add a side heading
              Padding(
  padding: EdgeInsets.all(16.0),
  child: Text(
    'About Our Journey',
    style: TextStyle(
      fontSize: 24.0,
      fontWeight: FontWeight.bold,
      color: Colors.deepOrange,
      fontStyle: FontStyle.italic, // Set the text style to italic
      // Adjust the underline thickness
      letterSpacing: 1.5, // Adjust the spacing between characters
      // You can add other text styles as needed
    ),
  ),
),


              // Add your subheading
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'Best food catering service in Hyderabad',
                  style: TextStyle(
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold, // Make it bold for a subheading
                  ),
                ),
              ),
              // Add the rest of your text
              Padding(
                padding: EdgeInsets.all(16.0),
                child: Text(
                  'The best caterers in Hyderabad and Secunderabad are Anuradha caterers. We are renowned caterers for our prompt, passionate service and sense that our family and friends are eating our meals and that their complete happiness is more essential. for house parties or celebrations, domestic catering for birthdays, and catering for traditional holidays with a highly traditional cuisine. Due to the confidence our customers have in the quality and consistency of our meals, Anuradha Catering is now regarded as one of Hyderabad best caterers and a trusted name in the business. Count on us to present you with optimal choices for your exceptional menu, along with impeccable service that perfectly complements your event.',
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              // Add more text or widgets here
            ],
          ),
        ),
      ),
    );
  }
}
