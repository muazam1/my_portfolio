//import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:my_portfolio/styles/style.dart';
import 'package:my_portfolio/widgets/site_logo.dart';

import '../constants/colors.dart';
import '../constants/nav_items.dart';

class HeaderDesktop extends StatelessWidget {
  const HeaderDesktop({super.key, required this.onNavMenuTap});
  final Function(int) onNavMenuTap;

  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 60,
      margin: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
      width: double.infinity,
      decoration: kHeaderDecoration,
      // color: Colors.blueGrey,
      child: Row(
        children: [
          SiteLogo(
            onTap: (){},
          ),
          const Spacer(),
          for(int i = 0; i < navTitles.length; i++)
            TextButton(onPressed: (){
              onNavMenuTap(i);
            }, child: Text(navTitles[i],
              style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w500,color:CustomColors.whitePrimary),),
            )
        ],
      ),
    );
  }
}
