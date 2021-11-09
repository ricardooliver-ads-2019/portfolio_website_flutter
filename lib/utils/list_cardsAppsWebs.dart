import 'package:portfolio_website_flutter/app_routes.dart';
import 'package:portfolio_website_flutter/utils/app_images.dart';
import 'package:portfolio_website_flutter/utils/class_appsWebs.dart';

class ListCardsAppsWebs {

   List<CardsAppsWebs> cardsAppsWebsList = [
    CardsAppsWebs(title: "Container-Loc", img: AppImages.imgSiteContainerloc, rota: AppRoutes.PROJETOS),
    CardsAppsWebs(title: "Serralheria Container", img: AppImages.imgSiteSerralheria, rota: AppRoutes.PROJETOS),
    CardsAppsWebs(title: "Tela de Login", img: AppImages.imgTelaDeLogin, rota: AppRoutes.PROJETOS),
    CardsAppsWebs(title: "Jogo da Memória", img: AppImages.imgJogoDaMemoria, rota: AppRoutes.PROJETOS),
    CardsAppsWebs(title: "Tela para Captura de Emails", img: AppImages.imgTelaDeCapEmail, rota: AppRoutes.PROJETOS),
    CardsAppsWebs(title: "Livraria", img: AppImages.imgLivraria, rota: AppRoutes.PROJETOS),
    CardsAppsWebs(title: "Site", img: AppImages.imgTelaSite, rota: AppRoutes.PROJETOS),  
  ];
}