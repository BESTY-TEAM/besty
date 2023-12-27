import 'package:besty/constants/constants.dart';
import 'package:besty/generated/assets.dart';
import 'package:besty/models/conseil.dart';
import 'package:besty/screens/astuces_conseils/components/conseil_card.dart';
import 'package:flutter/material.dart';


class PersonalAdvice extends StatelessWidget {
  const PersonalAdvice({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        //margin: const EdgeInsets.symmetric(vertical: kDefaultPadding),
        height: 180,
        child: PageView.builder(
          itemCount: ConseilsData.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) { 
            return PersonalAdviceCard(conseil: ConseilsData[index], press: (){});
           },
          /*child: Row(
            children: List.generate(
              ConseilsData.length, 
              (index) => ),
          ),*/
        ),
      );
  }
}
