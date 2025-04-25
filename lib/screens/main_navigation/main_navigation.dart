import 'package:flutter/material.dart';

class MainNavigation extends StatefulWidget {
  static const String routeName = '/main_nav';

  const MainNavigation({super.key});

  @override
  State<MainNavigation> createState() => _MainNavigationState();
}

class _MainNavigationState extends State<MainNavigation> {
  int currentIndex = 0;

  Widget getScreen(int index) {
    switch (index) {
      case 0:
        return Center(child: Text('Stickers'));
      case 1:
        return Center(child: Text('Search'));
      case 2:
        return Center(child: Text('Authors'));
      case 3:
        return Center(child: Text('More'));

      default:
        return Center(child: Text('Default'));
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      backgroundColor: Colors.blueGrey,
      body: getScreen(currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() {
            currentIndex = index;
          });
        },

        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.sentiment_satisfied_alt),
            label: 'Stickers',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.group), label: 'Authors'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Profile'),
          BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
        ],
       selectedItemColor: Colors.purple,
       unselectedItemColor: Colors.deepPurple,
        
      ),
    );
  }
}
