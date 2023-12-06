import 'package:besty/common/ScrollToHide.dart';
import 'package:besty/constants/constants.dart';
import 'package:besty/screens/astuces_conseils/components/astuce_and_advice.dart';
import 'package:besty/screens/astuces_conseils/components/conseil.dart';
import 'package:besty/screens/astuces_conseils/components/education.dart';
import 'package:besty/screens/astuces_conseils/components/header_section.dart';
import 'package:flutter/material.dart';



class HomeEducation extends StatefulWidget {
  const HomeEducation({
    Key? key,
    //this.controller = ScrollController(),
  }) : super(key: key);

  //final ScrollController controller;


  @override
  State<HomeEducation> createState() => _HomeEducationState();

}
class _HomeEducationState extends State<HomeEducation> {
  //const HomeEducation({Key? key}) : super(key: key);

  late ScrollController controller;
  @override
  void initState(){
    super.initState();
    controller = ScrollController();
  }

  @override
  void dispose (){
    controller.dispose();
    super.dispose();
  }

  Future<void> _refresh(){
    return Future.delayed(const Duration(microseconds: 100));
  }

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        body: RefreshIndicator(
          onRefresh: _refresh,
          child: SingleChildScrollView(
            //controller: SrollToHideWidget.controller,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(
                  height: kDefaultPadding * 2
                ),
                const HeaderSection(),
                // Personnal Advice
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2),
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
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 8, horizontal: kDefaultPadding / 2),
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
                  padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 8, horizontal: kDefaultPadding / 2),
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
        ),
      );
    }
}
