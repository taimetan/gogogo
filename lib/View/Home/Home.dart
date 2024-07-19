
import 'package:flutter/material.dart';
import 'package:gogogo/View/Home/HomeSearch.dart';
import 'package:gogogo/View/HomeTabs/HomeTab.dart';
import 'package:gogogo/View/HomeTabs/MuTab.dart';
import 'package:gogogo/View/HomeTabs/XeTab.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int tabActive =1;
  String _searchText = ''; // Store user input
  

  void _onSearch(String text) {
    setState(() {
      _searchText = text;
    });

    // Add
  }
  void _onBellIconPressed() {
  }
  String _selectedButton = ''; // To track the selected button

  void _handleButtonClick(String buttonText) {
    setState(() {
      _selectedButton = buttonText;
    });
    // Add your logic to navigate to the view based on buttonText
    
  }

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');

    return Scaffold(
      body: Column(
        children: [
          Container(height: 40,child: Text('')),
          Searchbar(onSearch: _onSearch),
          Row(
      children: [
        Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal, // Enable horizontal scrolling
            child: Row(
              children: [
                TextButton(onPressed: () => {
                  setState(() {
                  tabActive = 1;
                })
                }, child: Text('Xe')),
                TextButton(onPressed: () => {
                  setState(() {
                  tabActive = 2;
                })
                }, child: Text('Mu'))
              ],
            ),
          ),
        ),
      ],
    ),
    Builder(builder:(context){
      if (tabActive == 1) {
          return XeTab(); // Call your xeTab builder function
        } else if (tabActive == 2) {
          // Return a placeholder widget or your content for other tabs
          return MuTab()  ;
        }else{
          return Text('nothing');
        }
    })
        ],

      )
    );
  }
  
}

