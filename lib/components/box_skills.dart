import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/animated_progress_indicator.dart';

class BoxSkills extends StatelessWidget {
  

   BoxSkills({Key? key, required this.title, required this.lista, this.color, this.colorProgress}) : super(key: key);
  final String title;
  final List lista; 
  final dynamic color;
  final dynamic colorProgress;
  final ScrollController controller = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width*0.70,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.black12,
      ),
      child: Column(
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(title, style: TextStyle(
                fontSize: 25,
                color: Colors.black54,
                fontWeight: FontWeight.w500,
              ),),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(32.0),
            child: Container(
              width: 420,
              height: 150,
              child: Scrollbar(
                controller: controller,
                isAlwaysShown: true,
                child: ListView.builder(
                  controller: controller,
                  scrollDirection: Axis.horizontal,
                  itemCount: lista.length,
                  itemBuilder: (_, index){
                    return Padding(padding: EdgeInsets.all(20.0), 
                      child: Container(
                        width:80,
                        height: 50,
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