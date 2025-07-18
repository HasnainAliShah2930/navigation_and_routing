import 'package:flutter/material.dart';
import 'package:navigation_and_routing/Home_Screen.dart';
import 'package:navigation_and_routing/screen_three.dart';
import 'package:navigation_and_routing/secound_Page.dart';
import 'package:navigation_and_routing/utters/routes_name.dart';
import 'package:navigation_and_routing/utters/routs.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),
      // initialRoute: HomeScreen.id,
      // routes: {
      //   HomeScreen.id:(context)=>HomeScreen(),
      //   SecoundPage.id:(context)=>SecoundPage(),
      //   ScreenThree.id:(context)=>ScreenThree(name: " ", age: 1),
      //
      // },
      initialRoute: RouteName.homeScreen,
      onGenerateRoute: routs.generateRoute,
    );
  }
}




