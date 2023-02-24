import 'package:findaway/screen/Home/HomePage.dart';
import 'package:findaway/screen/constant/colors.constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class MainPage extends StatefulWidget {
  const MainPage({super.key});

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var index = 0;
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: secondaryColor,
        title: const Text("Find you own way"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications))
        ],
      ),
      body: const HomePage(),
      bottomNavigationBar: Container(
        padding: EdgeInsets.only(top: 12),
        color: secondaryColor,
        height: 60,
        width: width,
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          InkWell(
            onTap: () {
              setState(() {
                index = 0;
              });
            },
            child: Column(
              children: [
                Icon(
                  Icons.home_rounded,
                  color: index == 0 ? primaryColor : Colors.white60,
                ),
                Text(
                  "Search",
                  style: TextStyle(
                      color: index == 0 ? primaryColor : Colors.white60),
                ),
                Divider(
                  color: index == 0 ? primaryColor : Colors.white60,
                  height: 5,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                index = 1;
              });
            },
            child: Column(
              children: [
                Icon(
                  Icons.bookmark,
                  color: index == 1 ? primaryColor : Colors.white60,
                ),
                Text(
                  "Saved",
                  style: TextStyle(
                      color: index == 1 ? primaryColor : Colors.white60),
                ),
                Divider(
                  color: index == 1 ? primaryColor : Colors.white60,
                  height: 5,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                index = 2;
              });
            },
            child: Column(
              children: [
                Icon(
                  Icons.school,
                  color: index == 2 ? primaryColor : Colors.white60,
                ),
                Text(
                  "School",
                  style: TextStyle(
                      color: index == 2 ? primaryColor : Colors.white60),
                ),
                Divider(
                  color: index == 2 ? primaryColor : Colors.white60,
                  height: 5,
                )
              ],
            ),
          ),
          InkWell(
            onTap: () {
              setState(() {
                index = 3;
              });
            },
            child: Column(
              children: [
                Icon(
                  Icons.person,
                  color: index == 3 ? primaryColor : Colors.white60,
                ),
                Text(
                  "profile",
                  style: TextStyle(
                      color: index == 3 ? primaryColor : Colors.white60),
                ),
                Divider(
                  color: index == 3 ? primaryColor : Colors.white60,
                  height: 5,
                )
              ],
            ),
          )
        ]),
      ),
    );
  }
}
