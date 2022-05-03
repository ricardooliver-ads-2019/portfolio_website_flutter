import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/screens/detalhes.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

class ButtonC extends StatelessWidget {
  const ButtonC({ Key? key, required this.app }) : super(key: key);
  final Map<String, dynamic> app;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: SystemMouseCursors.click,
      child: InkWell(
        onTap: (){
          Navigator.of(context).push(MaterialPageRoute<void>(
            builder: (BuildContext context) => Detalhes(App: app),
        ),);
        },
        child: Container(
          width: 150,
          decoration: BoxDecoration(
            boxShadow: [
              BoxShadow(
                offset: Offset(0.0, 5.0),
                blurRadius: 10.0,
                color: Colors.white24
              ),
            ],
            color: Definicoes.threeColor,
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(5.0),
              topLeft: Radius.circular(5.0),
              bottomRight: Radius.circular(5.0),
              topRight: Radius.circular(5.0)
            )
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 2,
                child: Container(
                  height: 30,
                  child: Center(
                    child: Text("SAIBA-MAIS",
                      style: GoogleFonts.oswald(
                        color: Definicoes.primaryColor,
                        fontSize: 15.0,
                        fontWeight: FontWeight.normal
                      ),
                    )
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(22.0),
                      topLeft: Radius.circular(22.0),
                      bottomRight: Radius.circular(200.0),
                    ),
                    color: Definicoes.twoColor
                            
                  ),
                )
              ),
              Expanded(
                flex: 1,
                child: Container(
                  child: Icon(Icons.add_circle_outline_rounded, color: Definicoes.twoColor,),
                ),
              )
            ],
        
          ),
        ),
      ),
    );
  }
}