import 'package:estore/constraints.dart';
import 'package:estore/login.dart';
import 'package:estore/screens/account.dart';
import 'package:estore/screens/myhome.dart';
import 'package:estore/screens/shop.dart';
import 'package:flutter/material.dart';


class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int currentIndex = 0;

  final List<Widget> pages=[
    myHome(),
    Shop(),
    Account()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'E-Store',
          style: TextStyle(
              color: txtColor, fontSize: 32, fontWeight: FontWeight.w600),
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
      drawer: Drawer(
        child: ListView(
          children: [
            UserAccountsDrawerHeader(
                currentAccountPicture: CircleAvatar(
                  backgroundImage: NetworkImage(
                      "https://i0.wp.com/www.stignatius.co.uk/wp-content/uploads/2020/10/default-user-icon.jpg?fit=415%2C415&ssl=1"),
                ),
                accountName: const Text('Aban Ali'),
                accountEmail: const Text('abaan016@gmail.com')),
            ListTile(
              leading: Icon(Icons.notifications),
              title: Text('Notifications'),
            ),
            ListTile(
              leading: Icon(Icons.favorite),
              title: Text('Wishlist'),
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Login()));
              },
            ),
          ],
        ),
      ),

      body: pages[currentIndex],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index){
          setState(() {
            currentIndex = index;
          });
        },
        unselectedItemColor: Colors.black, 
        selectedItemColor:
            bgColor, 
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shop),
            label: 'Shop', 
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Account',
          ),
        ],
      ),
    );
  }
}