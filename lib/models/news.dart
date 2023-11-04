import 'package:besty/constants/assets.dart';

class News {
  final String title;
  final String message;
  final String image;
  final String time;
  final int? views;
  final int? like;

  News({
    required this.title,
    required this.message,
    required this.image,
    required this.time,
    this.views, this.like, 
  });

}

List NewsData = [
  News(
    title: "Journée internationale des femmes",
    message: "Si les femmes ne peuvent pas accéder à Internet et ne se sentent pas en sécurité en ligne, elles ne sont pas en mesure de développer les compé...",
    image: Assets.women_tech,
    time: "5d ago",
    views: 50,
    like: 5
  ),
  News(
    title: "Coupe du Monde Féminine 2023 – ONU Femme",
    message: "ONU Femmes et la FIFA se réunissent lors de la Coupe du Monde Féminine de la FIFA en Australie et Nouvelle-Zélande 2023 (20 juillet au 20 août 2023)...",
    image: Assets.women_football,
    time: "8m ago",
    views: 20,
    like: 12
  ),
  News(
    title: "World Health Organisation",
    message: "A German female scientist, Ute Ströher, contributed to the invention of the Ebola vaccine, which was approved by the WHO in 2021. The vaccine helped save millions of lives in Africa",
    image: Assets.women_labo,
    time: "5d ago",
    views: 80,
    like: 45
  ),
  News(
    title: "UN Women",
    message: "La femme enceinte doit au maximum eviter les aliment Gras. Elle doit manger cinq fruits et légumes par jour. Les fruits et légumes sont une excellente source de vitamines, de minéraux et de fibres.",
    image: Assets.pregnant_women,
    time: "3m ago",
    views: 90,
    like: 12
  ),
  News(
    title: "Journée internationale des femmes",
    message: "Si les femmes ne peuvent pas accéder à Internet et ne se sentent pas en sécurité en ligne, elles ne sont pas en mesure de développer les compé...",
    image: Assets.women_tech,
    time: "5d ago",
    views: 50,
    like: 5
  ),
  News(
    title: "Coupe du Monde Féminine 2023 – ONU Femme",
    message: "ONU Femmes et la FIFA se réunissent lors de la Coupe du Monde Féminine de la FIFA en Australie et Nouvelle-Zélande 2023 (20 juillet au 20 août 2023)...",
    image: Assets.women_football,
    time: "8m ago",
    views: 20,
    like: 12
  ),
  News(
    title: "World Health Organisation",
    message: "A German female scientist, Ute Ströher, contributed to the invention of the Ebola vaccine, which was approved by the WHO in 2021. The vaccine helped save millions of lives in Africa",
    image: Assets.women_labo,
    time: "5d ago",
    views: 80,
    like: 45
  ),
  News(
    title: "UN Women",
    message: "La femme enceinte doit au maximum eviter les aliment Gras. Elle doit manger cinq fruits et légumes par jour. Les fruits et légumes sont une excellente source de vitamines, de minéraux et de fibres.",
    image: Assets.pregnant_women,
    time: "3m ago",
    views: 90,
    like: 12
  ),
];
