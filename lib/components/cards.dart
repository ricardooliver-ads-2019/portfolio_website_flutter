import 'package:auto_size_text_pk/auto_size_text_pk.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';

class CardsC extends StatelessWidget {
  final color;
  final title;
  final description;
  const CardsC({Key? key, this.color, this.title, this.description}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var telaLargura =  MediaQuery.of(context).size.width;
    var telaAltura =  MediaQuery.of(context).size.height;
    return Container(
      width: telaLargura,
      height: telaAltura,
      decoration: BoxDecoration(
        border: Border.all(width: 2, color: Colors.red)
      ),
      child: Card(
        //margin: EdgeInsets.fromLTRB(20, 20, 20, 20),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            color: color,
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                  Padding(padding: EdgeInsets.symmetric(vertical: 5)),
                  Container(
                    width: 150,
                    height: 300,
                    decoration: BoxDecoration(
                      image: DecorationImage(image: AssetImage(AppImages.imgFundoCarrocellG),fit: BoxFit.fill),
                      border: Border.all(width: 1, color: Colors.red)
                    ),
                    child: Text("Olá mundo", textAlign: TextAlign.center, style: TextStyle(
                      color: Colors.white
                    ),),
                  ),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}