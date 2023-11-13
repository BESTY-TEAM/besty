import 'package:besty/constants/constants.dart';
import 'package:besty/models/period.dart';
import 'package:flutter/material.dart';

class SymptomSectionCard extends StatelessWidget{
  SymptomSectionCard({
    Key? key,
    required this.period,
    //required this.press,
  }) : super(key: key);

  //final VoidCallback press;
  Period period;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: Container(
          padding: const EdgeInsets.all(kDefaultPadding),
          child: Column(
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: kDefaultPadding * 2,
                    child: Text(
                      'Hello'//period.symptom.map((e){})
                    ),
                  )
                ],
              ),
              const Row(
                children: [

                ],
              )
            ],
          ),
        ),
    );
  }
}