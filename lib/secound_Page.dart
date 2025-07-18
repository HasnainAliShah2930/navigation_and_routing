import 'package:flutter/material.dart';
import 'package:navigation_and_routing/screen_three.dart';
import 'package:navigation_and_routing/utters/routes_name.dart';

class SecoundPage extends StatefulWidget {
  //static const String id= "secound_screen";
  // final String name;
  // final int num;
  dynamic data;
   SecoundPage({super.key,
    required this.data,
    // required this.name,
    // required this.num
  });

  @override
  State<SecoundPage> createState() => _SecoundPageState();
}

class _SecoundPageState extends State<SecoundPage> {
  @override
  Widget build(BuildContext context)
  {
    // final arguments=ModalRoute.of(context)!.settings.arguments as Map;
    return Scaffold(
      appBar: AppBar(
        // title: Text(widget.name.toString()+" "+widget.num.toString()),
        // title: Text(arguments["name"]),
        title: Text(widget.data["Node"]),
        centerTitle: true,
        backgroundColor: Colors.amber,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            InkWell(
              onTap: () {
                Navigator.pushNamed(context, RouteName.screenTree);
                // Navigator.push(
                //   context,
                //   MaterialPageRoute(builder: (context) => ScreenThree(
                //     name:"Hasnain",
                //     age:17,
                // )
                 // ),
                //);
              },
              child: Container(
                height: 40,
                width: double.infinity,
                child: Center(child: Text("Secound Page")),
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
