import 'package:besty/constants/assets.dart';

class Status {
  final String title;
  final String message;
  final String image;
  final String time;
  final bool isActive;
  final int numBesty;

  Status({
    required this.title,
    required this.message,
    required this.image,
    this.time = '',
    this.numBesty = 0,
    this.isActive = false,
  });

}

List StatusData = [
  Status(
    title: "UNICEF",
    message: "La Scientifique camerounaise Emili...",
    image: Assets.women_tech,
    time: "5d ago",
    isActive: false,
  ),
  Status(
    title: "FIFA",
    message: "Tout comme les hommes, les femmes...",
    image: Assets.women_football,
    time: "8m ago",
    isActive: true, 
  ),
  Status(
    title: "Google",
    message: "Woman find a vaccin against Ebo...",
    image: Assets.women_labo,
    time: "5d ago",
    isActive: true,
  ),

  Status(
    title: "UN Women",
    message: "La femme enceinte doit au maximum evi...",
    image: Assets.pregnant_women,
    time: "3m ago",
    isActive: false,
  ),
  Status(
    title: "FIFA",
    message: "Tout comme les hommes, les femmes...",
    image: Assets.women_football,
    time: "8m ago",
    isActive: true,
  ),
  Status(
    title: "UIT",
    message: "La Scientifique camerounaise Emili...",
    image: Assets.women_tech,
    time: "5d ago",
    isActive: false,
  ),
  Status(
    title: "MINPOSTEL",
    message: "Woman find a vaccin against Ebo...",
    image: Assets.women_labo,
    time: "5d ago",
    isActive: true,
  ),
  Status(
    title: "UN Women",
    message: "La femme enceinte doit au maximum evi...",
    image: Assets.pregnant_women,
    time: "3m ago",
    isActive: false,
  ),
  Status(
    title: "FECAFOOT",
    message: "Tout comme les hommes, les femmes...",
    image: Assets.women_football,
    time: "8m ago",
    isActive: true,
  ),
  Status(
    title: "HUAWEI",
    message: "La Scientifique camerounaise Emili...",
    image: Assets.women_tech,
    time: "5d ago",
    isActive: false,
    
  ),
  Status(
    title: "BESTY",
    message: "Woman find a vaccin against Ebo...",
    image: Assets.women_labo,
    time: "5d ago",
    isActive: true,
  ),

  Status(
    title: "HWO",
    message: "La femme enceinte doit au maximum evi...",
    image: Assets.pregnant_women,
    time: "3m ago",
    isActive: false,
  ),
];
