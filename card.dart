import 'package:flutter/material.dart';
import 'package:flip_card/flip_card.dart';

class ImageCardData {
  final String imagePath;
  final String content;

  ImageCardData(this.imagePath, this.content);
}

class ImageCardWidget extends StatefulWidget {
  @override
  _ImageCardWidgetState createState() => _ImageCardWidgetState();
}

class _ImageCardWidgetState extends State<ImageCardWidget> {
  List<ImageCardData> imageCards = [
    ImageCardData(
      'lib/assets/youngagement.jpg',
      'Elevate your Engagement with Our Exceptional Catering Services in Neredmet, Secunderabad. Renowned as the finest caterers in Neredmet, we take pride in delivering unparalleled taste and uniqueness in both quality and experience.',
    ),
    ImageCardData(
      'lib/assets/wedding.jpg',
      'With our wedding catering services, you may indulge in the pinnacle of flavor where unrivaled delicious foods rule supreme. For your discerning guests who want a balance between originality and perfect cleanliness standards.',
    ),
    ImageCardData(
      'lib/assets/birthday.webp',
      'For your birthday festivities, we provide you with a varied menu. We provide you with special menus that are designed to fit the party\'s theme. Kids and adults alike adore our birthday catering with a theme because it is so delicious.',
    ),
    ImageCardData(
      'lib/assets/get gather.jpg',
      'We provide you with outstanding elegant dinners. To make the formal dinner an occasion to remember and unforgettable for the company, these adhere to the highest standards of corporate manners and culture.',
    ),
    ImageCardData(
      'lib/assets/house warming.jpg',
      'High quality veg catering options which we provide for our customers for all housewarming occasions. We offer you a wide range of menus which are available for your house warming.',
    ),
    ImageCardData(
      'lib/assets/all events.jpg',
      'Having a bash is great thing to do. You can make your party event more eventful with choicest food which we prepare with the greatest hygiene. This will make your birthday even more special and enjoyable.',
    ),
    // Add more data for additional images
  ];

  int selectedImageIndex = 0;

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Card(
                elevation: 5,
                child: FlipCard(
                  direction: FlipDirection.HORIZONTAL,
                  flipOnTouch: true,
                  front: Container(
                    width: screenWidth - 40,
                    height: screenHeight * 0.6,
                    decoration: BoxDecoration(
                      image: DecorationImage(
  image: AssetImage(imageCards[selectedImageIndex].imagePath),
  fit: BoxFit.fitWidth, // Adjust this to your preference
  alignment: Alignment.center,
),
                    ),
                  ),
                  back: Container(
                    color: Colors.white,
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          imageCards[selectedImageIndex].content,
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Icon(Icons.arrow_back),
                    onPressed: () {
                      if (selectedImageIndex > 0) {
                        setState(() {
                          selectedImageIndex--;
                        });
                      }
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.arrow_forward),
                    onPressed: () {
                      if (selectedImageIndex < imageCards.length - 1) {
                        setState(() {
                          selectedImageIndex++;
                        });
                      }
                    },
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

