import 'package:estore/constraints.dart';
import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  const Account({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50,
                backgroundImage: NetworkImage('https://media.licdn.com/dms/image/v2/D4D03AQFo1ZB1uGeDDQ/profile-displayphoto-shrink_200_200/profile-displayphoto-shrink_200_200/0/1723103372751?e=1729728000&v=beta&t=4PegIourg6D8nPahuMemA0mKXjtR23vPDzSisC28XNk'),
              ),
              SizedBox(height: 10,),
              Text('Aban Ali', style: TextStyle(
                fontSize: 18,
                color: Colors.black,
                fontWeight: FontWeight.w600
              ),),
              SizedBox(height: 5,),
              Text('abaan016@gmail.com', style: TextStyle(fontSize: 16, color: hColor,)),
            ],
          ),
        ),
    );
  }
}