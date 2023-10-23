import 'package:flutter/material.dart';

class HomeBottomNavBar extends StatefulWidget {
  const HomeBottomNavBar({
    super.key,
    required this.onChanged,
  });

  final ValueChanged<int> onChanged;

  @override
  State<HomeBottomNavBar> createState() => _HomeBottomNavBarState();
}

class _HomeBottomNavBarState extends State<HomeBottomNavBar> {
  int _index = 1;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      elevation: 8,
      currentIndex: _index,
      onTap: (value) {
        setState(() {
          _index = value;
          widget.onChanged(_index);
        });
      },
      items: const [
        BottomNavigationBarItem(
          icon: Icon(Icons.contact_page_outlined),
          activeIcon: Icon(
            Icons.contact_page_rounded,
            size: 30,
          ),
          label: 'Liên hệ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.home_outlined),
          activeIcon: Icon(
            Icons.home_rounded,
            size: 30,
          ),
          label: 'Trang chủ',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_outline),
          activeIcon: Icon(
            Icons.person_rounded,
            size: 30,
          ),
          label: 'Tài khoản',
        ),
      ],
    );
  }
}
