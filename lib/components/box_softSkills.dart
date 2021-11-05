import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/utils/listSoftSkills.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

class BoxSoftSkills extends StatelessWidget {
  const BoxSoftSkills({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var tela = MediaQuery.of(context).size.width;
    return Container(
      width: tela > 600 ? 450 : tela * 0.9 ,
      child: Column(
        children: ListSoftSkill().softSkillsList.map(
          (soft) => Container(
            margin: EdgeInsets.only(bottom: 15.0),
            child: Row(
              children: [
                Expanded(
                  flex: soft.percentage,
                  child: Container(
                    padding: EdgeInsets.only(left: 10.0),
                    alignment: Alignment.centerLeft,
                    height: 38.0,
                    child: Text(soft.skill, 
                      style: GoogleFonts.oswald(
                        color: Definicoes.primaryColor,
                        fontSize: 24.0,
                        fontWeight: FontWeight.normal
                      ),
                    ),
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Expanded(
                  // remaining (blank part)
                  flex: 100 - soft.percentage,
                  child: Divider(
                    color: Definicoes.threeColor,
                  ),
                ),
                SizedBox(
                  width: 10.0,
                ),
                Text(
                  "${soft.percentage}%",
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
    );
  }
}