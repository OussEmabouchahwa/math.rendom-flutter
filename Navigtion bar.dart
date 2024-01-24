import 'package:flutter/material.dart';
import 'Home.dart';
class SimpleBottomNavigation extends StatefulWidget {
  const SimpleBottomNavigation({Key? key}) : super(key: key);

  @override
  State<SimpleBottomNavigation> createState() => _SimpleBottomNavigationState();
}

class _SimpleBottomNavigationState extends State<SimpleBottomNavigation> {
  int _selectedIndex = 0;
  List <Widget> Myliste =[

  ];
  BottomNavigationBarType _bottomNavType = BottomNavigationBarType.fixed;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Simple Bottom Navigation')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Selected Page: ${_navBarItems[_selectedIndex].label}"),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("BottomNavBar Type :"),
                const SizedBox(width: 16),
                DropdownButton<BottomNavigationBarType>(
                    hint: Text(_bottomNavType.name),
                    items: BottomNavigationBarType.values
                        .map((item) => DropdownMenuItem(
                        value: item, child: Text(item.name)))
                        .toList(),
                    onChanged: (val) {
                      if (val == null) return;
                      setState(() {
                        _bottomNavType = val;
                      });
                    }),
              ],
            )
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          backgroundColor: Color(0xff809258),
          selectedItemColor: const Color(0xffe5e5e5),
          unselectedItemColor: const Color(0xffa7b294),
          type: _bottomNavType,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: _navBarItems),
    );
  }
}

const _navBarItems = [
  BottomNavigationBarItem(
    icon: Icon(Icons.handshake),
    activeIcon: Icon(Icons.handshake_outlined),
    label: 'صدقة جارية ',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.mode_night_outlined),
    activeIcon: Icon(Icons.mode_night_outlined),
    label: 'أحاديث نبوية',
  ),
  BottomNavigationBarItem(
    icon: Icon(Icons.shopping_bag_outlined),
    activeIcon: Icon(Icons.shopping_bag),
    label: 'أذكار',
  ),

  BottomNavigationBarItem(
    icon: Icon(Icons.home_outlined),
    activeIcon: Icon(Icons.home_rounded),
    label: 'الصفحة الرئيسية',
  ),
];