import 'package:animated_card/animated_card.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_flutter/components/contact_form.dart';
import 'package:portfolio_website_flutter/components/drawerc.dart';
import 'package:portfolio_website_flutter/components/my_card_contact.dart';
import 'package:portfolio_website_flutter/components/sliver_appbar_custom.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';

// ignore: must_be_immutable
class ContactsPageScreen extends StatefulWidget {
  @override
  State<ContactsPageScreen> createState() => _ContactsPageScreenState();
}

class _ContactsPageScreenState extends State<ContactsPageScreen> {

  void delay(){
    Future.delayed(Duration(seconds: 5), () {
   print(" This line is execute after 5 seconds");
  });
  }


  @override
  Widget build(BuildContext context) {
    var telaWigth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Definicoes.bgColor,
      endDrawerEnableOpenDragGesture: false, // THIS WAY IT WILL NOT OPEN
      endDrawer: DrawerC(),
      body: CustomScrollView(
        slivers:[
          SliverToBoxAdapter(child: SliverAppBarC()),
          SliverToBoxAdapter(
            child: Stack(
              children: [
                //AnimationModal(),
                Column(
                  children: [
                    Container(
                      child: Center(
                        child: Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              AnimatedCard(
                                direction: AnimatedCardDirection.top,
                                duration: Duration(seconds: 2),
                                child: Center(child: Image.asset(AppImages.iconEnviar))
                              ),
                              AnimatedCard(
                                direction: AnimatedCardDirection.left,
                                duration: Duration(seconds: 2),
                                child: Center(
                                  child: Text("CONTACTE-ME",
                                    style: GoogleFonts.oswald(
                                      color: Definicoes.twoColor,
                                      fontSize: 32,
                                      fontWeight: FontWeight.normal
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 20),
                      child: Wrap(
                        alignment: WrapAlignment.center,
                        spacing: 10,
                        runSpacing: 20,
                        children: [
                          Container(
                            width: telaWigth > 550 ? 400 : telaWigth * 0.95,
                            child: AnimatedCard(
                              direction: AnimatedCardDirection.bottom,
                              duration: Duration(seconds: 2),
                              child: MyCardContact()
                            ),
                          ),
                          Container(
                            child: Column(
                              children: [
                                Container(
                                  width: telaWigth > 550 ? 400 : telaWigth * 0.95,
                                  child: AnimatedCard(
                                    direction: AnimatedCardDirection.right,
                                    duration: Duration(seconds: 2),
                                    child: Container(
                                      height: telaWigth > 400 ? 450 : 500,
                                      width: telaWigth > 550 ? 400 : telaWigth * 0.95,
                                      decoration: BoxDecoration(
                                        border: Border.all(width: 1, color: Definicoes.primaryColor)
                                      ),
                                      child: AnimatedCard(
                                        direction: AnimatedCardDirection.right,
                                        duration: Duration(seconds: 2),
                                        child: ContactForm()
                                      )
                                    ),
                                  ),
                                ),
                              ],
                            )
                          ),
                        ],

                      ),
                    ),
                  ],
                )
              ],
            ),
          ),  
        ]
      )
    );
  }
}
