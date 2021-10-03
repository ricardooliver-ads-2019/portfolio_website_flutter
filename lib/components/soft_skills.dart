import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/animated_progress_indicator.dart';

class SoftSkills extends StatelessWidget {
  const SoftSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            label: "Gerenciamento", 
            colorC: Colors.blue, 
            percentage: 0.80, 
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            label: "Diciplina", 
            colorC: Colors.orange, 
            percentage: 0.87, 
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            label: "Trabalho em Equipe", 
            colorC: Colors.yellow, 
            percentage: 0.89, 
          ),
        ),
      ],
    );
  }
}
