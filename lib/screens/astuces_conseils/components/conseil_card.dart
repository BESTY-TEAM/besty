import 'package:besty/constants/constants.dart';
import 'package:besty/generated/assets.dart';
import 'package:besty/models/conseil.dart';
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
      return Container(
        width: MediaQuery.of(context).size.width,
        //height: 150,
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.5, horizontal: kDefaultPadding * 0.7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(
          children: [
            Flexible(
              flex: 1,
              child: ClipRRect(
                  borderRadius: BorderRadius.all(Radius.circular(kDefaultPadding * 0.5)),
                  child: Image.asset(
                    conseil.image,
                    fit: BoxFit.cover,
                    height: 150,
                    width: MediaQuery.of(context).size.width * 0.3
                  ),
                ),
            ),
            Flexible(
              flex: 2,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 8.0),
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
                    ElevatedButton(
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
      );
    }
}
