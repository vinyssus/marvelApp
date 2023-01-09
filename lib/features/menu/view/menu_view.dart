import 'package:flutter/material.dart';
import 'package:marvel_app/core/utils/functions_utils.dart';
import 'package:marvel_app/core/utils/values/colors.dart';
import 'package:marvel_app/features/home/view/home_view.dart';

class MenuView extends StatefulWidget {
  const MenuView({Key? key}) : super(key: key);

  @override
  State<MenuView> createState() => _MenuViewState();
}

class _MenuViewState extends State<MenuView> {
  int _currentIndex = 0;

  Widget _getWidget() {
    Widget _currentWidget = HomeView();
    switch (_currentIndex) {
      case 0:
        {
          _currentWidget = HomeView();
        }
    }
    return _currentWidget;
  }

  @override
  Widget build(BuildContext context) {
    final MediaQueryData mediaQueryData = MediaQuery.of(context);
    final Size size = mediaQueryData.size;
    return Scaffold(
      backgroundColor: Colors.grey.withOpacity(0.3),
      body: _getWidget(),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: primaryColor,
        selectedItemColor: Colors.white,
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.white.withOpacity(.60),
        selectedFontSize: getResponsiveItemSize(size.width, 14),
        unselectedFontSize: getResponsiveItemSize(size.width, 14),
        onTap: (int value) {
          setState(() {
            _currentIndex=value;
          });
        },
        items: [
          BottomNavigationBarItem(
            label: 'Home',
            icon: Icon(Icons.home),
          ),
          BottomNavigationBarItem(
            label: 'Search',
            icon: Icon(Icons.search),
          ),
          BottomNavigationBarItem(
            label: 'Favorite',
            icon: Icon(Icons.favorite),
          ),
        ],
      ),
    );
  }
}
