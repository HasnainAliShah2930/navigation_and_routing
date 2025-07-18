import 'package:flutter/material.dart';
import 'package:navigation_and_routing/secound_Page.dart';
import 'package:navigation_and_routing/utters/routes_name.dart';

class HomeScreen extends StatefulWidget {
  //static const String id = "Home_screen";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home Screen"),
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
                Navigator.pushNamed(context, RouteName.secoundScreen,
                    arguments:{
                  "Node" : "Js Module",
                      "Flutter":"Best"
                });

                // Navigator.pushNamed(context,
                //     SecoundPage.id,
                //     arguments: {
                //   "name":"Hasnain",
                //       "age":14,
                //     });
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(
                //     builder: (context) => SecoundPage(
                //         name: "Hasnain Ali Shah",
                //         num:13,
                //     ),
                //   ),
                // );
              },
              child: Container(
                height: 40,
                width: double.infinity,
                child: Center(child: Text("Home Screen")),

                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Colors.amber,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
