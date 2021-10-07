import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/animated_progress_indicator.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';

class SoftSkills extends StatelessWidget {
  SoftSkills({Key? key}) : super(key: key);

  final listSkills = [
    {'img': AppImages.imgAvata.toString(), 'title':'Diciplina', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgAvata.toString(), 'title':'Gerenciamento', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgAvata.toString(), 'title':'Diciplina', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgAvata.toString(), 'title':'Gerenciamento', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgAvata.toString(), 'title':'Diciplina', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgAvata.toString(), 'title':'Gerenciamento', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgAvata.toString(), 'title':'Diciplina', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgAvata.toString(), 'title':'Gerenciamento', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgAvata.toString(), 'title':'Diciplina', 'color': Colors.blue, 'porcetage': 0.85},{'img': AppImages.imgAvata, 'title':'Gerenciamento', 'color': Colors.blue, 'porcetage': 0.85},
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        ListView.builder(
          itemCount: listSkills.length,
          itemBuilder: (_, index){
            var skill = listSkills[index];
            return Padding(
              padding: const EdgeInsets.all(32.0),
              child: SizedBox(
                width: 200,
                child: AnimatedCircularProgressIndicator(
                  img: skill['img'].toString(),
                  label: skill['title'].toString(), 
                  colorC: skill['color'], 
                  percentage: skill['porcetage'], 
                ),
              ),
            );

          },
        )
      ],
    );
  }
}
