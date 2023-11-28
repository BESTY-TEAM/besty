import 'package:besty/constants/constants.dart';
import 'package:besty/screens/astuces_conseils/components/astuce_and_advice.dart';
import 'package:besty/screens/astuces_conseils/components/conseil.dart';
import 'package:besty/screens/astuces_conseils/components/education.dart';
import 'package:besty/screens/astuces_conseils/components/header_section.dart';
import 'package:flutter/material.dart';



class HomeEducation extends StatelessWidget {
  const HomeEducation({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        bottomSheet: Container(
          color: kPrimaryColor,
          child: SizedBox(height: 100,),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: kDefaultPadding * 2
              ),
              const HeaderSection(),
              // Personnal Advice
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Pour votre Grocesse",
                      style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(
                          fontWeight: FontWeight.bold
                        )                  
                    ),
                    const InkWell(
                      onTap: null,
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: kPrimaryColor
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const PersonalAdvice(),
              // Actuces & Conseil
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Astuces et Conseils",
                      style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(
                          fontWeight: FontWeight.bold
                        )                  
                    ),
                    const InkWell(
                      onTap: null,
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: kPrimaryColor
                        ),
                      ),
                    )
                  ],
                ),
              ),
              const AstucesAndAdvices(),
              // Education
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Education",
                      style: Theme.of(context)
                        .textTheme
                        .titleMedium
                        ?.copyWith(
                          fontWeight: FontWeight.bold
                        )                  
                    ),
                    const InkWell(
                      onTap: null,
                      child: Text(
                        "See All",
                        style: TextStyle(
                          color: kPrimaryColor
                        ),
                      ),
                    )
                  ],
                ),
              ), 
              Education()
            ],
          ),
        ),
      );
    }
}
