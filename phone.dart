import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Contact Information'),
        ),
        body: Center(
          child: ContactInfo(),
        ),
      ),
    );
  }
}

class ContactInfo extends StatelessWidget {
  final String address =
      '30-1538 Vinayak Nagar\nNeredmet\nHyderabad\nSecunderabad\nTelangana 500047';
  final String phoneNumber = '+91-8019778555'; // Replace with the desired phone number
  final String email = 'caterersanuradha@gmail.com'; // Replace with the desired email address

  void _launchPhone() async {
    final phoneUrl = 'tel:$phoneNumber';
    if (await canLaunch(phoneUrl)) {
      await launch(phoneUrl);
    } else {
      throw 'Could not launch $phoneUrl';
    }
  }

  void _launchEmail() async {
    final emailUrl = 'mailto:$email';
    if (await canLaunch(emailUrl)) {
      await launch(emailUrl);
    } else {
      throw 'Could not launch $emailUrl';
    }
  }

  @override
  Widget build(BuildContext context) {
    List<String> addressLines = address.split('\n');
    List<Widget> addressWidgets = addressLines
        .map((line) => Text(
              line,
              style: TextStyle(fontSize: 16, color: Colors.black),
            ))
        .toList();

    return Container(
      padding: EdgeInsets.all(16), // Add padding
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.blue[50], // Background color for address
            child: Column(
              children: [
                Text(
                  'Address',
                  style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                ),
                Column(
                  children: addressWidgets,
                ),
              ],
            ),
          ),
          SizedBox(height: 10), // Add space between address and phone
          GestureDetector(
            onTap: _launchPhone,
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.green[50], // Background color for phone
              child: Column(
                children: [
                  Text(
                    'Call',
                    style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.phone, color: Colors.green, size: 30), // Phone icon
                      SizedBox(width: 10), // Add some space between the icons
                      Text(
                        phoneNumber,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          SizedBox(height: 10), // Add space between phone and email
          GestureDetector(
            onTap: _launchEmail,
            child: Container(
              padding: EdgeInsets.all(16),
              color: Colors.red[50], // Background color for email
              child: Column(
                children: [
                  Text(
                    'Gmail',
                    style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Icon(Icons.email, color: Colors.red, size: 30), // Email icon
                      SizedBox(width: 10), // Add some space between the icons
                      Text(
                        email,
                        style: TextStyle(fontSize: 16, color: Colors.black),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
