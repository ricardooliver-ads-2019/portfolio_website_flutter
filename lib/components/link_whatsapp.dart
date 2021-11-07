import 'package:url_launcher/url_launcher.dart';
import 'package:whatsapp_unilink/whatsapp_unilink.dart';


class LinkWhatsapp{

  launchWhatsApp(String name, String desc,String msg, String email) async {
    final link = WhatsAppUnilink(
      phoneNumber: '+55-(69)992420483',
      text: """Olá Ricardo Oliveira!,
      Meu nome é $name, o motivo do meu contato é a respeito de um(@) $desc:
      $msg.
      Para mais informações o meu email de contato é: $email
      """,
    );
    // Convert the WhatsAppUnilink instance to a string.
    // Use either Dart's string interpolation or the toString() method.
    // The "launch" method is part of "url_launcher".
    await launch('$link');
  }

}


