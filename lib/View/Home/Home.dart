import 'package:flutter/material.dart';
import 'package:gogogo/View/Home/AutoCarousel.dart';
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
  int tabActive = 1;
  String _searchText = ''; // Store user input

  void _onSearch(String text) {
    setState(() {
      _searchText = text;
    });

    // Add
  }

  void _onBellIconPressed() {}
  String _selectedButton = ''; // To track the selected button

  void _handleButtonClick(String buttonText) {
    setState(() {
      _selectedButton = buttonText;
    });
    // Add your logic to navigate to the view based on buttonText
  }

  bool Bannerturnoff = false; //
  void turnoffbanner() {
    setState(() {
      Bannerturnoff = !Bannerturnoff;
    });
  }
  List<Widget> carouselItems = [
    // Your carousel item widgets here
    Container(
      width: 200,
      height: 10,
      child: Image(
        image: AssetImage(
            'assets/images/poster-bike-ride-called-big-bicyclist_40382-409.avif'),
        fit: BoxFit.cover,
      ),
    ),
    Container(
      width: 200,
      height: 10,
      child: Image(
        image: AssetImage(
            'assets/images/poster-bike-ride-called-big-bicyclist_40382-409.avif'),
        fit: BoxFit.cover,
      ),
    )
    // 'assets/images/poster-bike-ride-called-big-bicyclist_40382-409.avif'
  ];

  @override
  Widget build(BuildContext context) {
    const Key centerKey = ValueKey<String>('bottom-sliver-list');

    return Scaffold(
        body: Column(
      children: [
        Container(height: 40, child: Text('')),
        Searchbar(onSearch: _onSearch,onTap: turnoffbanner),
        Builder(
          builder: (context) {
            if (!Bannerturnoff) {
              return Expanded(
                flex: 1,
                child: AutoSwipeCarousel(
                  children: carouselItems,
                ),
              );
            }else{
              return Container();
            }
          },
        ),
        Row(
          children: [
            Expanded(
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal, // Enable horizontal scrolling
                child: Row(
                  children: [
                    TextButton(
                      onPressed: () {
                        // Your button action here
                        setState(() {
                          tabActive = 1;
                        });
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(0.0), // Square border
                          side: BorderSide(
                            color: tabActive == 1
                                ? Colors.grey
                                : Colors
                                    .transparent, // Set border color to gray
                            width: 2.0, // Adjust border width (optional)
                          ),
                        ),
                        minimumSize: Size(100, 50), // Increase size slightly
                        padding:
                            EdgeInsets.all(10.0), // Add some padding (optional)
                        textStyle: TextStyle(
                            fontSize: 16.0), // Increase text size (optional)
                      ),
                      child: Text('Xe'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Your button action here
                        setState(() {
                          tabActive = 2;
                        });
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(0.0), // Square border
                          side: BorderSide(
                            color: tabActive == 2
                                ? Colors.grey
                                : Colors
                                    .transparent, // Set border color to gray
                            width: 2.0, // Adjust border width (optional)
                          ),
                        ),
                        minimumSize: Size(100, 50), // Increase size slightly
                        padding:
                            EdgeInsets.all(10.0), // Add some padding (optional)
                        textStyle: TextStyle(
                            fontSize: 16.0), // Increase text size (optional)
                      ),
                      child: Text('Mũ'),
                    ),
                    TextButton(
                      onPressed: () {
                        // Your button action here
                        setState(() {
                          tabActive = 3;
                        });
                      },
                      style: TextButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius:
                              BorderRadius.circular(0.0), // Square border
                          side: BorderSide(
                            color: tabActive == 3
                                ? Colors.grey
                                : Colors
                                    .transparent, // Set border color to gray
                            width: 2.0, // Adjust border width (optional)
                          ),
                        ),
                        minimumSize: Size(100, 50), // Increase size slightly
                        padding:
                            EdgeInsets.all(10.0), // Add some padding (optional)
                        textStyle: TextStyle(
                            fontSize: 16.0), // Increase text size (optional)
                      ),
                      child: Text('Găng Tay'),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        Builder(builder: (context) {
          if (tabActive == 1) {
            return XeTab(); // Call your xeTab builder function
          } else if (tabActive == 2) {
            // Return a placeholder widget or your content for other tabs
            return MuTab();
          } else {
            return Text('nothing');
          }
        })
      ],
    ));
  }
}
