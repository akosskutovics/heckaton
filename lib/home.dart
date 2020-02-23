import 'package:competition/Pages/categories_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
//import 'myGroups.dart';
import 'discover.dart';
import 'profile.dart';
//import 'competition/Pages/categories_page.dart';

class MyStatefulWidget extends StatefulWidget {
  MyStatefulWidget({Key key}) : super(key: key);

  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int _selectedIndex = 0;
  //static const TextStyle optionStyle =      TextStyle(fontSize: 30, fontWeight: FontWeight.bold);
  final List<Widget> _widgetOptions = <Widget>[
    CategoryPage(),
    Discover(),
    Profile(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(IconData(0xe900, fontFamily: 'icomoon')),
            title: Text(
              'My groups',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(22),
                fontFamily: "OpenSans",
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            title: Text(
              'Discover',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(22),
                fontFamily: "OpenSans",
              ),
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            title: Text(
              'Profile',
              style: TextStyle(
                fontSize: ScreenUtil().setSp(22),
                fontFamily: "OpenSans",
              ),
            ),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xff0057FF),
        onTap: _onItemTapped,
      ),
    );
  }
}
