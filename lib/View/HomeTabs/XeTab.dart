import 'package:flutter/material.dart';
import 'package:gogogo/View/Details/ProDetails.dart';
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
    return Expanded(
        child: SingleChildScrollView(
      // Customize the container appearance (e.g., color, padding)
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(
            10,
            (index) => GestureDetector(
              onTap: ()=>{
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProDetails()),
                  )
              },
              child: Container(
                    width: double.infinity,
                    height: 120.0,
                    child: Row(
                      children: [
                        Image.asset(
                          'assets/images/bike.png',
                          width: 100.0,
                          height: 100.0,
                          fit: BoxFit.contain, // Adjust fit (optional)
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Title of the item',
                                  style: TextStyle(
                                      fontSize: 16.0,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  'Description of the item. This can span multiple lines.',
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            '\$100.00', // Replace with your price
                            style: TextStyle(
                                fontSize: 16.0, fontWeight: FontWeight.bold),
                          ),
                        ),
                      ],
                    ),
                  ),
            )),
      ),
    ));
  }
}
