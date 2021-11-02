import 'package:flutter/material.dart';
import 'buttonC.dart';

// ignore: camel_case_types
class cardsAppsWebs extends StatelessWidget {
  const cardsAppsWebs({ Key? key, required this.title, required this.img, required this.linkRota }) : super(key: key);
  final String title;
  final String img;
  final String linkRota;


  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(width: 1, color: Colors.red)
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Text("$title",style: TextStyle(
            color: Colors.white
          ),),
          Container(
            width: 250,
            height: 180,
            child: Image.asset(img, fit: BoxFit.fill,),
            decoration: BoxDecoration(
              color: Colors.blue,
              boxShadow: [
                BoxShadow(
                  blurRadius: 9.0,
                  offset: Offset(10.0, 10.0),
                  color: Colors.white24

                )
              ]
            ),
          ),

          ButtonC(rota: linkRota,)
        ],
      ),
    );
  }
}