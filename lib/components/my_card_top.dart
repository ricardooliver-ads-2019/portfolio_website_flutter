import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
import 'package:styled_text/styled_text.dart';

class MyCardTop extends StatelessWidget {
  const MyCardTop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      
      children: [
        Container(
          width: 170,
          height: 150,
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
              image: AssetImage(AppImages.avata),
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



      ],
    );
  }
}