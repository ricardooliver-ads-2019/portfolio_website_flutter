import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/animated_progress_indicator.dart';

class ProgrammingSkills extends StatelessWidget {
  const ProgrammingSkills({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            label: "Dart", 
            colorC: Colors.blue, 
            percentage: 0.70, 
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            label: "Python", 
            colorC: Colors.orange, 
            percentage: 0.70, 
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            label: "JavaScript", 
            colorC: Colors.yellow, 
            percentage: 0.50, 
          ),
        ),

        SizedBox(
          width: MediaQuery.of(context).size.width * 0.1,
          child: AnimatedCircularProgressIndicator(
            label: "Django", 
            colorC: Colors.yellow, 
            percentage: 0.50, 
          ),
        ),
      ],
    );
  }
}