import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';

class CardsC extends StatelessWidget {
  final color;
  final title;
  final description;
  const CardsC({Key? key, this.color, this.title, this.description}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.2,
        height: MediaQuery.of(context).size.height * 0.2,
        color: color,
        child: Column(
          children: [
            AutoSizeText(title,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontSize: 17,
              ),
              textAlign: TextAlign.justify,
            ),
            AutoSizeText(description,
              overflow: TextOverflow.ellipsis,
              maxLines: 3,
              style: TextStyle(
                fontSize: 17,
              ),
              textAlign: TextAlign.justify,
            ),
          ],
        ),
      ),
    );
  }
}