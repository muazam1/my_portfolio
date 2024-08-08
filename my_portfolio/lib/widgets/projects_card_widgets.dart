import 'package:flutter/material.dart';
import 'package:my_portfolio/utils/project_utils.dart';
//import 'dart:js'as js;
import '../constants/colors.dart';

class ProjectsCardWidgets extends StatelessWidget {
  const ProjectsCardWidgets({super.key,required this.project });

final ProjectUtils project;

  @override
  Widget build(BuildContext context) {
    return Container(
            clipBehavior: Clip.antiAlias,
            height: 290,
            width: 260,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: CustomColors.bgLight2,
            ),
            child: Column(
              children: [
                Image.asset(project.image,height: 140,width: 260,
                  fit: BoxFit.cover,),
//Title
                 Padding(
                  padding: const EdgeInsets.fromLTRB(12,15,12,12),
                  child: Text(project.title,style:const TextStyle(
                    fontWeight: FontWeight.w600,
                    color: CustomColors.whitePrimary,
                  ),),
                ),
//subtitle
                Padding(
                  padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
                  child: Text(
                    project.subtitle,style:const TextStyle(
                    fontSize: 12,
                    color: CustomColors.whiteSecondary,
                  ),),
                ),
                const Spacer(),
//footer
                Container(
                  color: CustomColors.bgLight1,
                  padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 10),
                  child: Row(
                    children: [
                    const  Text("Available For ",
                        style: TextStyle(
                            color: CustomColors.yellowSecondary,
                            fontSize: 10),),
                      const Spacer(),
                      //if(project.andriodlink!= null)
                      InkWell(
                          onTap: (){
                           // js.context.callMethod("open",[project.andriodlink]);
                          },
                          child: Image.asset("assets/android_icon.png",width: 20,height: 20,)),
                     // if(project.ioslink != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: InkWell(
                            onTap: (){
                             // js.context.callMethod("open",[project.ioslink]);
                            },
                            child: Image.asset("assets/ios.png",width: 24,height: 28,)),
                      ),
                     // if(project.weblink != null)
                      Padding(
                        padding: const EdgeInsets.only(left: 5),
                        child: InkWell(
                            onTap: (){
                            //  js.context.callMethod("open",[project.weblink]);
                            },
                            child: Image.asset("assets/web_icon.jpeg",width: 20,height: 20,)),
                      ),

                    ],
                  ),
                )
              ],
            ),
    );
  }
}
