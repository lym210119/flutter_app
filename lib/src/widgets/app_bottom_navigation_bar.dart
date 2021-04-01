import 'package:flutter/material.dart';
import 'package:flutter_app/src/providers/current_page.dart';
import 'package:provider/provider.dart';

class AppBottomNavigationBar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    final currentPage = Provider.of<CurrentPage>(context);

    return BottomNavigationBar(
      currentIndex: currentPage.index,
      onTap: (value) => currentPage.index = value,
      // showSelectedLabels: false,
      // showUnselectedLabels: false,
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home_outlined,
            size: 30
          ),
          label: '首页',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.add_box_outlined,
            size: 30
          ),
          label: '添加',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle_outlined,
            size: 30
          ),
          label: '我的',
        )
      ],
    );
  }
}