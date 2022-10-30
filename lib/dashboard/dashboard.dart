import 'package:flutter/material.dart';
import 'package:shopping/Homepage/home_screen.dart';
import 'package:shopping/Homepage/navigation.dart';
import 'package:shopping/cart/cart.dart';
import 'package:shopping/category/category.dart';
import 'package:shopping/notification/notifaction.dart';
import 'package:shopping/profile/profile.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _selectedIndex = 0;

  void onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  final List<Widget> _widgets = [
    HomeScreen(),
    const Category(),
    const Notific(),
    const ProfileScreen(),
    const Cart(),
  ];

  @override
  Widget build(BuildContext context) {
    // print(_widgets.elementAt(_selectedIndex));
    return Scaffold(
      drawer: const CustomeDrawer(),
      appBar: AppBar(
        elevation: 0,
        brightness: Brightness.dark,
        backgroundColor: Colors.white,
        iconTheme: const IconThemeData(color: Colors.black),
        title: Image.network(
            'https://s3u.tmimgcdn.com/1660587-1529074811857_2.jpg'),
        actions: const [
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(
              Icons.search,
              color: Colors.black,
            ),
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Icon(
              Icons.shopping_bag_outlined,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: _widgets[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
              ),
              label: 'Home',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(
                Icons.category,
              ),
              label: 'Category',
            
              
              
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.notifications),
              label: 'Notification',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: 'Account',
              backgroundColor: Colors.black),
          BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: 'Cart',
              backgroundColor: Colors.black),
        ],
        currentIndex: _selectedIndex,
        onTap: onItemTapped,
      ),
    );
  }
}
