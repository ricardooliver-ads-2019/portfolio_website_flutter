import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
import 'package:url_launcher/link.dart';

class MyCardBotton extends StatelessWidget {
  const MyCardBotton({ Key? key }) : super(key: key);

  teste(){
    print("Olá Mundo");
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height,
      
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          
          MouseRegion(
            cursor: SystemMouseCursors.click,
            child: Link(
              uri: Uri.parse("https://drive.google.com/u/0/uc?id=1KmAlbVxd-t0QOyYGjWV01H1d0H3BIhlF&export=download"), 
              builder: (context, followLink){
                return GestureDetector(
                  onTap: followLink,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Definicoes.twoColor,
                      border: Border.all(color: Definicoes.bgColor, width: 1),
                      borderRadius: BorderRadius.circular(10),
                      boxShadow: [
                        BoxShadow(
                          color: Definicoes.bgColor,
                          spreadRadius: 2,
                          blurRadius: 2,
                          //offset: Offset(10,10)
                        )
                      ]
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text("Download-CV", 
                            style: GoogleFonts.oswald(
                              color: Definicoes.primaryColor,
                              fontSize: 15.0,
                              fontWeight: FontWeight.w600
                            ),
                          ), 
                          Icon(FontAwesomeIcons.cloudDownloadAlt, color: Definicoes.threeColor, size: 25,)
                        ],
                      ),
                    ),
                  ),
                );
              }
            ),
          ),
          
        ],
      )
    );
  }
}