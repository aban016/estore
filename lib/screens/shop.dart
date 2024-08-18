import 'package:estore/constraints.dart';
import 'package:estore/screens/product_detail.dart';
import 'package:flutter/material.dart';

class Products {
  final String name;
  final String price;
  final String image;
  final String description;

  Products({
    required this.name,
    required this.price,
    required this.image,
    required this.description,
  });
}

class Shop extends StatelessWidget {
  const Shop({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Products> products = [
      Products(name: 'Airpods Pro', price: '30,000', image: 'assets/images/product1.png', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae suscipit risus. Curabitur non mauris nec mi fermentum venenatis. Integer lacinia, metus at tincidunt dignissim, orci ligula pharetra nisi, vel gravida lorem risus at lacus. Quisque venenatis, nulla at commodo ullamcorper, justo enim ullamcorper lacus, id dignissim nunc purus ut arcu.'),
      Products(name: 'Digital Watch', price: '15,000', image: 'assets/images/product2.png', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae suscipit risus. Curabitur non mauris nec mi fermentum venenatis. Integer lacinia, metus at tincidunt dignissim, orci ligula pharetra nisi, vel gravida lorem risus at lacus. Quisque venenatis, nulla at commodo ullamcorper, justo enim ullamcorper lacus, id dignissim nunc purus ut arcu.'),
      Products(name: 'Simple Airpods', price: '6000', image: 'assets/images/product3.png', description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed vitae suscipit risus. Curabitur non mauris nec mi fermentum venenatis. Integer lacinia, metus at tincidunt dignissim, orci ligula pharetra nisi, vel gravida lorem risus at lacus. Quisque venenatis, nulla at commodo ullamcorper, justo enim ullamcorper lacus, id dignissim nunc purus ut arcu.'),
    ];
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 15.0
        ),
        itemCount: products.length,
        itemBuilder: (context, index){
          return Card(
            color: Colors.white,
            elevation: 10,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30),
                bottomRight: Radius.circular(30),
              ), 
            ),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(products[index].image, height: 100, width: 100,),
                  SizedBox(height: 18,),
                  Text(products[index].name, style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),),
                  SizedBox(height: 5,),
                  Text('\PKR ${products[index].price}', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300
                  ),),
                  SizedBox(height: 10,),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail(
                      productName: products[index].name,
                      productprice: products[index].price,
                      productdescription: products[index].description,
                      productimage: products[index].image,
                    )));
                  },

                    style: ElevatedButton.styleFrom(
                      backgroundColor: primary,
                      elevation: 3,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                      ),
                    ),

                   child: Text('Show Details', style: TextStyle(color: txtColor),)),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}