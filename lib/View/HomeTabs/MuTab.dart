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
    return Expanded(
        child: SingleChildScrollView(
      // Customize the container appearance (e.g., color, padding)
      scrollDirection: Axis.vertical,
      child: Column(
        children: List.generate(
            10,
            (index) => Container(
                  width: double.infinity,
                  height: 120.0,
                  child: Row(
                    children: [
                      Image.asset(
                        'assets/images/motorcycle-safety-helmet_23-2151531268.avif',
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
                )),
      ),
    ));
  }
}
