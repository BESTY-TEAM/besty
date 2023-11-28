import 'package:besty/constants/constants.dart';
import 'package:besty/generated/assets.dart';
import 'package:besty/models/conseil.dart';
import 'package:besty/screens/astuces_conseils/components/conseil_card.dart';
import 'package:flutter/material.dart';


class PersonalAdvice extends StatelessWidget {
  const PersonalAdvice({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: List.generate(
            ConseilsData.length, 
            (index) => PersonalAdviceCard(conseil: ConseilsData[index], press: (){})),
        ),
      );
  }
}
