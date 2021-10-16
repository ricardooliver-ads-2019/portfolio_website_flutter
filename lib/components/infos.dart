import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';

class Infos extends StatelessWidget {
  const Infos({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
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
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset(AppImages.imgPerson, 
                  width: 200, 
                  height: 500,
                  fit: BoxFit.contain,
                ),
              ),
            ),


            Container(
              
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 370),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    DefaultTextStyle(
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 25.0,
                        fontFamily: 'Agne',                       
                      ),

                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          TypewriterAnimatedText('Desenvolverdor\n    Mobile Flutter',
                            speed: const Duration(milliseconds: 100)
                          
                          ),
                          
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                        
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )
      ],
    );
  }
}