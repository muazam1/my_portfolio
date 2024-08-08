import 'package:flutter/material.dart';

import '../constants/colors.dart';

class MainMobile extends StatelessWidget {
  const MainMobile({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    final screenHeight = screenSize.height;
    return  Container(
      margin: const EdgeInsets.symmetric(horizontal: 40,vertical: 30),
      height: screenHeight,
      constraints:const BoxConstraints(
        minHeight: 750.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Image.asset(
              "assets/pic.png",
              width: screenWidth,
              height: 400,
            ),
          const SizedBox(height: 30,),
          Container(
            width: screenWidth,
            child: const Text("Hi\nI'm Muazam Qayyum\nA Flutter Developer",
              style:  TextStyle(
                  height: 1.5,
                  fontSize: 24,fontWeight: FontWeight.bold,color: CustomColors.whitePrimary),),
          ),
          const SizedBox(height: 15,),
          SizedBox(
            width: 180,
            height: 60,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: CustomColors.yellowPrimary),
              onPressed: (){},
              child:const Text("Get in Touch",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: CustomColors.whitePrimary),),),

          )],
      ),
    );
  }
}
