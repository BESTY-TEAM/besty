import 'package:besty/constants/constants.dart';
import 'package:besty/generated/assets.dart';
import 'package:besty/models/conseil.dart';
import 'package:besty/screens/astuces_conseils/components/conseil_card.dart';
import 'package:besty/screens/astuces_conseils/components/education_card.dart';
import 'package:flutter/material.dart';


class Education extends StatelessWidget {
  const Education({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Column(
        children: List.generate(
          ConseilsData.length, 
          (index) => EduationCard(
            conseil: ConseilsData[index], 
          )
        ),
      );
  }
}
