import 'package:besty/constants/assets.dart';

class Meet {
  final String title;
  final String organiser;
  final String message;
  final String image;
  final bool isFree;
  final String date;
  final int? views;
  final int? like;

  Meet({
    required this.title,
    required this.organiser,
    required this.message,
    required this.image,
    required this.isFree,
    required this.date,
    this.views, this.like,
  });

}

List MeetsData = [
  Meet(
      title: "Women In Leadership: what does it take ?",
      organiser: "MINPOSTEL",
      message: "Si les femmes ne peuvent pas accéder à Internet et ne se sentent pas en sécurité en ligne, elles ne sont pas en mesure de développer les compé...",
      image: Assets.women_tech,
      isFree: true,
      date: "Douala, 5 Mai 2024",
      views: 50,
      like: 5
  ),
  Meet(
      title: "Women In FootBall: what does it take ?",
      message: "ONU Femmes et la FIFA se réunissent lors de la Coupe du Monde Féminine de la FIFA en Australie et Nouvelle-Zélande 2023 (20 juillet au 20 août 2023)...",
      image: Assets.women_football,
      date: "Daoula, 05 Mar 2024",
      views: 20,
      like: 12,
      organiser: 'FecaFoot',
      isFree: true
  ),
  Meet(
      title: "The Place of women in new Technologies",
      message: "A German female scientist, Ute Ströher, contributed to the invention of the Ebola vaccine, which was approved by the WHO in 2021. The vaccine helped save millions of lives in Africa",
      image: Assets.women_labo,
      date: "California, 16 Jan 2024",
      views: 80,
      like: 45,
      organiser: 'MIT Solve',
      isFree: true
  ),
  Meet(
      title: "Having good Pregnancy period.",
      message: "La femme enceinte doit au maximum eviter les aliment Gras. Elle doit manger cinq fruits et légumes par jour. Les fruits et légumes sont une excellente source de vitamines, de minéraux et de fibres.",
      image: Assets.pregnant_women,
      date: "Yaounde, 08 Dec 2023",
      views: 90,
      like: 12,
      organiser: 'UN Women',
      isFree: true
  ),
];
