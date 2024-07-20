import 'package:flutter/material.dart';
import 'package:gogogo/View/Home/Home.dart';

class XeTab extends StatefulWidget {
  
  const XeTab({Key? key}) : super(key: key);

  @override
  State<XeTab> createState() => _XeTabState();
}

class _XeTabState extends State<XeTab> {
  int _selectedIndex = 0; // To keep track of selected index (optional)

  @override
  Widget build(BuildContext context) {
    return Expanded(child:SingleChildScrollView(
      // Customize the container appearance (e.g., color, padding)
      scrollDirection: Axis.vertical,
      child: Column(
      children: List.generate(10, (index)=>
       Container(
    width: double.infinity, // Set width to full screen
    height: 200.0, // Set height to 200

    // Use Row for horizontal layout
    child: Row(
      children: [
        // Image container
        Container(
          width: 100.0, // Adjust image width as needed
          height: 200.0, // Set image height to match container
          child: Image.asset(
            'assets/images/bike.png', // Replace with your image path
            fit: BoxFit.cover, // Adjust image fit (optional)
          ),
        ),

        // Expanded container for title and description (middle)
        Expanded(
          child: Padding(
            padding: const EdgeInsets.all(8.0), // Add padding
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // Center content vertically
              crossAxisAlignment: CrossAxisAlignment.start, // Align text to the left
              children: [
                Text(
                  'Title of the item',
                  style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold), // Adjust title style
                ),
                Text(
                  'Description of the item. This can span multiple lines.',
                  maxLines: 2, // Limit description lines (optional)
                  overflow: TextOverflow.ellipsis, // Add ellipsis (...) if text overflows
                ),
              ],
            ),
          ),
        ),

        // Container for price (right)
        Container(
          padding: const EdgeInsets.all(8.0), // Add padding
          child: Text(
            '\$100.00', // Replace with your price
            style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold), // Adjust price style
          ),
        ),
      ],
    ),
  )
      
      ),
    ),
    ));
  }
}
