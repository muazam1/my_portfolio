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
        minHeight: 650.0,
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ShaderMask(
            shaderCallback: (bounds){
              return  LinearGradient(colors: [
                CustomColors.scaffoldBg.withOpacity(0.6),
                CustomColors.scaffoldBg.withOpacity(0.6),
              ]).createShader(bounds);
            },
            blendMode: BlendMode.srcATop,
            child: Image.asset(
              "assets/pic.png",
              width: screenWidth,
              height: 400,
            ),
          ),
          const SizedBox(height: 30,),
          const Text("Hi\nI'm Muazam Qayyum\nA Flutter Developer",
            style:  TextStyle(
                height: 1.5,
                fontSize: 24,fontWeight: FontWeight.bold,color: CustomColors.whitePrimary),),
          const SizedBox(height: 15,),
          SizedBox(
            width: 190,
            height: 60,
            child: ElevatedButton(
              style:const ButtonStyle(
                backgroundColor: WidgetStateColor.transparent,

              ),
              onPressed: (){},
              child:const Text("Get in Touch"),),

          )],
      ),
    );
  }
}
