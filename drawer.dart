import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class ImageSwiper extends StatelessWidget {
  final List<String> images = [
    'lib/assets/banner-1.jpg',
    'lib/assets/banner-2.jpg',
    'lib/assets/banner-3.jpg',
    
  ];

  @override
  Widget build(BuildContext context) {
    return CarouselSlider(
      items: images.map((image) {
        return Builder(
          builder: (BuildContext context) {
            return Container(
              width: MediaQuery.of(context).size.width,
              // margin: EdgeInsets.symmetric(horizontal: 5.0),
              child: Image.asset(
                image,
                fit: BoxFit.cover,
              ),
            );
          },
        );
      }).toList(),
      options: CarouselOptions(
        height: 100,
        autoPlay: true,
        enlargeCenterPage: true,
        aspectRatio: 16 / 9,
      ),
    );
  }
}

