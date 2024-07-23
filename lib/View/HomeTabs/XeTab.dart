import 'package:flutter/material.dart';
import 'package:gogogo/API/APIfetch.dart';
import 'package:gogogo/Model/Bike.dart';
import 'package:gogogo/View/Details/ProDetails.dart';
import 'package:gogogo/View/Home/Home.dart';

class XeTab extends StatefulWidget {
  const XeTab({Key? key}) : super(key: key);

  @override
  State<XeTab> createState() => _XeTabState();
}

class _XeTabState extends State<XeTab> {
  int _selectedIndex = 0; // To keep track of selected index (optional)
  Future<List<Bike>>? products;

  @override
  void initState() {
    super.initState();
    products = fetchProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      
      child:
        FutureBuilder<List<Bike>>(
          future: products, // Use the 'products' future
          builder: (context, snapshot) {
            if (snapshot.hasData) {
              final products = snapshot.data!;
              return 
                //height: products.length.toDouble() * 200,
                //width: double.infinity, //nity, //nity, //
                ListView.builder(
                  shrinkWrap: true,
                  itemCount: products.length,
                  itemBuilder: (context, index) {
                    final product = products[index];
                    return GestureDetector(
                      onTap: () => {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => ProDetails()),
                        )
                      },
                      child: Container(
                        margin: EdgeInsets.all(5),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.green),
                            borderRadius: BorderRadius.circular(10)),
                        padding: EdgeInsets.all(1),
                        width: double.infinity,
                        height: 120.0,
                        child: Row(
                          children: [
                            ClipRRect(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Image.network(
                                '${product.thumb}',
                                // Optional properties
                                fit: BoxFit
                                    .contain, // Adjust fit as needed (e.g., BoxFit.fill, BoxFit.contain)
                                loadingBuilder:
                                    (context, child, loadingProgress) {
                                  if (loadingProgress == null) return child;
                                  return Center(
                                      child: CircularProgressIndicator());
                                },
                                errorBuilder: (context, error, stackTrace) {
                                  return Center(
                                      child: Text('Error loading image'));
                                },
                              ),
                            ),
                            Expanded(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '${product.name}',
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          fontWeight: FontWeight.bold),
                                    ),
                                    Text(
                                      '${product.description}',
                                      maxLines: 2,
                                      overflow: TextOverflow.ellipsis,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            
                          ],
                        ),
                      ),
                    );
                
                    //ListTile(
                    //   // Display product details
                    //   // title: Text(product.name),
                    //   // subtitle: Text('Price: \$${product.price}'),
                    //   // leading: Image.network(product.thumb),
                    // );
                  },
                
              );
            } else if (snapshot.hasError) {
              return Center(child: Text('Error: ${snapshot.error}'));
            }
            // Show a loading indicator while waiting for data
            return Center(child: CircularProgressIndicator());
          },
        
      ),
    );
  }
}
