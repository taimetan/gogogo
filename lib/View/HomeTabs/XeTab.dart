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
    return Container(
      // Customize the container appearance (e.g., color, padding)
      child: Column(
        children: [
          // Optional: Tab title if provided
          
          // (e.g., a list, icons, buttons, etc.)
          const Text('This is the XeTab content'),
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
