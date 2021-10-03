import 'package:animated_text_kit/animated_text_kit.dart';
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
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: Image.asset(AppImages.imgHomeP, 
                    width: MediaQuery.of(context).size.width * 0.8, 
                    height: MediaQuery.of(context).size.height* 0.8,
                    fit: BoxFit.contain,
                  ),
              ),
            ),

            Center(
              child: Padding(
                padding: const EdgeInsets.symmetric(vertical: 80),
                child: Image.asset(AppImages.imgPerson, 
                    width: MediaQuery.of(context).size.width * 0.5, 
                    height: MediaQuery.of(context).size.height* 0.5,
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