import 'package:besty/constants/assets.dart';

class Chat {
  final String name;
  final String lastMessage;
  final String image;
  final String time;
  final bool isActive;
  final int numBesty;

  Chat({
    required this.name,
    required this.lastMessage,
    required this.image,
    this.time = '',
    this.numBesty = 0,
    this.isActive = false,
  });

}

List chatsData = [
  Chat(
    name: "Abat les Tabou",
    lastMessage: "La femmes devraits être considerés...",
    image: Assets.besty,
    time: "3m ago",
    isActive: false,
    numBesty: 41
  ),
  Chat(
    name: "Les Besty du foot",
    lastMessage: "Tout comme les hommes, les femmes...",
    image: Assets.women_football,
    time: "8m ago",
    isActive: true,
    numBesty: 4175
  ),
  Chat(
    name: "Women in Tech",
    lastMessage: "La Scientifique camerounaise Emili...",
    image: Assets.women_tech,
    time: "5d ago",
    isActive: false,
    numBesty: 8500
  ),
  Chat(
    name: "Amazones of Tech",
    lastMessage: "Woman find a vaccin against Ebo...",
    image: Assets.women_labo,
    time: "5d ago",
    isActive: true,
    numBesty: 500000
  ),

  Chat(
    name: "Pregnant Women",
    lastMessage: "La femme enceinte doit au maximum evi...",
    image: Assets.pregnant_women,
    time: "3m ago",
    isActive: false,
    numBesty: 755
  ),
  
  Chat(
    name: "Abat les Tabou",
    lastMessage: "La femmes devraits être considerés...",
    image: Assets.besty,
    time: "3m ago",
    isActive: false,
    numBesty: 41
  ),
  Chat(
    name: "Les Besty du foot",
    lastMessage: "Tout comme les hommes, les femmes...",
    image: Assets.women_football,
    time: "8m ago",
    isActive: true,
    numBesty: 4175
  ),
  Chat(
    name: "Women in Tech",
    lastMessage: "La Scientifique camerounaise Emili...",
    image: Assets.women_tech,
    time: "5d ago",
    isActive: false,
    numBesty: 8500
  ),
  Chat(
    name: "Amazones of Tech",
    lastMessage: "Woman find a vaccin against Ebo...",
    image: Assets.women_labo,
    time: "5d ago",
    isActive: true,
    numBesty: 500000
  ),

  Chat(
    name: "Pregnant Women",
    lastMessage: "La femme enceinte doit au maximum evi...",
    image: Assets.pregnant_women,
    time: "3m ago",
    isActive: false,
    numBesty: 755
  ),

  Chat(
    name: "Abat les Tabou",
    lastMessage: "La femmes devraits être considerés...",
    image: Assets.besty,
    time: "3m ago",
    isActive: false,
    numBesty: 41
  ),
  Chat(
    name: "Les Besty du foot",
    lastMessage: "Tout comme les hommes, les femmes...",
    image: Assets.women_football,
    time: "8m ago",
    isActive: true,
    numBesty: 4175
  ),
  Chat(
    name: "Women in Tech",
    lastMessage: "La Scientifique camerounaise Emili...",
    image: Assets.women_tech,
    time: "5d ago",
    isActive: false,
    numBesty: 8500
  ),
  Chat(
    name: "Amazones of Tech",
    lastMessage: "Woman find a vaccin against Ebo...",
    image: Assets.women_labo,
    time: "5d ago",
    isActive: true,
    numBesty: 500000
  ),

  Chat(
    name: "Pregnant Women",
    lastMessage: "La femme enceinte doit au maximum evi...",
    image: Assets.pregnant_women,
    time: "3m ago",
    isActive: false,
    numBesty: 755
  ),
];
