import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
import 'package:styled_text/styled_text.dart';
import 'package:url_launcher/link.dart';

class MyCardTop extends StatelessWidget {
  const MyCardTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Container(
          child: AnimatedCard(
            direction: AnimatedCardDirection.top,
            duration: Duration(milliseconds: 2650),
            child: Center(
              child: Container(
                width: 170,
                height: 220,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                    image: AssetImage(AppImages.imgPersonCard),
                  )
                ),
              ),
            ),
          ),
        ),

        Padding(padding: EdgeInsets.only(top: 0, bottom: 10)),
        StyledText(
          text: '<bold><h1>Ricardo Oliveira</h1></bold>',
          tags: {
            'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.normal)),
            'h1': StyledTextTag(
              style: GoogleFonts.oswald(
                color: Definicoes.primaryColor,
                fontSize: 22.0,
                fontWeight: FontWeight.normal),
            )
          },
        ),

        AnimatedCard(
          direction: AnimatedCardDirection.bottom,
          duration: Duration(milliseconds: 2550),
          child: Center(
            child: StyledText(
              text: '<h2>Desenvolverdor Flutter</h2>',
              tags: {
                'h2': StyledTextTag(
                  style: GoogleFonts.oswald(
                    color: Definicoes.primaryColor,
                    fontSize: 22.0,
                    fontWeight: FontWeight.bold),
                  )
              },
            ),
          ),
        ),

        AnimatedCard(
          direction: AnimatedCardDirection.right,
          duration: Duration(milliseconds: 2500),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 30),
            child: Center(
              child: Container(
                width: 250,
                height: 1,
                color: Definicoes.logoColor,
              ),
            ),
          ),
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AnimatedCard(
              direction: AnimatedCardDirection.left,
              duration: Duration(milliseconds: 2550),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Link(
                  uri: Uri.parse("https://www.instagram.com/ricardooliver.ads/"),
                  target: LinkTarget.blank, 
                  builder: (context, followLink){
                    return GestureDetector(
                      onTap: followLink,
                      child: Icon(FontAwesomeIcons.instagramSquare, color: Definicoes.bgColor,size: 30),
                    );
                  }
                ),
              ),
            ),

            AnimatedCard(
              direction: AnimatedCardDirection.bottom,
              duration: Duration(milliseconds: 2000),
              child: MouseRegion(
                cursor: SystemMouseCursors.click,
                child: Link(
                  uri: Uri.parse("https://github.com/ricardooliver-ads-2019"),
                  target: LinkTarget.blank, 
                  builder: (context, followLink){
                    return GestureDetector(
                      onTap: followLink,
                      child: Icon(FontAwesomeIcons.githubSquare, color: Definicoes.bgColor,size: 30),
                    );
                  }
                ),
              ),
            ),

              AnimatedCard(
                duration: Duration(milliseconds: 2550),
                direction: AnimatedCardDirection.right,
                child: MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Link(
                    uri: Uri.parse("https://www.linkedin.com/feed/?trk=homepage-basic_google-one-tap-submit"),
                    target: LinkTarget.blank, 
                    builder: (context, followLink){
                      return GestureDetector(
                        onTap: followLink,
                        child: Icon(FontAwesomeIcons.linkedin, color: Definicoes.bgColor,size: 30),
                      );
                    }
                  ),
                ),
              ),
                
            ],
          ),



      ],
    );
  }
}