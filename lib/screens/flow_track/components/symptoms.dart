import 'package:besty/constants/constants.dart';
import 'package:besty/generated/assets.dart';
import 'package:besty/screens/flow_track/components/symptoms_card.dart';
import 'package:flutter/material.dart';

import '../../../models/period.dart';

class SymptomSection extends StatelessWidget{
  const SymptomSection({
    Key? key,
    //required this.period,
    //required this.press,
  }) : super(key: key);

  //final VoidCallback press;
  //Period period;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(vertical: kDefaultPadding, horizontal: kDefaultPadding ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        Assets.iconsLuckyPregnant,
                        width: kDefaultPadding,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Chance de tomber enceinte",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "Faible",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                      !.copyWith(
                        fontWeight: FontWeight.w700,
                      )
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Assets.iconsBlood,
                        width: kDefaultPadding,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Prochaines Menstruations",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "10 Nov",
                      style: Theme.of(context)
                          .textTheme
                          .titleSmall
                      !.copyWith(
                        fontWeight: FontWeight.w700,
                      )
                  ),

                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        Assets.iconsOvulation,
                        width: kDefaultPadding,
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8.0),
                        child: Text(
                          "Ovulation",
                            style: Theme.of(context)
                                .textTheme
                                .labelLarge
                        ),
                      ),
                    ],
                  ),
                  Text(
                    "24 Oct",
                    style: Theme.of(context)
                      .textTheme
                      .titleSmall
                      !.copyWith(
                      fontWeight: FontWeight.w700,
                    )
                  ),
                ],
              ),
            ),
            const SizedBox(height: kDefaultPadding * 0.75,),
            Text(
              "Les symptomes",
                style: Theme.of(context)
                    .textTheme
                    .headline6
            ),
            SymptomSectionCard(),
            SymptomSectionCard(),
            SymptomSectionCard(),
            /*Container(
              child: Column(
                children: List.generate(
                    5,
                        (index) => SymptomSectionCard()//period: PeriodData[index],)
                ),
              ),
            )*/
            /*Column(
              children: List.generate(
                  5,
                  (index) => SymptomSectionCard(period: PeriodData[index],)
              ),
            ),
            //SymptomSectionCard(,),
            Container(

            )*/
          ],
        ),
    );
  }
}