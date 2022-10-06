import 'package:flutter/material.dart';
import 'package:food_app/src/home_page.dart';

import '../shared/constants.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  int _currentIndex=0;
  @override
  Widget build(BuildContext context) {
    final _tabs = [
      HomePage(),
      Center(child: Text('My Cart')),
      Center(child: Text('Favourites')),
      Center(child: Text('Profile')),
      Center(child: Text('Settings')),
    ];
    return Scaffold(
      backgroundColor: Colors.grey.shade300,
      appBar: AppBar(
        title: Text('Food Bazar', style: kTitleText.copyWith(fontFamily: 'pacifico', fontWeight: FontWeight.w500),),
        centerTitle: true,
        elevation: 0,
      ),
      body: _tabs[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.store),label: 'Store'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart),label: 'My Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border_outlined),label: 'Favourites'), BottomNavigationBarItem(icon: Icon(Icons.person_outline_rounded,),label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.settings,),label: 'Settings'),
        ],
        onTap: (index){
          setState((){
            _currentIndex=index;
          });
        },
      ),
    );
  }
}
