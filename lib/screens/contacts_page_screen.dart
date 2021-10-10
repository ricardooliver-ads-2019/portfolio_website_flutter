import 'dart:math';
import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/animated_progress_indicator.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

// ignore: must_be_immutable
class ContactsPageScreen extends StatelessWidget {
  final ScrollController controller = ScrollController();
  List listSkills = [
    {'img': AppImages.imgIconFlutter, 'title':'Diciplina', 'color': Colors.orange, 'porcetage': 0.85},
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
      body: CustomScrollView(
        slivers:[
          SliverToBoxAdapter(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: MediaQuery.of(context).size.width*0.70,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black12,
                  ),
                  child: Column(
                    children: [
                      Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 20),
                          child: Text("Front-End", style: TextStyle(
                            fontSize: 25,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500,
                          ),),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(32.0),
                        child: Container(
                          width: max(300, 550),
                          height: 150,
                          child: Scrollbar(
                            controller: controller,
                            isAlwaysShown: true,
                            child: ListView.builder(
                              controller: controller,
                              scrollDirection: Axis.horizontal,
                              itemCount: listSkills.length,
                              itemBuilder: (_, index){
                                return Padding(padding: EdgeInsets.all(20.0), 
                                  child: Container(
                                    width:80,
                                    height: 50,
                                    child: AnimatedCircularProgressIndicator(
                                      colorC: listSkills[index]['color'],
                                      img: listSkills[index]['img'],
                                      label: listSkills[index]['title'],
                                      percentage: listSkills[index]['porcetage'],
                                    ),
                                  ),
                                );
                              },
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ]
      )
    );
  }
}