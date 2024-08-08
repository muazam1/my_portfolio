import 'package:flutter/material.dart';
import 'package:my_portfolio/widgets/projects_card_widgets.dart';

import '../constants/colors.dart';
import '../utils/project_utils.dart';
class ProjectSection extends StatelessWidget {
  const ProjectSection({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    final screenWidth = screenSize.width;
    return    Container(
        width: screenWidth,
        padding: const EdgeInsets.fromLTRB(25, 20, 25, 60),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
//work projects titles
              const Center(
                child:  Text("My projects",style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.whitePrimary,
                ),),
              ) ,
              const SizedBox(height: 50,),
              // Projects
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
                child: Wrap(
                  spacing: 25,
                  runSpacing: 25,
                  children: [
                    for(int i = 0; i < myProjects.length; i++)
                      ProjectsCardWidgets(project: myProjects[i],),
                  ],
                ),
              ),
              const SizedBox(height: 80,),
              const Center(
                child:  Text("Next Target projects",style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: CustomColors.whitePrimary,
                ),),
              ),
              const SizedBox(height: 50,),
              // Projects
              ConstrainedBox(
                constraints: const BoxConstraints(maxWidth: 900),
                child: Wrap(
                  spacing: 25,
                  runSpacing: 25,
                  children: [
                    for(int i = 0; i < hobbyProjectsUtils.length; i++)
                      ProjectsCardWidgets(project: hobbyProjectsUtils[i],),
                  ],
                ),
              ),
            ]));
  }
}
