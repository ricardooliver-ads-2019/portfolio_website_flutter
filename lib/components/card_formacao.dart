import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

class CardFormacao extends StatelessWidget {
  const CardFormacao({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var telaWidth = MediaQuery.of(context).size.width;
    return Container(
      width: telaWidth > 350 ? 280 : telaWidth * 1,
      height: 300,
      decoration: BoxDecoration(
        //color: Colors.white
      ),
      child: Stack(
        children: [
          Positioned(
            left: 10,
            top: 20,
            child: Container(
              width: telaWidth > 350 ? 265 : telaWidth * 0.8,
              height: 250,
              decoration: BoxDecoration(
                //color: Colors.green,
                border: Border.all(width: 1, color: Definicoes.primaryColor),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(padding: EdgeInsets.symmetric(vertical: 15)),
                  Center(
                    child: const AutoSizeText(
                      """ADS""",
                      style: TextStyle(color: Definicoes.primaryColor, fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center, 
                    ),
                  ),

                  Padding(padding: EdgeInsets.symmetric(vertical: 5)),

                  Center(
                    child: const AutoSizeText(
                      """Analise e Desenvolvimento de Sistema""",
                      style: TextStyle(color: Definicoes.twoColor, fontSize: 14.5, fontWeight: FontWeight.normal),
                      textAlign: TextAlign.center, 
                    ),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  Divider(
                    height: 1,
                    color: Definicoes.twoColor.withOpacity(0.2),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                      Expanded(
                        flex: 5,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Icon(Icons.account_balance_outlined,size: 14, color: Definicoes.twoColor),
                            Text("IFRO",style: TextStyle(color: Definicoes.primaryColor, fontSize: 18),),
                            const AutoSizeText(
                              """Instituto Federal de Rondônia""",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Definicoes.twoColor, fontSize: 13, fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center, 
                            ),
                          ],
                        )
                      ),
                                                         
                    ],
                  ),

                  Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  Divider(
                    height: 1,
                    color: Definicoes.twoColor.withOpacity(0.2),
                  ),
                  Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                 
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      
                      Expanded(
                        flex: 5,
                        child: Column(
                          children: [
                            Icon(FontAwesomeIcons.calendarAlt,size: 14, color: Definicoes.twoColor,),
                            Text("2019 - 2022",style: TextStyle(color: Definicoes.primaryColor, fontSize: 18),),
                            const AutoSizeText(
                              """Emformação - 5º Período""",
                              overflow: TextOverflow.ellipsis,
                              style: TextStyle(color: Definicoes.twoColor, fontSize: 13, fontStyle: FontStyle.italic),
                              textAlign: TextAlign.center,
                                
                            ),
                          ],
                        )
                      ),
                                                           
                    ],
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            left: 10,
            child: Container(
              width: telaWidth > 350 ? 265 : telaWidth * 0.8,
              child: Container(
                width: 45,
                height: 45,
                decoration: BoxDecoration(
                  color: Definicoes.bgColor,
                  shape: BoxShape.circle,
                  border: Border.all(width: 1, color: Definicoes.threeColor),
              
                ),
                child: Center(child: Icon(FontAwesomeIcons.userGraduate, color: Definicoes.twoColor,size: 25)),
              ),
            ),
          )

        ],
      ),
    );
  }
}