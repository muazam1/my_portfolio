import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../constants/skills_items.dart';

class SkillsMobile extends StatelessWidget {
  const SkillsMobile({super.key});

  @override
  Widget build(BuildContext context) {
    return  ConstrainedBox(
      constraints: const BoxConstraints(
        maxWidth: 500,
      ),
      child: Column(children: [
        //platforms
        for(int i = 0; i<platformItems.length; i++)
          Container(
            margin:const EdgeInsets.only(bottom: 5),
            width: double.maxFinite,
            decoration: BoxDecoration(
              color: CustomColors.bgLight2,
              borderRadius: BorderRadius.circular(5.0),
            ),
            child: ListTile(
              contentPadding:const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
              leading: Image.asset(platformItems[i]['img'],width: 26,),
              title: Text(platformItems[i]["title"]),
            ),
          ),
        const SizedBox(height: 50,),
        //skills
          Wrap(
            spacing: 10.0,
            runSpacing: 10.0,
            alignment: WrapAlignment.center,
            children:[
              for(int i=0; i<skillItems.length;i++)
              Chip(
                padding: const EdgeInsets.symmetric(
                    vertical: 12,
                    horizontal: 16
                ),
                backgroundColor: CustomColors.bgLight2,
                label: Text(skillItems[i]["title"]),
                avatar: Image.asset(skillItems[i]["img"]
                ),
              ),
            ], ),
          // Wrap(
          //   spacing: 30.0,
          //   runSpacing: 10.0,
          //   alignment: WrapAlignment.start,
          //   children:[
          //     Chip(
          //       padding: const EdgeInsets.symmetric(
          //           vertical: 12,
          //           horizontal: 16
          //       ),
          //       backgroundColor: CustomColors.bgLight2,
          //       label: Text(skillItems[i]["title"]),
          //       avatar: Image.asset(skillItems[i]["img"]
          //       ),
          //     ),
          //   ], ),
      ]
      ),
    );
  }
}
