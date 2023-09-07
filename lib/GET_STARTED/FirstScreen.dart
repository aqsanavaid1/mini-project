// ignore: file_names
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:miniprojectone/GroceryHome/HomePage.dart';
import '../colors/colors.dart';

class GetStartedScreen extends StatefulWidget {
  const GetStartedScreen({super.key});

  @override
  State<GetStartedScreen> createState() => _GetStartedScreenState();
}

class _GetStartedScreenState extends State<GetStartedScreen> {
  // ignore: non_constant_identifier_names
  List<dynamic> Data = [
    {
      "Text": 'Your holiday shopping delivered to screen One ',
      "Image": 'assets/images/Emoji.png',
      "belowText":
          'Theres something for everyone to enjoy with Sweet shop Favourites Screen 1',
              "ImageIcon": 'assets/images/icon.png',
    },
    {
      "Text": 'Your holiday shopping delivered to screen Two ',
      "Image": 'assets/images/Emoji.png',
      "belowText":
          'Theres something for everyone to enjoy with Sweet shop Favourites Screen 2',
                "ImageIcon": 'assets/images/icon.png',
    }
  ];
  final PageController _pageController = PageController(initialPage: 0);
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
        const SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return Scaffold(
        backgroundColor: screenOneColor,
        body: Column(
  children: [
    Expanded(
      child: PageView.builder(
        scrollDirection: Axis.horizontal,
        controller: _pageController,
        itemCount: 2,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(33, 100, 60, 0),
            child: Column(
              children: [
                Text(
                  Data[index]['Text'],
                  style: const TextStyle(
                    fontSize: 40,
                    color: Color.fromARGB(255, 248, 247, 247),
                    fontFamily: 'TulpenOne',
                  ),
                ),
                Image.asset(Data[index]['Image']),
                const SizedBox(
                  height: 20,
                ),
                Text(
                  Data[index]['belowText'],
                  style: const TextStyle(
                    fontSize: 20,
                    color: Color.fromARGB(255, 248, 247, 247),
                    fontFamily: 'TulpenOne',
                  ),
                ),
                const SizedBox(
                  height: 30,
                ),
                Image.asset(Data[index]['ImageIcon'],width: 200,height: 200,),
              ],
            ),
          );
        },
      ),
    ),
    Padding(
      padding: const EdgeInsets.all(50.0),
      child: InkWell(
        onTap: () {
          Navigator.pushReplacement(context, MaterialPageRoute(builder: ((context) =>  HomePage())),
          );
        },
        child: Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 30.0,
            vertical: 15.0,
          ),
          decoration: BoxDecoration(
            color: const Color(0xffFAFBFD),
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                "Get Started",
                style: TextStyle(
                  fontSize: 16.0,
                  color: Color(0xff1E222B),
                ),
              ),
              SizedBox(width: 15.0),
              Icon(Icons.arrow_forward_sharp, color: Color(0xff1E222B)),
            ],
          ),
        ),
      ),
    ),
  ],
),

        );
  }
}

        

