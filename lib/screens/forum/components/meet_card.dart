import 'package:besty/models/meet.dart';
import 'package:besty/models/news.dart';
import 'package:flutter/material.dart';
import 'package:expandable/expandable.dart';
import '../../../constants/constants.dart';


class MeetCard extends StatelessWidget {
  MeetCard({
    Key? key,
    required this.meet,
    required this.press,
  }) : super(key: key);


  Meet meet;
  VoidCallback press;


  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.symmetric(vertical: kDefaultPadding * 0.25),
        child: InkWell(
          //onTap: press,
          //width: 200,
          child: Container(
            width: MediaQuery.of(context).size.width * 0.47 ,
            //shadowColor: const Color(0x3600000F),
            //margin: const EdgeInsets.symmetric(vertical: kDefaultPadding ),
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding * 0.25),
            //elevation: 5,
                child: Column(
                    children: [
                      AspectRatio(
                        aspectRatio: 1.1,
                        child: Image.asset(
                          meet.image,
                          fit: BoxFit.cover
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(kDefaultPadding * 0.05),
                        decoration: const BoxDecoration(
                            color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Color(0xFFFFFFFF),
                              blurRadius: 0.2,
                              offset: Offset.zero,
                              spreadRadius: 0.5,
                              blurStyle: BlurStyle.normal
                            ),
                          ]
                        ),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: kDefaultPadding * 0.5,
                                    left: kDefaultPadding * 0.1,
                                    right: kDefaultPadding * 0.5
                                ),
                                child: Text(
                                  meet.date,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                    fontFamily: 'Poppins',
                                    //fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(0.5),
                                    //height: 0.10,
                                    //letterSpacing: -0.24,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: kDefaultPadding * 0.2,
                                    left: kDefaultPadding * 0.1,
                                    right: kDefaultPadding * 0.5
                                ),
                                child: Text(
                                  meet.title,
                                  maxLines: 2,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                    //fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(0.8),
                                    //height: 0.10,
                                    //letterSpacing: -0.24,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: kDefaultPadding * 0.2,
                                    left: kDefaultPadding * 0.1,
                                    right: kDefaultPadding * 0.5
                                ),
                                child: Text(
                                  meet.organiser,
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                    //fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: Colors.black.withOpacity(0.5),
                                    //height: 0.10,
                                    //letterSpacing: -0.24,
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(
                                    top: kDefaultPadding * 0.2,
                                    left: kDefaultPadding * 0.1,
                                    right: kDefaultPadding * 0.5
                                ),
                                child: Text(
                                  'Free',
                                  style: Theme.of(context)
                                      .textTheme
                                      .labelLarge!
                                      .copyWith(
                                    //fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w500,
                                    color: kPrimaryColor,
                                    //height: 0.10,
                                    //letterSpacing: -0.24,
                                  ),
                                ),
                              ),
                            ]
                        ),
                      ),
              ],
            ),
          ),
        )
    );
  }
}
