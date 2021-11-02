import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

class Formacao extends StatelessWidget {
  const Formacao({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Row(
          children: [
            Icon(FontAwesomeIcons.userGraduate, color: Definicoes.twoColor,size: 30),
            SizedBox(width: 10,),
            Container(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(top: 12),
                child: Text("Formação",
                  style: TextStyle(
                    fontSize: 30, 
                    color: Colors.white
                  ), 
                ),
              )
            ),
          ],
        ),

        Container(
          width: MediaQuery.of(context).size.width,
          child: Wrap(
            alignment: WrapAlignment.start,
            children: [

              SizedBox(
                width: 20,
              ),

              Padding(
                padding: const EdgeInsets.only(left: 20, top: 20),
                child: Container(
                  width: tela < 830 ? MediaQuery.of(context).size.width : MediaQuery.of(context).size.width * 0.25,
                  decoration: BoxDecoration(
                    color: Definicoes.bgColor,
                    //border: Border.all(width: 2, color: Colors.red),
                    borderRadius: BorderRadius.only(topRight: Radius.circular(50), bottomLeft: Radius.circular(50),),
                    boxShadow: [
                      BoxShadow(
                        color: Definicoes.twoColor.withOpacity(0.8),
                        spreadRadius: 2,
                        blurRadius: 10,
                        //offset: Offset(20.0, 15.0)
                      )
                    ],
                  ),
                    
                  child: Column(
                    children: [
                      Icon(FontAwesomeIcons.graduationCap, color: Definicoes.twoColor,size: 20),
                      Padding(padding: EdgeInsets.only(bottom: 5)),
                      Container(
                        width:  MediaQuery.of(context).size.width*90,  
                        child: Column(
                          children: [
                            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                            const AutoSizeText(
                              """Analise e Desenvolvimento de Sistema""",
                              style: TextStyle(color: Definicoes.twoColor, fontSize: 17, fontWeight: FontWeight.w600),
                              textAlign: TextAlign.center, 
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                            Divider(
                              height: 1,
                              color: Definicoes.primaryColor,
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded( flex: 1, child: Icon(Icons.account_balance_outlined,size: 17, color: Definicoes.twoColor,)),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    children: [
                                      Text("IFRO",style: TextStyle(color: Colors.white, fontSize: 15),),
                                      const AutoSizeText(
                                        """Instituto Federal de Rondônia""",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(color: Colors.white, fontSize: 14, fontStyle: FontStyle.italic),
                                        textAlign: TextAlign.center, 
                                      ),
                                    ],
                                  )
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    width: 15,
                                  ),                                                
                                ),                                        
                              ],
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 2)),
                            Divider(
                              height: 1,
                              color: Definicoes.primaryColor,
                            ),

                            Padding(padding: EdgeInsets.symmetric(vertical: 2)),

                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded( flex: 1, child: Icon(FontAwesomeIcons.calendarAlt,size: 17, color: Definicoes.twoColor,)),
                                Expanded(
                                  flex: 3,
                                  child: Column(
                                    children: [
                                      Text("2019 - 2022",style: TextStyle(color: Colors.white, fontSize: 15),),
                                      const AutoSizeText(
                                        """Emformação - 5º Período""",
                                        overflow: TextOverflow.ellipsis,
                                        style: TextStyle(color: Colors.white, fontSize: 14, fontStyle: FontStyle.italic),
                                        textAlign: TextAlign.center,
                                          
                                      ),
                                    ],
                                  )
                                ),
                                Expanded(
                                  flex: 1,
                                  child: SizedBox(
                                    width: 15,
                                  ),                                                
                                ),                                        
                              ],
                            ),
                            Padding(padding: EdgeInsets.symmetric(vertical: 10)),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

                            
            ],
          ),
        ),
      ],
    );
  }
}