import 'package:besty/constants/constants.dart';
import 'package:besty/generated/assets.dart';
import 'package:flutter/material.dart';


class HeaderSection extends StatelessWidget {
  const HeaderSection({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
      return Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.204,//180,
        margin: const EdgeInsets.fromLTRB(kDefaultPadding, kDefaultPadding, kDefaultPadding, kDefaultPadding * 0.7),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: const LinearGradient(
            begin: Alignment.centerLeft,//begin: Alignment(-0.95, 0.31),
            end: Alignment(1.2, 2.0),//end: Alignment(0.95, -0.31),
            colors: [ 
              Color(0xFFFF6EAB),
              Color(0xFF112C7B),
            ],
          ),
        ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Image.asset(
              Assets.imagesDoctor,
              width: 100,
            ),
            Flexible(
              child: Padding(
                padding: const EdgeInsets.fromLTRB(kDefaultPadding * 0.75, kDefaultPadding * 0.5, kDefaultPadding * 0.5, kDefaultPadding * 0.5),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                    "Contacter un spécialiste en santé et recevez des conseils gratuit",
                    maxLines: 3,
                    style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(
                      color: kContentColorDarkTheme,
                      fontFamily: "Poppins"
                    )
                  ),
                  Text(
                  "Discute de ton problème avec un specialiste de santé et reçois de conseils gratuitements",
                  //"Contacter un spécialiste en santé et recevez des conseils gratuit",
                  maxLines: 2,
                  style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(
                      color: kContentColorDarkTheme.withOpacity(0.5),
                      fontFamily: "Poppins"
                    )
                  ),
                  ElevatedButton(
                    onPressed: (){},       
                    child: const Text(
                      "Lire Plus"
                    ),
                  ),
                ],
              ),
            ),
            ),
          ],
          ),
        ),
      );
    }
}
