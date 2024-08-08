import 'package:flutter/material.dart';

import '../constants/colors.dart';

class CustomTextField extends StatelessWidget {
   const CustomTextField({super.key,  this.maxLine= 1,  this.hintText , this.controller});
 final TextEditingController? controller;
 final int maxLine ;
 final String? hintText;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      maxLines: maxLine,
      style: const TextStyle(
        color: CustomColors.scaffoldBg,),
      decoration: InputDecoration(
        contentPadding:const EdgeInsets.all(16),
        hintText: hintText,
        hintStyle: const TextStyle(color: CustomColors.hintDark),
        filled: true,
        fillColor: CustomColors.whiteSecondary,
        focusedBorder: getOulineInputBorder,
        enabledBorder:getOulineInputBorder,
        border: getOulineInputBorder,
      ),
    );
  }
  OutlineInputBorder get getOulineInputBorder {
    return OutlineInputBorder(
      borderSide: BorderSide.none,
      borderRadius: BorderRadius.circular(10),
    );
  }
}
