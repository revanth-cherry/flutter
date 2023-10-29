import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

import 'package:path_provider/path_provider.dart'; 
import 'dart:io';
import 'package:flutter/services.dart';
import 'package:open_file/open_file.dart';


class PopupMenuApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Food Menu'),
        ),
        body: MyHomePage(),
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String? selectedRiceItem;
  String? selectedRotiItem;
  String? selectedRecipeItem;
  String? selectedBreakfastItem;
  String? selectedSouthIndianRecipeItem;
  String? selectedSouthIndianFryItem;
  String? selectedSouthIndianLiquidItem;
  String? selectedChaatItem;
  String? selectedFruitItem;
  String? selectedItalianItem;
  String? selectedChineseCounter;
  String? selectedPaanCounter;
  String? selectedSouthIndianDesserts;
  String? selectedSpecialSweets;
  String? selectedIceCream;
  String? selectedWelcomeDrinks;
  String? selectedStarters;
  String? selectedSoups;
  String? selectedPachadi;
  String? selectedPowders;
  String? selectedPapads;
  List<String> selectedItems = [];

  List<String> riceItems = [
    'Gutti Vankaya Biryani',
    'Paneer Biryani',
    'Pansakaya Biryani',
    'Vegetable Dum Biryani',
    'Aloo Gobi Dum Biryani',
    'Vegetable Pulao',
    'Peas Pulao',
    'Dum Bagara',
    'Jeera Rice',
    'Mumbai Pulao',
    'White Rice',
    'Pulihora',
    'Avakaya Vadi Pusa Rice',
    'Coconut Rice',
    'Tomato Rice',
    'Curd Rice',
    'Sambar Rice',
  ];

  List<String> rotiItems = [
    'Puri',
    'Masala Puri',
    'Palak Puri',
    'Flavored Puri',
    'Beetroot Puri',
    'Kothmir Puri',
    'Mini Puri',
    'Rumali Roti',
    'Tandoori Roti',
    'Parota',
    'Dil Roti',
    'Phulka or Chapati',
  ];

  List<String> recipeItems = [
    'Paneer Kolhapuri Curry',
    'Rajma Masala',
    'Chole Masala',
    'Paneer Tikka Masala',
    'Malai Kofta',
    'Kadai Paneer',
    'Paneer Makhanwala',
    'Matar Paneer',
    'Dum Aloo Curry',
    'Mixed Vegetable Curry',
    'Kala Chana Masala',
    'Paneer Butter Masala',
    'Methi Chaman',
    'Mirchi Ka Salan',
    'Paneer Do Pyaza',
    'Paneer Capsicum Masala',
    'Palak Paneer',
    'Veg Jalfrezi',
    'Methi Malai Paneer',
    'Dal Fry',
    'Dal Makhani',
  ];

  List<String> breakfastItems = [
    'Idli',
    'Vada',
    'Pongal',
    'Tomato Bath',
    'Chutneys',
    'Sambar',
    'Dosa',
    'Samiya Bath',
    'Mysore Bajji',
    'Puri',
    'Aloo Sabji',
    'Pineapple Kesari',
    'Uttapam',
    'Pasarattu',
    'Chilla',
  ];

  List<String> southIndianRecipeItems = [
    'Gutti Vankaya Curry',
    'Dondakaya Karam Patti',
    'Vankaya Karam Patti',
    'Capsicum Karam Patti',
    'Aloo Matar Tomato Curry',
    'Aloo Methi Curry',
    'Tomato Curry',
    'Aloo Gobi Tomato Curry',
    'Erra Gapatti Ava Patti',
    'Kanda Bachai Ava Patti',
    'Panasa Puttu Ava Patti',
    'Aloo Vankaya Tomato Curry',
    'Bandi Karam Patti',
    'Munakkaya Kaju Tomato',
    'Cabbage Curry',
  ];

  List<String> southIndianFryItems = [
    'Bhindi Fry',
    'Dondakaya Fry',
    'Aloo Fry',
    'Aloo 65',
    'Chayote Squash Fry',
    'Beans Coconut Fry',
    'Carrot Coconut Fry',
    'Beetroot Coconut Fry',
    'Cabbage Pakodi',
    'Vankaya Pakodi',
  ];

  List<String> southIndianLiquidItems = [
    'Palak Pappu',
    'Gongura Pappu',
    'Tomato Pappu',
    'Mango Pappu',
    'Chukka Kura Pappu',
    'Gongura Vellapappu',
    'Mudha Pappu',
    'Dosakaya Pappu',
    'Sambar',
    'Drumstick Sambar',
    'Madras Sambar',
    'Mukkala Pulusu',
    'Gummadi Sambar',
    'Dalcha Sambar',
    'Pappu Charu',
    'Uluva Charu',
    'Pachai Pulusu',
    'Miryala Rasam',
    'Pepper Rasam',
    'Kokum Rasam',
  ];

  List<String> chaatItems = [
    'Pani Puri',
    'Pav Bhaji',
    'Bhel Puri',
    'Masala Puri',
    'Dahi Puri',
    'Aloo Tikki',
    'Papdi Chaat',
    'Dahi Vada',
    'Ragda Cutlet',
    'Masala Puri',
  ];

  List<String> fruitItems = [
    'Apple',
    'Papaya',
    'Watermelon',
    'Kiwi',
    'Dragon Fruit',
    'Grapes',
    'Dates',
    'Musk Melon',
    'Pineapple',
    'Guava',
  ];

  List<String> italianItems = [
    'White Pasta',
    'Red Pasta',
    'Garlic Pasta',
    'Pizza',
    'Burger',
    'Garlic Sandwich',
    'Momos',
  ];
  List<String>  ChineseCounter = [
     'Veg Fried Rice',
     'Schezwan Fried Rice',
     'Schezwan Fried Rice',
     'Garlic Fried Rice',
     'Paneer Fried Rice',
     'Mixed Fried Rice',
     'Veg Noodles',
     'Hakka Noodles',
     'American Chop Suey Noodles',
     'Schezwan Noodles',
     'Veg Manchurian',
     'Gobi Manchurian',
     'Baby Corn Manchurian',
     'Schezwan Manchurian',
     'Garlic Manchurian',
     'Aloo 65',
     'Paneer 65',
  ];
  List<String> PaanCounter = [
    'Sweet Paan',
  ];
  List<String> SouthIndianDesserts = [
    'Puran Poli',
    'Bobbatlu',
    'Badusha',
    'Madatha Kaja',
    'Laddu',
    'Semiya Payasam',
    'Sago Payasam',
    'Pal Payasam',
    'Rava Kesari',
    'Gummadi Kaya Halwa',
  ];
  List<String> SpecialSweets = [
     'Gulab Jamun',
     'Kala Jamun',
     'Angoor Jamun',
     'Jalebi',
     'Tava Sweet',
     'Carrot Halwa',
     'Kadhu Ka Kheer',
     'Rasgulla',
     'Rasmalai',
     'Sonpapdi',
     'Kalakand',
     'Barfi',
     'Kaju Katli',
     'Rajbhog',
     'Rabri',
     'Kova Rabri',
     'Angoor Matakka Rabri',
     'Kaju Sandwich',
     'Cham Cham',
     'Fruit Salad',
     'Double Ka Meetha',
  ];
  List<String> IceCream = [
    'Vanilla Ice Cream',
    'Butterscotch Ice Cream',
    'Strawberry Ice Cream',
    'Honeymoon Delight',
    'Chocolate Ice Cream',
  ];
  List<String> WelcomeDrinks = [
     'Watermelon Juice',
     'Hot Badam Milk',
     'Fruit Punch',
     'Hot Rose Milkshake',
     'Mocktail Juice',
     'Grapes Juice',
     'Lassi',
     'Banana Milkshake',
  ];
  List<String> Starters = [
     'Paneer Tikki',
     'Baby Corn Manchurian',
     'Hara Bhara Kebab',
     'Spring Roll',
     'Corn Samosa',
     'Veg Lollipop',
     'Veg Manchurian',
     'Gobi 65',
     'Aloo Tikki',
     'Cheese Ball',
  ];
  List<String> Soups = [
    'Tomato Soup',
    'Sweet Corn Soup',
    'Schezwan Soup',
    'Manchow Soup',
    'Ginger Soup',
  ];
  List<String> Pachadi = [
    'Gongura Pachadi',
    'Dosakaya Pachadi',
    'Pudina Pachadi',
    'Tomato Pachadi'
    'Mango Pachadi'
    'Pandu Mirchi Pachadi',
    'Beerakaya Pachadi',
    'Gummadi Pachadi',
    'Avakaya Pachadi',
    'Nimmakaya Pachadi',
    'Royyala Pachadi',
    'Vankaya Pachadi',
  ];
  List<String> Powders = [
    'KandiPodi',
    'Karam Podi',
    'Karivepaku Podi'
    'Pudina Podi'
    'Paruppu Podi'
  ]; 
  List<String> Papads = [
    'Papad',
    'Fryums',
    'Chilli Mirchi',
    'Chitti Vadayalu',
    'Flavored Fryums',
  ];

  void downloadAllItems() async {
  // Create a dictionary to store the selected items
  Map<String, String?> selectedItemsDict = {
    'Rice Item': selectedRiceItem,
    'Roti Item': selectedRotiItem,
    'North Indian Recipe': selectedRecipeItem,
    'Breakfast Item': selectedBreakfastItem,
    'South Indian Recipe': selectedSouthIndianRecipeItem,
    'South Indian Fry Curry': selectedSouthIndianFryItem,
    'South Indian Liquid Item': selectedSouthIndianLiquidItem,
    'Chaat Item': selectedChaatItem,
    'Fruit Item': selectedFruitItem,
    'Italian Item': selectedItalianItem,
    'ChineseCounter': selectedChineseCounter,
    'PaanCounter': selectedPaanCounter,
    'SouthIndianDesserts': selectedSouthIndianDesserts,
    'SpecialSweets': selectedSpecialSweets,
    'IceCream': selectedIceCream,
    'WelcomeDrinks': selectedWelcomeDrinks,
    'Starters': selectedStarters,
    'Soups': selectedSoups,
    'Pachadi': selectedPachadi,
    'Powders': selectedPowders,
    'Papads': selectedPapads,
  };

  // Filter out items with null values (items that were not selected)
  selectedItemsDict.removeWhere((key, value) => value == null);

  // Convert the dictionary to a text
  String content = '';
  selectedItemsDict.forEach((key, value) {
    content += '$key: $value\n';
  });

  // Get the directory for storing files on the device
  Directory appDocDir = await getApplicationDocumentsDirectory();
  String filePath = '${appDocDir.path}/selectedItems.txt';

  // Create the file and write the content to it
  File file = File(filePath);
  await file.writeAsString(content);

  // Open the file for download
  await OpenFile.open(filePath);
}




  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a Rice Item:',
          ),
          value: selectedRiceItem,
          onChanged: (String? newValue) {
            setState(() {
              selectedRiceItem = newValue;
            });
          },
          items: riceItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a Roti Item:',
          ),
          value: selectedRotiItem,
          onChanged: (String? newValue) {
            setState(() {
              selectedRotiItem = newValue;
            });
          },
          items: rotiItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a North Indian Recipe:',
          ),
          value: selectedRecipeItem,
          onChanged: (String? newValue) {
            setState(() {
              selectedRecipeItem = newValue;
            });
          },
          items: recipeItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a Breakfast Item:',
          ),
          value: selectedBreakfastItem,
          onChanged: (String? newValue) {
            setState(() {
              selectedBreakfastItem = newValue;
            });
          },
          items: breakfastItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a South Indian Recipe:',
          ),
          value: selectedSouthIndianRecipeItem,
          onChanged: (String? newValue) {
            setState(() {
              selectedSouthIndianRecipeItem = newValue;
            });
          },
          items: southIndianRecipeItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a South Indian Fry Curry:',
          ),
          value: selectedSouthIndianFryItem,
          onChanged: (String? newValue) {
            setState(() {
              selectedSouthIndianFryItem = newValue;
            });
          },
          items: southIndianFryItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a South Indian Liquid Item:',
          ),
          value: selectedSouthIndianLiquidItem,
          onChanged: (String? newValue) {
            setState(() {
              selectedSouthIndianLiquidItem = newValue;
            });
          },
          items: southIndianLiquidItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a Chaat Item:',
          ),
          value: selectedChaatItem,
          onChanged: (String? newValue) {
            setState(() {
              selectedChaatItem = newValue;
            });
          },
          items: chaatItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a Fruit Item:',
          ),
          value: selectedFruitItem,
          onChanged: (String? newValue) {
            setState(() {
              selectedFruitItem = newValue;
            });
          },
          items: fruitItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select an Italian Item:',
          ),
          value: selectedItalianItem,
          onChanged: (String? newValue) {
            setState(() {
              selectedItalianItem = newValue;
            });
          },
          items: italianItems.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a ChineseCounter:',
          ),
          value: selectedChineseCounter,
          onChanged: (String? newValue) {
            setState(() {
              selectedChineseCounter = newValue;
            });
          },
          items: ChineseCounter.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a PaanCounter:',
          ),
          value: selectedPaanCounter,
          onChanged: (String? newValue) {
            setState(() {
              selectedPaanCounter = newValue;
            });
          },
          items: PaanCounter.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a SouthIndianDesserts:',
          ),
          value: selectedSouthIndianDesserts,
          onChanged: (String? newValue) {
            setState(() {
              selectedSouthIndianDesserts = newValue;
            });
          },
          items: SouthIndianDesserts.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a SpecialSweets:',
          ),
          value: selectedSpecialSweets,
          onChanged: (String? newValue) {
            setState(() {
              selectedSpecialSweets = newValue;
            });
          },
          items: SpecialSweets.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a IceCream:',
          ),
          value: selectedIceCream,
          onChanged: (String? newValue) {
            setState(() {
              selectedIceCream = newValue;
            });
          },
          items: IceCream.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a WelcomeDrinks:',
          ),
          value: selectedWelcomeDrinks,
          onChanged: (String? newValue) {
            setState(() {
              selectedWelcomeDrinks = newValue;
            });
          },
          items: WelcomeDrinks.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a Starters:',
          ),
          value: selectedStarters,
          onChanged: (String? newValue) {
            setState(() {
              selectedStarters = newValue;
            });
          },
          items: Starters.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a Soups:',
          ),
          value: selectedSoups,
          onChanged: (String? newValue) {
            setState(() {
              selectedSoups = newValue;
            });
          },
          items: Soups.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a Pachadi:',
          ),
          value: selectedPachadi,
          onChanged: (String? newValue) {
            setState(() {
              selectedPachadi = newValue;
            });
          },
          items: Pachadi.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a Powders:',
          ),
          value: selectedPowders,
          onChanged: (String? newValue) {
            setState(() {
              selectedPowders = newValue;
            });
          },
          items: Powders.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        DropdownButtonFormField<String>(
          decoration: InputDecoration(
            labelText: 'Select a Papads:',
          ),
          value: selectedPapads,
          onChanged: (String? newValue) {
            setState(() {
              selectedPapads = newValue;
            });
          },
          items: Papads.map((String item) {
            return DropdownMenuItem<String>(
              value: item,
              child: Text(item),
            );
          }).toList(),
        ),
        SizedBox(height: 20.0),
        ElevatedButton(
            onPressed: downloadAllItems,
            child: Text('Download All Selected Items'),
        ),
      ],
    )
  );
  }
}
