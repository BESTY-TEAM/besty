import 'package:besty/models/status.dart';
import 'package:flutter/material.dart';

import '../../../constants/constants.dart';

class StatusCard extends StatelessWidget {
  const StatusCard({
    Key? key,
    required this.status,
    required this.press,
  }) : super(key: key);

  final Status status;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: kDefaultPadding * 0.25),
      child: InkWell(
        onTap: press,
        //width: 200,
        child: Stack(
            children: [
              Container(
                //margin: const EdgeInsets.all(kDefaultPadding * 0.05),
                //height: MediaQuery.of(context).size.height / 5,
                width: MediaQuery.of(context).size.width * 0.31,
                decoration: BoxDecoration(
                  color: kContentColorDarkTheme,
                  borderRadius: BorderRadius.circular(kDefaultPadding * 0.5),
                  image: DecorationImage(
                    image: AssetImage(
                      status.image,
                    ),
                    fit: BoxFit.cover
                  )
                ),
              ),
              Positioned(
              bottom: 0,
              top: -80,
              right: 0,
              left: 0,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.60,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(kDefaultPadding * 0.5),
                  // Design Gradient
                  /*
                  gradient: LinearGradient(
                    begin: Alignment(-0.00, -1.00),
                    end: Alignment(0, 1),
                    colors: [Colors.white.withOpacity(0.019999999552965164), Color(0xFF373131)],
                  ),*/

                  /// EEEEEE

                  // Me Gradient
                  
                  gradient: const LinearGradient(
                    colors: [            
                      Colors.black54,
                      Colors.transparent,
                      //Colors.white,
                      //Colors.white,
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment(0, 0.2),
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 0,
              //top: -80,
              child: Padding(
                padding: const EdgeInsets.fromLTRB(kDefaultPadding * 0.25, 2, 2, kDefaultPadding * 0.25),
                child: Text(
                  status.title,
                  style: const TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w700,
                    color: kContentColorDarkTheme
                  ),
                  ),
              )
            ),
            ],
          ),
        
      ),
    );
  }
}
