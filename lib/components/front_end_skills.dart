import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/animated_progress_indicator.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';

class FrontEndSkills extends StatelessWidget {
  const FrontEndSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [




        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: Stack(
            children:[
                AnimatedCircularProgressIndicator(
                img: AppImages.imgAvata,
                label: "HTML", 
                colorC: Colors.blue, 
                percentage: 0.70, 
              ),
            ]
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            img: AppImages.imgAvata,
            label: "CSS", 
            colorC: Colors.orange, 
            percentage: 0.70, 
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            img: AppImages.imgAvata,
            label: "JavaScript", 
            colorC: Colors.yellow, 
            percentage: 0.50, 
          ),
        ),
      
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: Stack(
            children:[
                AnimatedCircularProgressIndicator(
                img: AppImages.imgAvata,
                label: "HTML", 
                colorC: Colors.blue, 
                percentage: 0.70, 
              ),
            ]
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            img: AppImages.imgAvata,
            label: "CSS", 
            colorC: Colors.orange, 
            percentage: 0.70, 
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            img: AppImages.imgAvata,
            label: "JavaScript", 
            colorC: Colors.yellow, 
            percentage: 0.50, 
          ),
        ),
      ],
    );
  }
}