import 'package:estore/constraints.dart';
import 'package:flutter/material.dart';

class ProductDetail extends StatelessWidget {

  final String productName;
  final String productprice;
  final String productimage;
  final String productdescription;

  ProductDetail({
    required this.productName,
    required this.productprice,
    required this.productimage,
    required this.productdescription,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'E-Store',
          style: TextStyle(
              color: txtColor, fontSize: 18, fontWeight: FontWeight.w600),
        ),
        backgroundColor: bgColor,
        iconTheme: IconThemeData(color: txtColor),
        actions: [
          Padding(
            padding: EdgeInsets.all(10),
            child: IconButton(
              icon: Icon(
                Icons.search,
                size: 28,
              ),
              onPressed: () {
                // Add your search functionality here
              },
            ),
          ),
        ],
      ),

      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // NOTE: Product Image
            Center(
              child: Image(image: AssetImage('${productimage}')),
            ),
            SizedBox(height: 30),
            Text('${productName}', style: TextStyle(color: hColor, fontSize: 22,fontWeight: FontWeight.bold),),
            SizedBox(height: 8,),
            Text('PKR-${productprice}', style: TextStyle(color: primary, fontSize: 20, fontWeight: FontWeight.w400),),
            SizedBox(height: 8,),
            Text('Description:', style: TextStyle(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w400),),
            SizedBox(height: 2,),
            Text(' ${productdescription}', style: TextStyle(color: Colors.grey, fontSize: 12,),),
            SizedBox(height: 30,),
            Center(
              child: ElevatedButton(onPressed: (){
                // TODO: Add your button functionality here
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      content: Text('${productName} added to your cart!'),
                    ),
                  );
              }, child: Text('Add To Cart', style: TextStyle(color: txtColor),),
                style: ElevatedButton.styleFrom(
                  backgroundColor: primary,
                ),
              ),
            ),
          ],
        ), 
      ),
    );
  }
}