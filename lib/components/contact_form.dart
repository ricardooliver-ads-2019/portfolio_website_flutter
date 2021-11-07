import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:http/http.dart' as http;
import 'package:portfolio_website_flutter/components/link_whatsapp.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/styles.dart';
import 'package:validatorless/validatorless.dart';

import 'default_button.dart';

class ContactForm extends StatefulWidget {

  ContactForm({
    Key? key,
  }) : super(key: key);

  @override
  State<ContactForm> createState() => _ContactFormState();
}

class _ContactFormState extends State<ContactForm> {
  final _formKey = GlobalKey<FormState>();
  var _nameEC = TextEditingController();
  var _emailEC = TextEditingController();
  var _descrisionEC = TextEditingController();
  var _mesageEC = TextEditingController();

  @override
  void dispose() {
    _nameEC.dispose();
    _emailEC.dispose();
    _descrisionEC.dispose();
    _mesageEC.dispose();
    super.dispose();
  }

  void clearTextEditingController(){
    setState(() {
      _nameEC = TextEditingController();
      _emailEC = TextEditingController();
      _descrisionEC = TextEditingController();
      _mesageEC = TextEditingController();
    });
  }

  Future sendEmail({
    required String nameEC,
    required String emailEC,
    required String descrisionEC,
    required String messageEC,
  }) async{

    final serviceId = 'service_rehsqbo';
    final templateId = 'template_6lupfc7';
    final userId = 'user_OFHkLksCEN3EJOxlBAxHt';

    final url = Uri.parse('https://api.emailjs.com/api/v1.0/email/send');
    final response = await http.post(
      url,
      headers: {
        'origin': 'http://localhost',
        'Content-Type': 'application/json'
      },
      body: json.encode({
        'service_id': serviceId,
        'template_id': templateId,
        'user_id': userId,
        'template_params': {
          'user_name': nameEC,
          'user_email': emailEC,
          'user_subject': descrisionEC,
          'user_message': messageEC,
        }
      })
    );

    //print(response);
    print('Response status: ${response.statusCode}');
    //print('Response body: ${response.body}');

  }

  @override
  Widget build(BuildContext context) {
    var telaWidth = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: Definicoes.kDefaultPadding),
      child: Form(
        key: _formKey,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            
            Container(
              child: TextFormField(
                controller: _nameEC,
                onChanged: (value) {},
                style: TextStyle(color: Definicoes.twoColor),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Definicoes.twoColor)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Definicoes.primaryColor)),
                  labelText: "Nome",
                  hintText: "Nome",
                  hintStyle: TextStyle(color: Definicoes.threeColor),
                  labelStyle: TextStyle(color: Definicoes.primaryColor)
                ),
                validator: Validatorless.required('Informe seu nome!'),
              ),
            ),
            Container(
              child: TextFormField(
                controller: _emailEC,
                onChanged: (value) {},
                style: TextStyle(color: Definicoes.twoColor),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Definicoes.twoColor)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Definicoes.primaryColor)),
                  labelText: "Email",
                  hintText: "Digite email",
                  hintStyle: TextStyle(color: Definicoes.threeColor),
                  labelStyle: TextStyle(color: Definicoes.primaryColor)
                ),
                validator: Validatorless.multiple([
                  Validatorless.email('Email Inválido!'),
                  Validatorless.required('Informe seu email!'),
                ]),
                
              ),
            ),
            Container(
              child: TextFormField(
                controller: _descrisionEC,
                onChanged: (value) {},
                style: TextStyle(color: Definicoes.twoColor),
                decoration: InputDecoration(
                  enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Definicoes.twoColor)),
                  focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Definicoes.primaryColor)),
                  labelText: "Asunto",
                  hintText: "Informe o Asunto",
                  hintStyle: TextStyle(color: Definicoes.threeColor),
                  labelStyle: TextStyle(color: Definicoes.primaryColor)
                ),
                validator: Validatorless.required("Informe O assunto da mensagem!"),
              ),
            ),
            SizedBox(height: Definicoes.kDefaultPadding * 2),
            ConstrainedBox(
              constraints: BoxConstraints(maxHeight: 150, maxWidth: 470),
              // TextField by default cover the height, i tryed to fix this problem but i cant
              child: TextFormField(
                controller: _mesageEC,
                maxLines: 15,
                onChanged: (value) {},
                style: TextStyle(color: Definicoes.twoColor),
                decoration: InputDecoration(
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white, width: 2)
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Definicoes.primaryColor, width: 2)
                  ),
                  border: OutlineInputBorder(
                    borderSide: BorderSide(color: Definicoes.primaryColor, width: 2)
                  ),
                  labelText: "Mensagem",
                  hintText: "Digite sua mensagem",
                  hintStyle: TextStyle(color: Definicoes.threeColor),
                  labelStyle: TextStyle(color: Definicoes.primaryColor)
                ),
                validator: Validatorless.min(20, 'Acrescente mais informações!'),
              ),
            ),
            SizedBox(height: Definicoes.kDefaultPadding),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: GestureDetector(
                    onTap: clearTextEditingController,
                    child: Image.asset(AppImages.iconReset,width: 15,),
                  ),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Wrap(
                alignment: WrapAlignment.spaceBetween,
                spacing: 20,
                runSpacing: 20,
                children: [
                  FittedBox(
                    child: Container(
                      height: 25,
                      width: telaWidth > 350 ? 110 : 200,
                      decoration: BoxDecoration(
                        color: Definicoes.twoColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: DefaultButton(
                        imageSrc: AppImages.iconEmail,
                        text: "Enviar!",
                        press: () {
                          var formValid = _formKey.currentState?.validate() ?? false;
                          if(formValid){
                            sendEmail( //chamada da função para enviar email
                              nameEC: _nameEC.text, 
                              emailEC: _emailEC.text, 
                              descrisionEC: _descrisionEC.text, 
                              messageEC: _mesageEC.text
                            );

                            clearTextEditingController();
                          }
                        },
                      ),
                    ),
                  ),

                  FittedBox(
                    child: Container(

                      height: 25,
                      width: telaWidth > 350 ? 110 : 200,
                      decoration: BoxDecoration(
                        color: Definicoes.twoColor.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(50)
                      ),
                      child: DefaultButton(
                        imageSrc: AppImages.iconWhatsaap,
                        text: "Enviar!",
                        press: () {
                          var formValid = _formKey.currentState?.validate() ?? false;
                          if(formValid){
                            LinkWhatsapp().launchWhatsApp(_nameEC.text, _descrisionEC.text, _mesageEC.text, _emailEC.text,);
                            clearTextEditingController();
                          }
                          
                        },
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
