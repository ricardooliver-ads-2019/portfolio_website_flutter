import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/animated_progress_indicator.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

// ignore: must_be_immutable
class ContactsPageScreen extends StatelessWidget {
  
  List listSkills = [
    {'img': AppImages.imgIconFlutter, 'title':'Diciplina', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgIconFlutter, 'title':'Gerenciamento', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgIconFlutter, 'title':'Diciplina', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgIconFlutter, 'title':'Gerenciamento', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgIconFlutter, 'title':'Diciplina', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgIconFlutter, 'title':'Gerenciamento', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgIconFlutter, 'title':'Diciplina', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgIconFlutter, 'title':'Gerenciamento', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgIconFlutter, 'title':'Diciplina', 'color': Colors.blue, 'porcetage': 0.85},
    {'img': AppImages.imgIconFlutter, 'title':'Gerenciamento', 'color': Colors.blue, 'porcetage': 0.85},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Definicoes.bgColor,
      appBar: AppBar(
        title: Text("Textes"),
      ),
      body: Column(
        children: [
          ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: listSkills.length,
            itemBuilder: (context, index){
              return Padding(padding: EdgeInsets.all(10.0), 
                child: Container(
                  width: 50,
                  child: AnimatedCircularProgressIndicator(
                    colorC: listSkills[index]['color'],
                    img: listSkills[index]['img'],
                    label: listSkills[index]['title'],
                    percentage: listSkills[index]['porcetage'],
                  ),
                ),
              );

          }),

          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
                children: [
                    //provide all the things u want to horizontally scroll here
                ]
            ),
          ),
        ],
      )
    );
  }
}
