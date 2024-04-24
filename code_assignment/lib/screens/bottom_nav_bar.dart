import 'package:code_assignment/screens/cart_screen.dart';
import 'package:code_assignment/utils/color_constants.dart';
import 'package:code_assignment/utils/common_widgets.dart';
import 'package:code_assignment/utils/text_styles.dart';
import 'package:flutter/material.dart';

class BottomNavScreen extends StatefulWidget {
  @override
  _BottomNavScreenState createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int _currentIndex = 2;

  final List<Widget> _screens = [
    Center(
      child: Text(
        'Hello User!',
        style: XlargeStyle(Colors.black),
      ),
    ),
    Center(
        child: Text(
      'Hello User!',
      style: XlargeStyle(Colors.black),
    )),
    CartScreen(),
    Center(
        child: Text(
      'Hello User!',
      style: XlargeStyle(Colors.black),
    )),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 8,
        title: Image.asset('assets/images/appbar/app_icon.png'),
        actions: [
          iconButton(
            () {},
            ('assets/images/appbar/search_icon.png'),
          ),
          iconButton(
            () {},
            ('assets/images/appbar/notification_icon.png'),
          ),
          iconButton(
            () {},
            ('assets/images/appbar/dummy_data_icon.png'),
          ),
          iconButton(
            () {},
            ('assets/images/appbar/user_icon.png'),
          ),
        ],
      ),
      body: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.bottomLeft,
              end: Alignment.topRight,
              colors: [Colors.white, Color.fromRGBO(255, 240, 240, 1)],
              stops: [0.0, 0.5], // adjust stops for desired effect
            ),
          ),
          child: _screens[_currentIndex]),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(30), topLeft: Radius.circular(30)),
          boxShadow: [
            BoxShadow(color: Colors.black38, spreadRadius: 0, blurRadius: 10),
          ],
        ),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topLeft: Radius.circular(30.0),
            topRight: Radius.circular(30.0),
          ),
          child: BottomNavigationBar(
            type: BottomNavigationBarType.fixed,
            selectedItemColor: primaryColor,
            currentIndex: _currentIndex,
            onTap: _onTabTapped,
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Padding(
                    padding: const EdgeInsets.only(left: 8, top: 8),
                    child: Container(
                      decoration: BoxDecoration(
                        color: _currentIndex == 0 ? primaryColor : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding:
                            const EdgeInsets.only(left: 8, top: 10, bottom: 10),
                        child: Row(
                          children: [
                            Image.asset(
                              'assets/images/home/retail_icon2.png',
                              color: _currentIndex == 0
                                  ? Colors.white
                                  : Color.fromRGBO(92, 93, 96, 1),
                            ),
                            widthSacer(2),
                            Text(
                              'Retail',
                              style: regularStyle(_currentIndex == 0
                                  ? Colors.white
                                  : Color.fromRGBO(92, 93, 96, 1)),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                  icon: Container(
                    decoration: BoxDecoration(
                      color: _currentIndex == 1 ? primaryColor : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Icon(
                        Icons.favorite,
                        color: _currentIndex == 1
                            ? Colors.white
                            : Color.fromRGBO(92, 93, 96, 1),
                      ),
                    ),
                  ),
                  label: ''),
              BottomNavigationBarItem(
                icon: Padding(
                  padding: const EdgeInsets.only(left: 8, top: 8),
                  child: Container(
                    decoration: BoxDecoration(
                      color: _currentIndex == 2 ? primaryColor : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: _currentIndex == 2
                        ? Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Image.asset(
                                'assets/images/home/cart_icon2.png'),
                          )
                        : Padding(
                            padding: const EdgeInsets.only(
                                left: 8, top: 10, bottom: 10),
                            child: Row(
                              children: [
                                Image.asset(
                                  'assets/images/home/cart_icon.png',
                                  color: _currentIndex == 2
                                      ? Colors.white
                                      : Color.fromRGBO(92, 93, 96, 1),
                                ),
                                widthSacer(2),
                                Text(
                                  'Cart',
                                  style: regularStyle(_currentIndex == 2
                                      ? Colors.white
                                      : Color.fromRGBO(92, 93, 96, 1)),
                                )
                              ],
                            ),
                          ),
                  ),
                ),
                label: '',
              ),
              BottomNavigationBarItem(
                  icon: Container(
                      decoration: BoxDecoration(
                        color: _currentIndex == 3 ? primaryColor : Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        'assets/images/home/person_icon.png',
                        color: _currentIndex == 3
                            ? Colors.white
                            :const Color.fromRGBO(92, 93, 96, 1),
                      )),
                  label: ''),
            ],
          ),
        ),
      ),
    );
  }
}
