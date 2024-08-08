import 'package:flutter/material.dart';
import 'package:my_portfolio/constants/size.dart';

import '../constants/colors.dart';
import 'custom_text_field.dart';
import 'dart:js' as js;
class ContactSection extends StatelessWidget {
  const ContactSection({super.key});

  @override
  Widget build(BuildContext context) {
    return  Container(
      padding: const EdgeInsets.fromLTRB(25, 20, 5, 60),
      decoration:const BoxDecoration(
          color: CustomColors.bgLight1
      ),
      child: Column(
        children: [
          const Text("Get in Touch",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 24,color: CustomColors.whitePrimary),),
          const SizedBox(height: 50,),
          ConstrainedBox(
            constraints:const BoxConstraints(
              maxWidth: 700,
              maxHeight: 100
            ),
            child: LayoutBuilder(
              builder: (context,constraints){
                if(constraints.maxWidth>=kMinDesTopWidth){
                  return buildNameEmailTextFieldDesktop();
                }else{
                  return buildNameEmailTextFieldMobile();
                }
              },
            ),
          ),
          //message
          const SizedBox(height: 15,),
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: CustomTextField(
              hintText: "Your Message",
              maxLine: 16,
            ),
          ),
          const SizedBox(height: 20,),
          // Send Button
          ConstrainedBox(
            constraints: const BoxConstraints(
              maxWidth: 700,
            ),
            child: SizedBox(
                width: double.maxFinite,
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(backgroundColor: CustomColors.yellowSecondary),
                    onPressed: (){},
                    child: const Text("Submit Here",style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,
                    color: CustomColors.whitePrimary),),
                )
            ),
          ),
          const SizedBox(height: 30,),
          ConstrainedBox(
              constraints: const BoxConstraints(
                maxWidth: 300,
              ),
              child: const  Divider()),
          const SizedBox(height: 15,),
          //text icon
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("You Can Contact me Through",style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
              SizedBox(width: 3,),
              Icon(Icons.arrow_downward),
            ],
          ),
          const SizedBox(height: 15,),
          //SNS Icon Button links
          Wrap(
            spacing: 12,
            runSpacing: 12,
            alignment: WrapAlignment.center,
            children: [
              InkWell(
                onTap: (){
                  js.context.callMethod("open",["https://github.com/muazam1"]);
                },
                child: Image.asset("assets/github.png",width: 28,),),
              InkWell(
                onTap: (){
                  js.context.callMethod("open",["http://www.linkedin.com/in/muazam-qayyum"]);
                },
                child: Image.asset("assets/linkedin.png",width: 28,),),
              InkWell(
                onTap: (){
                  js.context.callMethod("open",["https://web.facebook.com/muazam.khan.146612"]);
                },
                child: Image.asset("assets/facebook.png",width: 28,),),
              InkWell(
                onTap: (){
                  js.context.callMethod("open",["https://t.me/muazamqayyum"]);
                },
                child: Image.asset("assets/telegram.png",width: 28,),),
              InkWell(
                onTap: (){
                  js.context.callMethod("open",["https://www.instagram.com/muazamqayyumkhan/"]);
                },
                child: Image.asset("assets/instagram.png",width: 28,),),
            ],
          ),

        ],
      ),
    );
  }
  Row buildNameEmailTextFieldDesktop (){
    return Row(
      children: [
        //Name
        Flexible(
          child: CustomTextField(
            hintText: "Your Name",
          ),
        ),
        //email
        SizedBox(width: 15,),
        Flexible(child: CustomTextField(
          hintText: "Your Email",
        ),
        ),
      ],
    );
  }
   Column buildNameEmailTextFieldMobile (){
    return Column(
      children: [
        //Name
        Flexible(
          child: CustomTextField(
            hintText: "Your Name",
          ),
        ),
        //email
        SizedBox(height: 15,),
        Flexible(child: CustomTextField(
          hintText: "Your Email",
        ),
        ),
      ],
    );
  }
}
