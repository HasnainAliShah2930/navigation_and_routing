

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:navigation_and_routing/Home_Screen.dart';
import 'package:navigation_and_routing/screen_three.dart';
import 'package:navigation_and_routing/secound_Page.dart';
import 'package:navigation_and_routing/utters/routes_name.dart';

class routs{
   static Route<dynamic> generateRoute(RouteSettings settings){
     switch(settings.name){
       case RouteName.homeScreen:
         return MaterialPageRoute(builder: (context)=>HomeScreen());
       case RouteName.secoundScreen:
         return MaterialPageRoute(builder: (context)=>SecoundPage(data: settings.arguments as Map,));
       case RouteName.screenTree:
         return MaterialPageRoute(builder:(context)=>ScreenThree() );
       default :
         return MaterialPageRoute(builder: (context){
           return Scaffold(
             backgroundColor: Colors.amber,
             body: Center(child: Text("No Farther Page Avlable"),),
           );
         });
     }
   }
}