import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
import 'package:styled_text/styled_text.dart';

class WelkomHome extends StatelessWidget {
  const WelkomHome({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var telaWidth = MediaQuery.of(context).size.width;
    return Container(
      child: Column(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              
              StyledText(
                textAlign: TextAlign.right,
                text: '<bold><h1>Ricardo Oliveira</h1></bold>',
                tags: {
                  'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.normal)),
                  'h1': StyledTextTag(
                    style: GoogleFonts.yellowtail(
                      color: Definicoes.primaryColor,
                      fontSize: telaWidth > 365 ? 55 : 38,
                      fontWeight: FontWeight.normal),
                  )
                },
              ),

              Container( 
                width: telaWidth > 1000 ? 500 : telaWidth * 0.9,              
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Desenvolvedor',
                      style: GoogleFonts.oswald(
                        color: Definicoes.twoColor,
                        fontSize: telaWidth > 365 ? 28 : 20,
                        fontWeight: FontWeight.w600
                      ),
                    ),
                    const SizedBox(width: 10.0,),
                    DefaultTextStyle(
                      style: GoogleFonts.oswald(
                        color: Definicoes.primaryColor,
                        fontSize: telaWidth > 365 ? 28 : 20,
                        fontWeight: FontWeight.w600
                      ),
                      child: AnimatedTextKit(
                        repeatForever: true,
                        animatedTexts: [
                          ScaleAnimatedText('Mobile'),
                          ScaleAnimatedText('Flutter'),
                        ],
                        onTap: () {
                          print("Tap Event");
                        },
                      ),
                    ),
                  ],
                )
              ),

            ],
          ),
          

          Image.asset(AppImages.myImg, width: 500, height: 500,)
        ],
      ),
      
    );
  }
}