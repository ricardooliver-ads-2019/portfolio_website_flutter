import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

class MenuC extends StatelessWidget {
  final title;
  final routeName;
  const MenuC({
    Key? key,
    required this.title, required this.routeName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          GestureDetector(
            child: MouseRegion(
              cursor: SystemMouseCursors.click,
              child: Text("$title", 
                  style: TextStyle(
                    color: Definicoes.twoColor,
                    fontSize: 15.0,
                    fontWeight: FontWeight.bold,
                  ),
                textAlign: TextAlign.center,
              ),
            ),
            onTap: (){
              Navigator.of(context).pushNamed(routeName);
            },
          ),
          ],
      ),
    );
  }
}
