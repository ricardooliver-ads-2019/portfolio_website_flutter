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
          width: 170,
          height: 220,
          decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black38.withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 8,
                offset: Offset(20.0, 15.0)
              )
            ],
            image: DecorationImage(
              image: AssetImage(AppImages.imgPersonCard),
            )
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

        StyledText(
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

        Padding(
          padding: const EdgeInsets.only(bottom: 10),
          child: Container(
            width: 230,
            height: 1,
            color: Definicoes.logoColor,
          ),
        ),

        Row(
            children: [
              Expanded(
                flex: 1,
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

              Expanded(
                flex: 1,
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

                Expanded(
                  flex: 1,
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