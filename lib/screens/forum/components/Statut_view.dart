import 'package:besty/models/status.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class StatusView extends StatelessWidget {
  const StatusView({
    Key? key,
    required this.status,
    //required this.press,
  }) : super(key: key);

  final Status status;
  //final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: false,
          child :Stack(
              children: [
                /*InkWell(
                  onTap: (){
                    Navigator.pop(context);
                  },
                  child:*/ Container(
                    //margin: const EdgeInsets.all(kDefaultPadding * 0.05),
                    //height: MediaQuery.of(context).size.height / 5,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                        //color: kContentColorDarkTheme,
                        gradient: const LinearGradient(
                          begin:  Alignment.topCenter,
                          end:  Alignment.bottomCenter,
                          colors: [
                            //kSecondaryColor,
                            Color(0x26FF6EAB),
                            kSecondaryColor,
                            kSecondaryColor,
                            Color(0x26FF6EAB),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(kDefaultPadding * 0.5),
                        image: DecorationImage(
                            image: AssetImage(
                              status.image,
                            ),
                            //fit: BoxFit.cover
                        )
                    ),
                  ),
                //),
              ],
            ),
    );
  }
}
