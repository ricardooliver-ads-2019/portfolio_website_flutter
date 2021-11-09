import 'package:animated_card/animated_card.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
class MyCardContact extends StatefulWidget {
  const MyCardContact({ Key? key }) : super(key: key);

  @override
  _MyCardContactState createState() => _MyCardContactState();
}

class _MyCardContactState extends State<MyCardContact> {
  @override
  Widget build(BuildContext context) {
    var telaWidth = MediaQuery.of(context).size.width;
    return Container(
      width: telaWidth > 550? 410 : telaWidth * 1,
      height: 450,
      child: Center(
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            
            Positioned(
              top: 75,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Container(
                  width: telaWidth >550 ? 400 : telaWidth * 0.95,
                  height: 360,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Definicoes.twoColor.withOpacity(0.1),
                    border: Border.all(color: Definicoes.primaryColor, width: 0.5)
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Container(
                      
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AnimatedCard(
                                direction: AnimatedCardDirection.left,
                                duration: Duration(milliseconds: 2550),
                                child: Image(image: AssetImage(AppImages.iconPhone),width: telaWidth > 400 ? 40 : 25,)
                              ),
                              SizedBox( width: telaWidth > 400 ? 20 : 10),
                              AnimatedCard(
                                direction: AnimatedCardDirection.top,
                                duration: Duration(milliseconds: 2550),
                                child: AutoSizeText(
                                  "(69) - 992420483",
                                  style: GoogleFonts.oswald(
                                    color: Definicoes.twoColor,
                                    fontSize: telaWidth > 400 ? 18 : 16,
                                  ), 
                                ),
                              ),
                                                           
                            ],
                          ),
            
                          SizedBox( height: 20,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AnimatedCard(
                                direction: AnimatedCardDirection.left,
                                duration: Duration(milliseconds: 2550),
                                child: Image(image: AssetImage(AppImages.iconEmailp),width: telaWidth > 400 ? 40 : 25,)
                              ),
                              SizedBox( width: telaWidth > 400 ? 20 : 10),
                              AnimatedCard(
                                direction: AnimatedCardDirection.top,
                                duration: Duration(milliseconds: 2550),
                                child: AutoSizeText(
                                  "ricardooliver.ads.2019@gmail.com",
                                  style: GoogleFonts.oswald(
                                    color: Definicoes.twoColor,
                                    fontSize: telaWidth > 400 ? 18 : 16,
                                  ), 
                                ),
                              ),
                            ],
                          ),
            
                          SizedBox( height: 20,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AnimatedCard(
                                direction: AnimatedCardDirection.left,
                                duration: Duration(milliseconds: 2550),
                                child: Image(image: AssetImage(AppImages.iconLinkedin),width: telaWidth > 400 ? 40 : 25,)
                              ),
                              SizedBox( width: telaWidth > 400 ? 20 : 10),
                              AnimatedCard(
                                direction: AnimatedCardDirection.top,
                                duration: Duration(milliseconds: 2550),
                                child: AutoSizeText(
                                  "ricardo-oliveira-ads",
                                  style: GoogleFonts.oswald(
                                    color: Definicoes.twoColor,
                                    fontSize: telaWidth > 400 ? 18 : 16,
                                  ), 
                                ),
                              ),
                            ],
                          ),
            
                          SizedBox( height: 20,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              AnimatedCard(
                                direction: AnimatedCardDirection.left,
                                duration: Duration(milliseconds: 2550),
                                child: Image(image: AssetImage(AppImages.iconInstagram),width: telaWidth > 400 ? 40 : 25,)
                              ),
                              SizedBox( width: telaWidth > 400 ? 20 : 10),
                              AnimatedCard(
                                direction: AnimatedCardDirection.top,
                                duration: Duration(milliseconds: 2550),
                                child: AutoSizeText(
                                  "ricardooliver.ads",
                                  style: GoogleFonts.oswald(
                                    color: Definicoes.twoColor,
                                    fontSize: telaWidth > 400 ? 18 : 16,
                                  ), 
                                ),
                              ),
                            ],
                          ),

                          SizedBox( height: 20,),
            
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 0,
              child: AnimatedCard(
                direction: AnimatedCardDirection.top,
                duration: Duration(milliseconds: 2550),
                child: Container(
                  width: 151,
                  height: 151,
                  decoration: BoxDecoration(
                    color: Definicoes.primaryColor,
                    shape: BoxShape.circle,
                    border: Border.all(color: Definicoes.primaryColor, width: 10),
                  ),
                ),
              ),
            ),

            Positioned(
              top: 0.5,
              child: AnimatedCard(
                direction: AnimatedCardDirection.top,
                duration: Duration(milliseconds: 2550),
                child: Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Definicoes.bgColor, width: 9),
                    image: DecorationImage(image: AssetImage(AppImages.imgAvata))
                          
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}