import 'package:besty/constants/constants.dart';
import 'package:besty/generated/assets.dart';
import 'package:besty/models/period.dart';
import 'package:flutter/material.dart';

class SymptomSectionCard extends StatelessWidget{
  SymptomSectionCard({
    Key? key,
    //required this.period,
    //required this.press,
  }) : super(key: key);

  //final VoidCallback press;
  //Period period;

  @override
  Widget build(BuildContext context) {
    return  Container(
          padding: const EdgeInsets.all(kDefaultPadding / 1.5),
          margin: const EdgeInsets.symmetric(vertical: kDefaultPadding / 3),
          decoration: BoxDecoration(
            color: Color(0xfff7f7f7),
            borderRadius: BorderRadius.circular(kDefaultPadding / 3.5)
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Row(
                children: [
                  Image.asset(
                    Assets.iconsMenstruation,
                    width: 40,
                  ),
                  const SizedBox(width: kDefaultPadding / 2),
                  Text(
                    "La Menstruation",
                      style: Theme.of(context)
                          .textTheme
                          .titleLarge
                          !.copyWith(
                            fontWeight: FontWeight.w600
                          )

                  )
                ],
              ),
              const SizedBox(height: kDefaultPadding / 2),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    Assets.iconsSexProtection,
                    width: 40,
                  ),
                  const SizedBox(width: kDefaultPadding,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Intensity",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                              !.copyWith(
                                  fontWeight: FontWeight.w600
                              )
                      ),
                      Text(
                        "Normal",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                      ),
                    ],
                  ),
                  const SizedBox(width: kDefaultPadding,),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Decharge",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                      ),
                      Text(
                        "Rouge clair",
                          style: Theme.of(context)
                              .textTheme
                              .titleMedium
                      ),
                    ],
                  ),

                ],
              )
            ],
          ),
        );
  }
}