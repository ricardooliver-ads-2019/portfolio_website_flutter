import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/components/bigheader.dart';
import 'package:portfolio_website_flutter/components/box_skills.dart';
import 'package:portfolio_website_flutter/components/drawerc.dart';
import 'package:portfolio_website_flutter/components/my_card_botton.dart';
import 'package:portfolio_website_flutter/components/my_card_top.dart';
import 'package:portfolio_website_flutter/components/sliver_appbar_custom.dart';
import 'package:portfolio_website_flutter/utils/listSoftSkills.dart';
import 'package:portfolio_website_flutter/utils/list_skills.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
import 'package:slimy_card/slimy_card.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({ Key? key }) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Definicoes.bgColor,
      endDrawerEnableOpenDragGesture: false, // THIS WAY IT WILL NOT OPEN
      endDrawer: DrawerC(),
      body: 
      Theme(data: Theme.of(context).copyWith(
        scrollbarTheme: ScrollbarThemeData(
          thumbColor: MaterialStateProperty.all(Definicoes.threeColor), 
        )
      ),
      child:CustomScrollView(
        slivers: [
          SliverAppBarC(),
          SliverToBoxAdapter(
            child: BigHeader(pagina: "Sobre Mim",),
          ),
          SliverToBoxAdapter(
            child: Wrap(
              alignment: WrapAlignment.center,
              direction: Axis.horizontal,
              children:[
                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    width: 270,
                    child: SlimyCard(
                      color: Colors.white,
                      width: 270,
                      //topCardHeight: 500,
                      bottomCardHeight: 300,
                      topCardWidget: MyCardTop(),
                      bottomCardWidget: MyCardBotton(),
                    ),
                  ),
                ),

                Padding(
                  padding: const EdgeInsets.only(left: 15, right: 15),
                  child: Container(
                    width: tela > 750 ? MediaQuery.of(context).size.width * 0.6 : MediaQuery.of(context).size.width * 0.90, 
                    child: Column(
                      children: [
                        Text("Conheça-me um pouco",style: TextStyle(fontSize: 20, color: Colors.white),),
                        
                        Container(
                          width: 210,
                          height: 2,
                          color: Definicoes.primaryColor
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 15)),
                        Container(
                          width:  MediaQuery.of(context).size.width * 0.90,
                          child: const AutoSizeText(
                            """Olá! Eu sou o Ricardo, tenho 28 anos, estou cursando Analise e desenvolvimento de sistemas pelo IFRO, trabalho atualmente como vigilante patrimonial, onde graças ao meu horário de trabalho por escala, (12/36), consigo ter uma boa disciplina de estudos regulares, e estou em busca de uma oportunidade de estágio como desenvolvedor de software, pois deis do início da faculdade sonho em trabalhar como desenvolvedor de sistemas, mais especificamente com desenvolvimento mobile, apesar da minha pouca experiencia nessa área, sei que com minha dedicação e força de vontade posso e vou sim me tornar um excelente desenvolvedor.""",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                            textAlign: TextAlign.justify, 
                          ),
                        ),

                        Padding(padding: EdgeInsets.only(top: 10, bottom: 10)),

                        Text("Objetivos",style: TextStyle(fontSize: 20, color: Colors.white),),
                        
                        Container(
                          width: 210,
                          height: 2,
                          color: Definicoes.primaryColor
                        ),
                        Padding(padding: EdgeInsets.only(bottom: 15)),
                        Container(
                          width:  MediaQuery.of(context).size.width * 0.90,
                          child: const AutoSizeText(
                            """Em busca da minha primeira experiencia no mercado de desenvolvimento software, onde eu possa estar compartilhando e colocando em pratica os meus conhecimentos, aprender mais sobre essa área que tanto me fascina e assim possa estar evoluindo cada vez mais.""",
                            style: TextStyle(color: Colors.white, fontSize: 17),
                            textAlign: TextAlign.justify, 
                          ),
                        ),


                      ],
                    ),
                  ),
                ),

                
              ],
            ),
          ),


          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [

                Padding(padding: EdgeInsets.only(top: 20, bottom: 10)),

                Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Hard Skills',
                        textStyle: GoogleFonts.oswald(
                          fontSize: 32.0,
                          fontWeight: FontWeight.normal,
                        ),
                        colors: Definicoes.colorizeColors,
                      ),
                    ],
                    repeatForever: true,

                  ),
                ),
          
                //Cart Skills FRONT-END
                Wrap(
                  alignment: WrapAlignment.spaceAround,
                  direction: Axis.horizontal,
                  children:[
                    BoxSkills(
                      title: 'Front-End', 
                      lista: ListSkills.listFrontEnd,
                      //color: Colors.white30,
                      color: Definicoes.bgColor,
                      colorProgress: Definicoes.primaryColor,
                    ),

                    
                    if (tela < 600) ...[
                      SizedBox(
                        height: 10,
                        width: MediaQuery.of(context).size.width,
                      )
                    ]else ...[
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5))
                      ],
                                          
                    BoxSkills(
                      title: 'Back-End', 
                      lista: ListSkills.listBackEnd,
                      color: Definicoes.bgColor, 
                      colorProgress: Colors.orange,
                    ),

                    if (tela < 600) ...[
                      SizedBox(
                        height: 10,
                        width: MediaQuery.of(context).size.width,
                      )
                    ]else ...[
                        Padding(padding: EdgeInsets.symmetric(horizontal: 5))
                      ],

                    
                    BoxSkills(
                      title: 'Diferenciais', 
                      lista: ListSkills.listDiferenciais,
                      color: Definicoes.bgColor,  
                      colorProgress: Colors.orange,
                    ),

                  ]
                ),
          
                Padding(padding: EdgeInsets.only(top: 20)),


                Center(
                  child: AnimatedTextKit(
                    animatedTexts: [
                      ColorizeAnimatedText(
                        'Soft Skills',
                        textStyle: GoogleFonts.oswald(
                          fontSize: 32.0,
                          fontWeight: FontWeight.normal,
                        ),
                        colors: Definicoes.colorizeColors,
                      ),
                    ],
                    repeatForever: true,

                  ),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: tela > 600 ? 450 : MediaQuery.of(context).size.width * 0.9 ,
                      child: Column(
                        children: ListSoftSkill().softSkillsList.map(
                          (skill) => Container(
                            margin: EdgeInsets.only(bottom: 15.0),
                            child: Row(
                              children: [
                                Expanded(
                                  flex: skill.percentage,
                                  child: Container(
                                    padding: EdgeInsets.only(left: 10.0),
                                    alignment: Alignment.centerLeft,
                                    height: 38.0,
                                    child: Text(skill.skill),
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Expanded(
                                  // remaining (blank part)
                                  flex: 100 - skill.percentage,
                                  child: Divider(
                                    color: Colors.white,
                                  ),
                                ),
                                SizedBox(
                                  width: 10.0,
                                ),
                                Text(
                                  "${skill.percentage}%",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16.0,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )
                        .toList(),
                      ),
                    ),
                  ],
                ),

              ],
            ),
          )
        ],
      ),)
    );
  }
}