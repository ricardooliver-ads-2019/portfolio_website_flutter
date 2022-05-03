import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';

class Infos extends StatelessWidget {
  const Infos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 250,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Stack(
            children: [
              Center(
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.white.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 10,
                        //offset: Offset(30.0, 30.0)
                      )
                    ],
                  ),
                  child: Image.asset(AppImages.imgHomeP, 
                    
                    fit: BoxFit.contain,
                             
                  ),
                ),
              ),

              Center(
                child: Container(
                  child: Center(
                    child: AnimatedCard(
                      duration: Duration(seconds: 2),
                      direction: AnimatedCardDirection.right,
                      child: Center(
                        child: Image.asset(AppImages.imgPerson, 
                          width: 180, 
                          height: 430,
                          fit: BoxFit.contain,
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}