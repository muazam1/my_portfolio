import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/colors.dart';

import '../constants/educaton.dart';
class EducationSection extends StatelessWidget {
  const EducationSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenwidth = MediaQuery.of(context).size.width;
    return Container(
        width: screenwidth,
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          color: CustomColors.scaffoldBg,
          borderRadius: BorderRadius.circular(50),
        ),
        child:Padding(
          padding: const EdgeInsets.fromLTRB(0,50,0,20),
          child: Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Education",style: TextStyle(fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: CustomColors.whitePrimary
                    ),),
                    Icon(Icons.school,size: 70,),
                  ],
                ),
              for(int i=0;i<mfsc.length;i++)
            Container(
                         width:  screenwidth,
              decoration: BoxDecoration(
                color: CustomColors.bgLight2,
                borderRadius: BorderRadius.circular(100),
              ),
              child: ListTile(
                contentPadding: const EdgeInsets.symmetric(horizontal: 20,vertical: 30),
                leading: const Icon(Icons.school,size: 80,),
                title: Text(mfsc[i]["date"]),

                subtitle: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(mfsc[i]["degree"],style:const TextStyle(fontSize: 30,fontWeight: FontWeight.bold),),
                    Text(mfsc[i]["name"],style:const TextStyle(fontWeight: FontWeight.w600,fontSize: 20),)
                  ],
                ),
              ),
            ),
              ],
            ),
          ),
        )

      );
  }
}
