import 'package:devision5/UI/HomeScreens/BottomNavigationPages/HomeScreen/HomeScreen.dart';
import 'package:devision5/UI/HomeScreens/BottomNavigationPages/PreferencesScreen.dart';
import 'package:devision5/UI/HomeScreens/BottomNavigationPages/RecipeScreen.dart';
import 'package:devision5/UI/HomeScreens/BottomNavigationPages/ShopingList.dart';
import 'package:devision5/UI/HomeScreens/BottomNavigationPages/StatusScreen.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int selectedIndex = 0;

  final List<Widget> _navigatePages = <Widget>[
    const HomeScreen(),
    const RecipeScreen(),
    const StatusScreen(),
    const ShoppingList(),
    const PreferencesScreen(),
  ];

  void _onTapPages(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        backgroundColor: Colors.black,
        body: _navigatePages.elementAt(selectedIndex),
        bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Colors.grey[900],
          elevation: 0,
          currentIndex: selectedIndex,
          onTap: _onTapPages,
          type: BottomNavigationBarType.fixed,
          unselectedItemColor: Colors.grey,
          selectedItemColor: Colors.grey,
          selectedLabelStyle: const TextStyle(color: Colors.black),
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.menu_book),
              label: 'Recipes',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.local_fire_department),
              label: 'Status',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.format_list_bulleted),
              label: 'Shopping List',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Preferences',
            ),
          ],
        ),
      ),
    );
  }
}
