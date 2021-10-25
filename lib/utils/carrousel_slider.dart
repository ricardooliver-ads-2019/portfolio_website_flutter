import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';

final List<String> imgList = [
  AppImages.imgTelaApp1_0,
  AppImages.imgTelaApp1_1,
  AppImages.imgTelaApp2_0,
  AppImages.imgTelaApp2_1,
];

class CarrouselSlider extends StatelessWidget {
  const CarrouselSlider({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      options: CarouselOptions(
        height: 489,
        viewportFraction: 1,
        autoPlay: true,
        autoPlayInterval: Duration(seconds: 5),
        autoPlayCurve: Curves.easeInOutCubic,
        enlargeCenterPage: true,
        scrollDirection: Axis.horizontal,
        enableInfiniteScroll: true,
      ),
      itemCount: imgList.length,
      itemBuilder: (context, index, realIndex){
        final listImage = imgList[index];
        return buildImage(listImage, index);
      }
    );
  }
}

Widget buildImage(String listImage, int index) => Container(
  margin: EdgeInsets.only(top: 75),
  width: 218, 
  child: Image.network(
      listImage,
      fit: BoxFit.fill,
      
  ),
);
