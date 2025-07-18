import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:navigation_and_routing/Home_Screen.dart';
import 'package:navigation_and_routing/utters/routes_name.dart';

class ScreenThree extends StatefulWidget {
 // static const String id="screen_three";
  const ScreenThree({super.key,
    // required name,
    // required int age
  });

  @override
  State<ScreenThree> createState() => _ScreenThreeState();
}

class _ScreenThreeState extends State<ScreenThree> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Third Screen"),
        backgroundColor: Colors.amber,
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.homeScreen);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => HomeScreen()),
                // );
              },
              child: Container(
                height: 40,
                width: double.infinity,
                child: Center(child: Text("Third Screen")),
                decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
