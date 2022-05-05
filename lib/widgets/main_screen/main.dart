import 'package:flutter/material.dart';
import 'package:candy_progect/widgets/Rowcolumn.dart';
import 'package:candy_progect/widgets/auth/auth.dart';
import 'package:candy_progect/map/map.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        appBarTheme: AppBarTheme(),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
          backgroundColor: Colors.redAccent[400],
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.blue,
        ),
      ),
      routes: {
        '/auth': (context) => AuthWidget(),
        '/main_screen': (context) => MyRow(),
        '/myMap': (context) => myMap(),
      },
      initialRoute: '/auth',
    );
  }
}
