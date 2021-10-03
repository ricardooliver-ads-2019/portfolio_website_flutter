import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

class BigHeader extends StatelessWidget {
  final pagina;
  const BigHeader({Key? key, required this.pagina}) : super(key: key);

  get colorizeTextStyle => null;

  get colorizeColors => null;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 50),
      child: Column(
        children: [
          Stack(
            children:[ 
              SafeArea(
                child: Image.asset(
                  AppImages.imgBannerG,
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.2,
                  fit: BoxFit.cover,
                ),
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal:80),
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

                  Container(
                    child: Image.asset(
                      AppImages.imgRobo, 
                      width: MediaQuery.of(context).size.width * 0.2,
                      height: MediaQuery.of(context).size.height * 0.2,
                    ),
                  ),
                ],
              ),

            ],
          )
        ],
      ),
    );
  }
}