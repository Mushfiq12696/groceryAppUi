import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:online_shop/Screens/home_screen.dart';
import 'package:online_shop/Screens/profile_page.dart';
import 'package:online_shop/Screens/recipe_page.dart';

class CustomBottomNavBar extends StatefulWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  State<CustomBottomNavBar> createState() => _CustomButtomNavBarState();
}

class _CustomButtomNavBarState extends State<CustomBottomNavBar> {
  List pages = [HomeScreen(), RecipeScreen(), ProfileScreen()];
  bool isSelected = true;

  int _selectedIndex = 0;
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          bool willLeave = false;
          // show the confirm dialog
          await showDialog(
            context: context,
            builder: (context) => AlertDialog(
              title: const Text('Are you sure?'),
              actions: [
                TextButton(
                  onPressed: () => Navigator.of(context).pop(),
                  child: const Text(
                    'No',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                TextButton(
                  onPressed: () {
                    willLeave = true;
                    Navigator.of(context).pop();
                  },
                  child: const Text(
                    'Yes',
                    style: TextStyle(
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
              content: Text('Do you want to exit from \nthis app'),
              backgroundColor: Color(0xFFFFD741),
            ),
          );
          return willLeave;
        },
        child: Scaffold(
          body: pages[_selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            items: <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                icon: _selectedIndex == 0
                    ? CircleAvatar(
                        child: Icon(
                          Icons.home,
                          size: 40,
                        ),
                        backgroundColor: Color(0xFF8BC24A),
                        foregroundColor: Colors.black,
                        radius: 25,
                      )
                    : Icon(
                        Icons.home,
                        size: 40,
                      ),
                label: 'Home',
                backgroundColor: Colors.red,
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 1
                    ? CircleAvatar(
                        child: Icon(
                          Icons.restaurant_menu,
                          size: 40,
                        ),
                        backgroundColor: Color(0xFF8BC24A),
                        foregroundColor: Colors.black,
                        radius: 25,
                      )
                    : Icon(
                        Icons.restaurant_menu,
                        size: 40,
                      ),
                label: 'Recipe',
              ),
              BottomNavigationBarItem(
                icon: _selectedIndex == 2
                    ? CircleAvatar(
                        child: Icon(
                          Icons.account_box_outlined,
                          size: 40,
                        ),
                        backgroundColor: Color(0xFF8BC24A),
                        foregroundColor: Colors.black,
                        radius: 25,
                      )
                    : Icon(
                        Icons.perm_contact_calendar_outlined,
                        size: 40,
                      ),
                label: 'Profile',
              ),
            ],
            type: BottomNavigationBarType.fixed,
            backgroundColor: Color(0xFFFFD741),
            showSelectedLabels: true,
            showUnselectedLabels: true,
            unselectedFontSize: 8,
            selectedFontSize: 8,
            unselectedItemColor: Colors.black,
            currentIndex: _selectedIndex,
            selectedItemColor: Colors.black,
            onTap: _onItemTapped,
          ),
        ));
  }
}
