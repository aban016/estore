import 'package:estore/screens/product_detail.dart';
import 'package:flutter/material.dart';

class Products {
  final String name;
  final double price;
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
      Products(name: 'Product 1', price: 10.0, image: 'assets/images/product1.png', description: 'Lorem Ipsum dust'),
      Products(name: 'Product 2', price: 20.0, image: 'assets/images/product2.png', description: 'Lorem Ipsum dust'),
      Products(name: 'Product 3', price: 30.0, image: 'assets/images/product3.png', description: 'Lorem Ipsum dust'),
    ];
    return Container(
      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 15.0,
          crossAxisSpacing: 15
        ),
        itemCount: products.length,
        itemBuilder: (context, index){
          return Card(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  Image.asset(products[index].image, height: 100, width: 100,),
                  Text(products[index].name, style: TextStyle(
                    fontSize: 18.0,
                    fontWeight: FontWeight.bold
                  ),),
                  Text('\$${products[index].price}', style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w300
                  ),),
                  ElevatedButton(onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductDetail()));
                  }, child: Text('Show Details'))
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}