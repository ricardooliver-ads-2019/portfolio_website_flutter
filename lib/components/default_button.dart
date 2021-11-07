import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

class DefaultButton extends StatelessWidget {
   DefaultButton({
    Key ?key,
    required this.imageSrc,
    required this.text,
    required this.press,
  }) : super(key: key);

  final String imageSrc, text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      style: TextButton.styleFrom(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        primary: Definicoes.twoColor,
        padding: EdgeInsets.symmetric(
        vertical: 0,
        horizontal: Definicoes.kDefaultPadding,
      ),
      ),
      
      
      onPressed: (){
        print("Hello World");
        press();
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(flex: 2,child: Image.asset(imageSrc, height: 20)),
          Expanded(flex: 0, child: SizedBox(width: Definicoes.kDefaultPadding / 2)),
          Expanded(
            flex: 3,
            child: Text(text, 
              style: GoogleFonts.oswald(
                color: Definicoes.primaryColor,
                fontSize: 15,
                fontWeight: FontWeight.normal
              ),
            )
          ),
        ],
      ),
    );
  }
}
