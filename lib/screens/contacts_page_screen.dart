import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_website_flutter/components/bigheader.dart';
import 'package:portfolio_website_flutter/components/drawerc.dart';
import 'package:portfolio_website_flutter/components/sliver_appbar_custom.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
import 'package:carousel_pro/carousel_pro.dart';

// ignore: must_be_immutable
class ContactsPageScreen extends StatelessWidget {
  CarouselController buttonCarouselController = CarouselController();
  final ScrollController controller = ScrollController();
  final ScrollController controller2 = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Definicoes.bgColor,
      endDrawerEnableOpenDragGesture: false, // THIS WAY IT WILL NOT OPEN
      endDrawer: DrawerC(),
      body: CustomScrollView(
        slivers:[
          SliverToBoxAdapter(child: SliverAppBarC()),
          SliverToBoxAdapter(
            child: BigHeader(pagina: "Contatos",),
          ),

          SliverToBoxAdapter(
            child: SizedBox(
              height: 200.0,
              width: 350.0,
              child: Carousel(
                images: [
                  NetworkImage('https://cdn-images-1.medium.com/max/2000/1*GqdzzfB_BHorv7V2NV7Jgg.jpeg'),
                  NetworkImage('https://cdn-images-1.medium.com/max/2000/1*wnIEgP1gNMrK5gZU7QS0-A.jpeg'),
                  ExactAssetImage("images/imgRicardo.png"),
                  Container(color: Colors.white,
                  width: 50,height: 50,
                  child: Image(image: AssetImage(AppImages.imgPerson),),)
                ],
                dotSize: 4.0,
                dotSpacing: 15.0,
                dotColor: Colors.lightGreenAccent,
                indicatorBgPadding: 5.0,
                dotBgColor: Colors.purple.withOpacity(0.5),
                borderRadius: true,
              )
            ),
          ),

          SliverToBoxAdapter(
            child: 
              CarouselSlider(
                options: CarouselOptions(
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  height: 400.0
                ),
                items: [1,2,3,4,5].map((i) {
                  return Builder(
                    builder: (BuildContext context) {
                      return Container(
                        width: MediaQuery.of(context).size.width,
                        margin: EdgeInsets.symmetric(horizontal: 5.0),
                        decoration: BoxDecoration(
                          color: Colors.amber
                        ),
                        child: Text('text $i', style: TextStyle(fontSize: 16.0),)
                      );
                    },
                  );
                }).toList(),
              )
          ),

          SliverToBoxAdapter(
            child: Container(
          child: CarouselSlider(
        options: CarouselOptions(
          aspectRatio: 2.0,
          enlargeCenterPage: true,
          scrollDirection: Axis.vertical,
          autoPlay: true,
        ),
        items: imageSliders,
      )),
          )

          SliverFixedExtentList(delegate: SliverChildListDelegate(
              
            [

              Container(
                margin: EdgeInsets.all(32.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(width: 2, color: Colors.red)
                ),
                child: Padding(
                  padding: const EdgeInsets.all(32.0),
                  child: Scrollbar(
                    showTrackOnHover:true,
                    controller: controller,
                    isAlwaysShown: true,
                    child: ListView(
                      controller: controller,
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          width: 270.0,
                          color: Colors.red,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(32),
                          child: Container(
                            width: 160.0,
                            color: Colors.blue,
                            child: Scrollbar(
                              showTrackOnHover:true,

                              controller: controller2,
                              isAlwaysShown: true,
                              child: ListView(
                                controller: controller2,
                                // This next line does the trick.
                                scrollDirection: Axis.horizontal,
                                children: <Widget>[
                                  
                                  Container(
                                    width: 160.0,
                                    color: Colors.blue,
                                  ),
                                  Container(
                                    width: 160.0,
                                    color: Colors.green,
                                  ),
                                  Container(
                                    width: 160.0,
                                    color: Colors.yellow,
                                  ),
                                  Container(
                                    width: 160.0,
                                    color: Colors.orange,
                                  ),
                                  
                                  Container(
                                    width: 160.0,
                                    color: Colors.blue,
                                  ),
                                  Container(
                                    width: 160.0,
                                    color: Colors.green,
                                  ),
                                                   
                                ],
                              ),
                            ),
                          ),
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.green,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.red,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.green,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.red,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.green,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.orange,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.red,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.blue,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.green,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.yellow,
                        ),
                        Container(
                          width: 160.0,
                          color: Colors.orange,
                        ),                  
                      ],
                    ),
                  ),
                ),
              )

            ]
          ), itemExtent: 500),
          
        ]
      )
    );
  }
}
