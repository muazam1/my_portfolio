import 'package:flutter/material.dart';

import '../constants/colors.dart';
class MainDesktop extends StatelessWidget {
  const MainDesktop ({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return  Container(
    height: screenHeight/1.2,
    constraints: const BoxConstraints(maxHeight: 350.0),
    margin: const EdgeInsets.symmetric(horizontal: 20.0),
    child: Row(
    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
    children: [
    Column(
    mainAxisAlignment: MainAxisAlignment.center,
    children: [
    const Text("Hi\nI'm Muazam Qayyum\nA Flutter Developer",
    style:  TextStyle(
    height: 1.5,
    fontSize: 30,fontWeight: FontWeight.bold,color: CustomColors.whitePrimary),),
    const SizedBox(height: 15,),
      SizedBox(
      width: 250,
      height: 60,
      child: ElevatedButton(

      style: ElevatedButton.styleFrom( backgroundColor: CustomColors.yellowSecondary),
      onPressed: (){},
      child:const Text("Get in Touch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: CustomColors.whitePrimary),),),
      ),
      ],
      ),
      Image.asset(
      "assets/pic.png",
      width: screenWidth/2.5,),

      ],
      ),
      );
  }
}
