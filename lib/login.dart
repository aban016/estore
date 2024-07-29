import 'package:estore/constraints.dart';
import 'package:estore/home.dart';
import 'package:estore/register.dart';
import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: NetworkImage('https://img.freepik.com/free-vector/hand-drawn-shopping-pattern-design_23-2149628702.jpg?w=2000'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Container(
            padding: EdgeInsets.all(16.0),
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.8),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'E-Store',
                  style: TextStyle(
                    fontSize: 26,
                    fontWeight: FontWeight.w800,
                    color: primary
                  ),
                ),
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: hColor
                  ),
                ),
                SizedBox(height: 18),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'Email',
                    border: UnderlineInputBorder(),
                    focusColor: bgColor,
                    hoverColor: bgColor,
                  ),
                ),
                SizedBox(height: 16),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'Password',
                    border: UnderlineInputBorder(),
                    focusColor: bgColor,
                    hoverColor: bgColor,
                  ),
                ),
                SizedBox(height: 16),
                ElevatedButton(
                  onPressed: () {
                    // Navigate to home page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Home()));
                  },
                  child: Text('Login', style: TextStyle(
                    color: hColor,
                  ),),
                ),
                SizedBox(height: 16),
                TextButton(
                  onPressed: () {
                    // Navigate to register page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => Register()));
                  },
                  child: Text('Create Account', style: TextStyle(
                    color: hColor
                  ),),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
