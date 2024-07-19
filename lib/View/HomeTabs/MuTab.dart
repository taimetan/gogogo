import 'package:flutter/material.dart';
import 'package:gogogo/View/Home/Home.dart';

class MuTab extends StatefulWidget {
  
  const MuTab({Key? key}) : super(key: key);

  @override
  State<MuTab> createState() => _MuTabState();
}

class _MuTabState extends State<MuTab> {
  int _selectedIndex = 0; // To keep track of selected index (optional)

  @override
  Widget build(BuildContext context) {
    return Container(
      // Customize the container appearance (e.g., color, padding)
      child: Column(
        children: [
          // Optional: Tab title if provided
          
          // (e.g., a list, icons, buttons, etc.)
          const Text('This is the MuTab content'),
          // Optional functionality (e.g., buttons, toggles) based on state
          ElevatedButton(
            onPressed: () {
              setState(() {
                // Update state here if needed (e.g., toggle selection)
                _selectedIndex++;
              });
            },
            child: const Text('Change Content'),
          ),
        ],
      ),
    );
  }
}
