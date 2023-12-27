import 'package:besty/constants/constants.dart';
import 'package:besty/generated/assets.dart';
import 'package:besty/models/conseil.dart';
import 'package:besty/screens/astuces_conseils/components/conseil_details.dart';
import 'package:flutter/material.dart';


class PersonalAdviceCard extends StatelessWidget {
  const PersonalAdviceCard({
    Key? key,
    //this.isExpanded = false,
    required this.conseil,
    required this.press,
  }) : super(key: key);

  final Conseil conseil;
  final VoidCallback press;
    @override
    Widget build(BuildContext context) {
      return Padding(
        padding: const EdgeInsets.all(kDefaultPadding / 2),
        child: InkWell(
          onTap: (){
            showBottomSheet(
              //shape: ShapeBorder.lerp(StadiumBorder(), StadiumBorder(), 0),
              elevation: 1000,
              constraints: BoxConstraints(
                minHeight: MediaQuery.of(context).size.height * 0.9,
              ),
              enableDrag: false,
              context: context, 
              builder: (context){
                return EduationCardDetail(conseil: conseil,);
              }
            );
          },
          child: Container(
            width: MediaQuery.of(context).size.width,
            //height: 150,
              //margin: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.5, horizontal: kDefaultPadding * 0.7),
            //padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.5, /*horizontal: kDefaultPadding * 0.7*/),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(kDefaultPadding * 0.5),
                boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  blurRadius: 0.1,
                  spreadRadius: 0.1,
                  offset: const Offset(0.1, 0.1),
                ),
              ]
            ),
            child: Row(
              children: [
                Flexible(
                  flex: 1,
                  child: ClipRRect(
                      borderRadius: const BorderRadius.all(
                          Radius.circular(kDefaultPadding * 0.5)
                      ),
                      child: Image.asset(
                        conseil.image,
                        fit: BoxFit.cover,
                        height: 160,
                        width: MediaQuery.of(context).size.width * 0.3
                      ),
                    ),
                ),
                Flexible(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 2.5),//vertical: kDefaultPadding),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          conseil.title,
                          maxLines: 2,
                          style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(
                            fontWeight: FontWeight.w700,
                            fontFamily: "Poppins"
                          )
                        ),
                        const SizedBox(height: kDefaultPadding * 0.5,),
                        Text(
                        conseil.message,
                        //"Contacter un spécialiste en santé et recevez des conseils gratuit",
                        maxLines: 2,
                        style: Theme.of(context)
                          .textTheme
                          .titleMedium
                          ?.copyWith(
                            //color: kContentColorDarkTheme.withOpacity(0.5),
                            fontFamily: "Poppins"
                          )
                        ),
                        const SizedBox(height: kDefaultPadding * 0.25,),
                        FilledButton(
                          onPressed: (){},
                          style: ButtonStyle(
                            foregroundColor: MaterialStateProperty.resolveWith((Set<MaterialState> states) {
          
                            }),
                          ),
                          child: const Text(
                            "Lire Plus"
                          ),
                        ),
                      ],
                    ),
                  )
                ),
              ],
              )
          ),
        ),
      );
    }
}
