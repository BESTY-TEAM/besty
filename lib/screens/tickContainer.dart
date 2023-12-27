import 'package:besty/constants/constants.dart';
import 'package:flutter/material.dart';


class TickContainer extends StatelessWidget{
  const TickContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(kDefaultPadding / 6.66),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(kDefaultPadding),
        border: Border.all(width: 2.5, color: kContentColorDarkTheme)
      ),
      ///child:
    );
  }
}

