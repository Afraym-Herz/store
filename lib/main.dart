import 'package:flutter/material.dart';
import 'package:store/screens/home_screen.dart';
import 'package:store/screens/update_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.id : (context) => const HomeScreen() ,
        UpdateScreen.id : (context) =>  UpdateScreen() ,
      },  
      initialRoute: HomeScreen.id ,
      debugShowCheckedModeBanner: false,
    );
  }
}
