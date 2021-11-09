import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
import 'buttonC.dart';

// ignore: camel_case_types
class cardsAppsWebs extends StatelessWidget {
  const cardsAppsWebs({ Key? key, required this.title, required this.img, required this.linkRota }) : super(key: key);
  final String title;
  final String img;
  final String linkRota;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Definicoes.twoColor.withOpacity(0.2),
        border: Border.all(width: 1, color: Definicoes.primaryColor),
        borderRadius: BorderRadius.circular(5)
      ),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                Container(
                  width: 400,
                  height: 180,
                  child: Image.asset(img, fit: BoxFit.fill,),
                ),

                Padding(padding: EdgeInsets.symmetric(vertical: 5)),

                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text("$title", 
                      style: GoogleFonts.oswald(
                        color: Definicoes.primaryColor,
                        fontSize: 20,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                  ],
                ),

                Padding(padding: EdgeInsets.symmetric(vertical: 30)),

                Center(child: ButtonC(rota: linkRota,))
              ],
            ),
          ),
        ),
      ),
    );
  }
}