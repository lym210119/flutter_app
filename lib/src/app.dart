import 'package:flutter/material.dart';
import 'package:flutter_app/src/add/add.dart';
import 'package:flutter_app/src/home/home.dart';
import 'package:flutter_app/src/profile/profile.dart';
import 'package:flutter_app/src/providers/add_provider.dart';
import 'package:flutter_app/src/providers/current_page.dart';
import 'package:flutter_app/src/widgets/app_bottom_navigation_bar.dart';
import 'package:provider/provider.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'flutter_app',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primaryColor: Colors.black,
          accentColor: Colors.black87,
          appBarTheme: AppBarTheme(
              elevation: 0.5,
              color: Colors.white,
              brightness: Brightness.light,
              textTheme: TextTheme(
                  title: TextStyle(
                      color: Colors.black,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold)))),
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider<CurrentPage>(create: (context) => CurrentPage(),),
          ChangeNotifierProvider<AddProvider>(create: (context) => AddProvider())
        ],
        child: Scaffold(
          body: Consumer<CurrentPage>(
            builder: (context, currentPage, child) => IndexedStack(
              index: currentPage.index,
              children: <Widget>[Home(), Add(), Profile()],
            ),
          ),
          bottomNavigationBar: AppBottomNavigationBar(),
        ),
        )
      // ChangeNotifierProvider<CurrentPage>(
      //   create: (context) => CurrentPage(),
        
      // ),
    );
  }
}
