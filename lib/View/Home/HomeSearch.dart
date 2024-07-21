import 'package:flutter/material.dart';


class Searchbar extends StatefulWidget {
  final Function(String) onSearch; // Callback for handling search text changes
  final Function() onTap; // Callback for handling search text changes

  const Searchbar({Key? key, required this.onSearch,required this.onTap}) : super(key: key);

  @override
  State<Searchbar> createState() => _SearchbarState();
}

class _SearchbarState extends State<Searchbar> {
  String _searchText = ''; // Stores the current search text

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 255, 255, 255), // Light grey background
        borderRadius: BorderRadius.circular(30.0), // Rounded corners
      ),
      child: Row(
        children: [
          const Icon(Icons.search), // Search icon
          const SizedBox(width: 8.0), // Spacing between icon and text field
          Expanded(
            child: 
            TextField(
                        decoration: InputDecoration(
                          hintText: 'Tìm xe', // Your desired hint text
                          
                          // contentPadding: const EdgeInsets.all(16.0), // Adjust padding as needed
                        ),
                        onChanged: (text) {
                setState(() {
                  _searchText = text; // Update search text state
                });
                widget.onSearch(text); // Call callback with updated text
              }, // Update search text on input
                      )
          ),
          IconButton(
            icon: const Icon(Icons.close), // Close icon (optional)
            onPressed: () {
              widget.onTap();// Call callback with empty text on clear
            },
          ), // Uncomment this line to include a clear button
        ],
      ),
    );
  }
}
