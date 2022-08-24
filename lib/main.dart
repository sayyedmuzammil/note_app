import 'package:flutter/material.dart';

import 'screens/my_home_page.dart';
import 'package:sizer/sizer.dart'; 

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    
    return Sizer(
      builder: (context, orientation, deviceType){
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Note App',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home:  MyHomePage(title: 'Your Notes'),
    );
      }
      );
  }
}
