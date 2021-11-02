import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/animated_progress_indicator.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

class BoxSkills extends StatelessWidget {
  

   BoxSkills({Key? key, required this.title, required this.lista, this.color, this.colorProgress}) : super(key: key);
  final String title;
  final List lista; 
  final dynamic color;
  final dynamic colorProgress;
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size.width;
    
    return Container(
      width: tela > 701 ? MediaQuery.of(context).size.width*0.26 : MediaQuery.of(context).size.width*0.9,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: Definicoes.primaryColor, width: 2)
      ),
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(title, style: TextStyle(
                fontSize: 25,
                color: Colors.white,
                fontWeight: FontWeight.w500,
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              
              width: 420,
              height: 200,
              child: Scrollbar(
                showTrackOnHover:true,
                controller: controller,
                isAlwaysShown: true,
                child: ListView.builder(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: lista.length,
                  itemBuilder: (_, index){
                    return Padding(padding: EdgeInsets.symmetric(horizontal: 12,vertical: 20), 
                      child: Container(
                        width:110,
                        child: AnimatedCircularProgressIndicator(
                          colorC: colorProgress,
                          img: lista[index]['img'],
                          label: lista[index]['title'],
                          percentage: lista[index]['porcetage'],
                        ),
                      ),
                    );
                  },
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}