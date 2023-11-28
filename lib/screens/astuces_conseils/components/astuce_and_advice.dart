import 'package:besty/constants/constants.dart';
import 'package:besty/generated/assets.dart';
import 'package:besty/models/conseil.dart';
import 'package:besty/screens/astuces_conseils/components/conseil_card.dart';
import 'package:flutter/material.dart';


class AstucesAndAdvices extends StatelessWidget {
  const AstucesAndAdvices({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Column(
        children: List.generate(
          2, 
          (index) => PersonalAdviceCard(
            conseil: ConseilsData[index + 1], 
            press: (){}
          )
        ),
      );
  }
}
