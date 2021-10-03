import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/components/bigheader.dart';
import 'package:portfolio_website_flutter/components/programming_skills.dart';
import 'package:portfolio_website_flutter/components/sliver_appbar_custom.dart';
import 'package:portfolio_website_flutter/components/soft_skills.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:styled_text/styled_text.dart';

class AboutScreen extends StatefulWidget {
  const AboutScreen({ Key? key }) : super(key: key);

  @override
  _AboutScreenState createState() => _AboutScreenState();
}

class _AboutScreenState extends State<AboutScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBarC(),
          SliverToBoxAdapter(
            child: BigHeader(pagina: "Sobre Mim",),
          ),
          SliverToBoxAdapter(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CircleAvatar(
                  radius: 80,
                  backgroundImage: AssetImage(AppImages.imgAvata),
                ),

                Padding(padding: EdgeInsets.only(top: 20)),

                StyledText(
                  text: '<bold><h1>Ricardo Oliveira</h1></bold>',
                  tags: {
                    'bold': StyledTextTag(style: TextStyle(fontWeight: FontWeight.bold)),
                    'h1': StyledTextTag(style: TextStyle(fontSize: 25, color: Colors.black54))
                  },
                ),

                Padding(
                  padding: EdgeInsets.fromLTRB(60, 40, 60, 60),
                  child: Container(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.25,
                    child: AutoSizeText(
                      "       Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.Lorem Ipsum is simply dummy text of the printing and typesetting industry. \nLorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.",
                      style: TextStyle(fontSize: 17),
                      textAlign: TextAlign.justify,
                    ),
                  ),                  
                ),

                Text("Habilidades Back-End",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 40)),

                ProgrammingSkills(),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 1,
                  color: Colors.black12,
                ),

                Padding(padding: EdgeInsets.only(top: 40)),
                Text("Habilidades Front-End",
                  style: TextStyle(
                    fontSize: 25,
                  ),
                ),

                Padding(padding: EdgeInsets.only(top: 40)),
                SoftSkills(),

                Container(
                  margin: EdgeInsets.symmetric(vertical: 20),
                  width: MediaQuery.of(context).size.width * 0.90,
                  height: 1,
                  color: Colors.black12,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}