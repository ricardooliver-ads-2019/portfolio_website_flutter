import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';


class BoxLogo extends StatelessWidget {
  const BoxLogo({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 80,
        decoration: BoxDecoration(
          //color: Definicoes.threeColor,
          borderRadius: BorderRadius.circular(50)
        ),
        child: Image.asset(AppImages.logoFull, 
          fit: BoxFit.fill,
        ),
        
      ),
    );
  }
}