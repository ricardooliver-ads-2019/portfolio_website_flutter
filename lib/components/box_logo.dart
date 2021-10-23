import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';

class BoxLogo extends StatelessWidget {
  const BoxLogo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.passthrough,
      children:[
        Center(
          child: Container(
            width: 80,
            height: 70,
            child: Lottie.network(
              'https://assets3.lottiefiles.com/packages/lf20_nevctvni.json',
              fit: BoxFit.fill
            ),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              //color: Colors.red,
              border: Border.all(width: 3, color: Colors.white)
              
            ),
            
          ),
        ),
        Center(
          child: Container(
            height: 70,
            width: 80,
            child: Image.asset(AppImages.logoFull, 
              fit: BoxFit.cover,
            ),
            
          ),
        ),
      ] 
    );
  }
}