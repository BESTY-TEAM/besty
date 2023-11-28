import 'package:besty/constants/assets.dart';

class Conseil {
  final String title;
  final String message;
  final String image;
  final String time;
  final int? views;
  final int? like;

  Conseil({
    required this.title,
    required this.message,
    required this.image,
    required this.time,
    this.views, this.like, 
  });

}

List ConseilsData = [
  Conseil(
    title: "Journée internationale des femmes",
    message: """Si les femmes ne peuvent pas accéder à Internet et ne se sentent pas en sécurité en ligne, elles ne sont pas en mesure de développer les compétences numériques nécessaires pour participer pleinement à la société. Internet est un outil essentiel pour l'éducation, l'emploi et l'information. Les femmes qui n'ont pas accès à Internet sont désavantagées par rapport aux femmes qui y ont accès. Elles ont moins de chances d'obtenir une éducation, un emploi et des informations qui leur permettront de participer pleinement à la société.
    \n Par exemple, une femme qui n'a pas accès à Internet ne pourra pas suivre des cours en ligne, rechercher des emplois ou se tenir au courant des nouvelles. Elle sera donc moins compétitive sur le marché du travail et moins en mesure de participer à la vie publique.
    \n Internet est également un espace où les femmes peuvent s'exprimer et se connecter avec d'autres femmes. Les femmes qui ne se sentent pas en sécurité en ligne sont moins susceptibles de s'engager dans cet espace. Elles manquent ainsi l'occasion de développer leurs compétences numériques et de créer des réseaux de soutien.
    \nPar exemple, une femme qui ne se sent pas en sécurité en ligne ne pourra pas utiliser Internet pour créer des contenus, se connecter avec d'autres femmes ou participer à des communautés en ligne. Elle manquera ainsi l'occasion de développer ses compétences en communication, en collaboration et en leadership.
    \nInternet est également un outil pour la sensibilisation aux droits des femmes. Les femmes qui n'ont pas accès à Internet sont moins susceptibles d'être informées de leurs droits et de savoir comment les faire respecter.
    \nPar exemple, une femme qui n'a pas accès à Internet sera moins susceptible de connaître ses droits en matière de santé sexuelle et reproductive, de violence domestique ou d'autres questions qui la concernent. Elle sera donc moins en mesure de protéger ses droits et sa sécurité
    \nEn conclusion, l'accès à Internet et la sécurité en ligne sont essentiels pour le développement des compétences numériques des femmes. Ces deux facteurs permettent aux femmes de participer pleinement à la société et de faire valoir leurs droits.""",
    image: Assets.women_tech,
    time: "5d ago",
    views: 50,
    like: 5
  ),
  // complete moi cette phrase avec un long text de facon a avoir un sens
  Conseil(
    title: "Coupe du Monde Féminine 2023 – ONU Femme",
    message: """ONU Femmes et la FIFA se réunissent lors de la Coupe du Monde Féminine de la FIFA en Australie et Nouvelle-Zélande 2023 (20 juillet au 20 août 2023) pour promouvoir l'égalité des sexes et l'autonomisation des femmes.
      \nCette collaboration vise à utiliser le pouvoir du football pour inspirer et encourager les femmes et les filles du monde entier.
      \nONU Femmes et la FIFA travailleront ensemble pour :
      \n      Promouvoir l'égalité des sexes dans le football. Elles travailleront pour garantir que les femmes et les filles aient les mêmes chances de jouer, d'entraîner et de diriger dans le football.
      \n      Sensibiliser aux droits des femmes et aux questions d'égalité des sexes. Elles utiliseront la Coupe du Monde Féminine pour sensibiliser à l'importance de l'égalité des sexes et des droits des femmes.
      \n      Favoriser l'autonomisation des femmes et des filles. Elles travailleront pour aider les femmes et les filles à développer les compétences et les connaissances dont elles ont besoin pour réussir.
      \nLa Coupe du Monde Féminine est une occasion unique de promouvoir l'égalité des sexes et l'autonomisation des femmes. ONU Femmes et la FIFA sont déterminées à utiliser ce tournoi pour faire une différence dans la vie des femmes et des filles du monde entier.""",
      image: Assets.women_football,
    time: "8m ago",
    views: 20,
    like: 12
  ),
  Conseil(
    title: "World Health Organisation",
    message: "A German female scientist, Ute Ströher, contributed to the invention of the Ebola vaccine, which was approved by the WHO in 2021. The vaccine helped save millions of lives in Africa",
    image: Assets.women_labo,
    time: "5d ago",
    views: 80,
    like: 45
  ),
  Conseil(
    title: "UN Women",
    message: "La femme enceinte doit au maximum eviter les aliment Gras. Elle doit manger cinq fruits et légumes par jour. Les fruits et légumes sont une excellente source de vitamines, de minéraux et de fibres.",
    image: Assets.pregnant_women,
    time: "3m ago",
    views: 90,
    like: 12
  ),
  Conseil(
    title: "Journée internationale des femmes",
    message: "Si les femmes ne peuvent pas accéder à Internet et ne se sentent pas en sécurité en ligne, elles ne sont pas en mesure de développer les compé...",
    image: Assets.women_tech,
    time: "5d ago",
    views: 50,
    like: 5
  ),
  Conseil(
    title: "Coupe du Monde Féminine 2023 – ONU Femme",
    message: "ONU Femmes et la FIFA se réunissent lors de la Coupe du Monde Féminine de la FIFA en Australie et Nouvelle-Zélande 2023 (20 juillet au 20 août 2023)...",
    image: Assets.women_football,
    time: "8m ago",
    views: 20,
    like: 12
  ),
  Conseil(
    title: "World Health Organisation",
    message: "A German female scientist, Ute Ströher, contributed to the invention of the Ebola vaccine, which was approved by the WHO in 2021. The vaccine helped save millions of lives in Africa",
    image: Assets.women_labo,
    time: "5d ago",
    views: 80,
    like: 45
  ),
  Conseil(
    title: "UN Women",
    message: "La femme enceinte doit au maximum eviter les aliment Gras. Elle doit manger cinq fruits et légumes par jour. Les fruits et légumes sont une excellente source de vitamines, de minéraux et de fibres.",
    image: Assets.pregnant_women,
    time: "3m ago",
    views: 90,
    like: 12
  ),
];
