import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

class BigHeader extends StatelessWidget {
  final pagina;
  const BigHeader({Key? key, required this.pagina}) : super(key: key);

  get colorizeTextStyle => null;

  get colorizeColors => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            padding: EdgeInsets.symmetric(horizontal:24, vertical: 0),
            child: AnimatedTextKit(
              animatedTexts: [
                ColorizeAnimatedText(
                  '$pagina',
                  textStyle: Definicoes.colorizeTextStyle,
                  colors: Definicoes.colorizeColors,
                ),
              ],
              repeatForever: true,

            ),
          ),

          
        ],
      ),
    );
  }
}