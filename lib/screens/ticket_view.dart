import 'package:besty/constants/constants.dart';
import 'package:besty/screens/tickContainer.dart';
import 'package:flutter/material.dart';


class TicketView extends StatelessWidget{
  const TicketView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = AppLayout.getSize(context);
    return SizedBox(
      width: size.width,
      height: 200,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: kDefaultPadding / 1.25),
        child: Column(
          children: [
            /*
              La partie Bleu du ticket
             */
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 1.25),
              decoration: const BoxDecoration(
                color: kEmailPrimaryColor,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(kDefaultPadding + 1),
                  topLeft: Radius.circular(kDefaultPadding + 1)
                )
              ),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        "NYC",
                        style: Styles.headLineStyle3.copyWith(color: kContentColorDarkTheme),
                      ),
                      Expanded(child: Container()),
                      TickContainer(),
                      Expanded(
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 24,
                                child: LayoutBuilder(
                                  builder: (BuildContext context, BoxConstraints constraints) {
                                    print("The width is ${constraints.constrainWidth()}");
                                    return Flex(
                                      direction: Axis.horizontal,
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                      children: List.generate(
                                          (constraints.constrainWidth()/6).floor(),
                                          (index) => SizedBox(
                                            width: 3,
                                            height: 1,
                                            child: DecoratedBox(
                                              decoration: BoxDecoration(
                                                color: kContentColorDarkTheme
                                              ),
                                            ),
                                          )
                                      ),
                                    );
                                  }


                                ),
                              ),
                              Center(
                                child: Transform.rotate(
                                  angle: 1.58,
                                  child: const Icon(
                                    Icons.local_airport_rounded,
                                    color: kContentColorDarkTheme,
                                  ),
                                ),
                              ),
                            ],
                          )
                      ),
                      const TickContainer(),
                      Expanded(child: Container()),
                      Text(
                        "LDN",
                        style: Styles.headLineStyle3.copyWith(color: kContentColorDarkTheme),
                      )
                    ],
                  ),
                  const SizedBox(height: kDefaultPadding * 0.25),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                        width: 100,
                        child: Text(
                          'New-York',
                          style: Styles.headLineStyle4.copyWith(color: kContentColorDarkTheme),
                        ),
                      ),
                      Text(
                        '8H 30M',
                        style: Styles.headLineStyle4.copyWith(color: kContentColorDarkTheme, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        width: 100,
                        child: Text(
                          'London',
                          textAlign: TextAlign.end,
                          style: Styles.headLineStyle4.copyWith(color: kContentColorDarkTheme),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            /*
               La partie rouge du Ticket avec les tirets
             */
            Container(
              decoration: BoxDecoration(
                color: kBadgeColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: kDefaultPadding,
                    width: kDefaultPadding * 0.5,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: kContentColorDarkTheme,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(kDefaultPadding * 0.5),
                          bottomRight: Radius.circular(kDefaultPadding * 0.5)
                        )
                      ),
                    ),
                  ),
                  Expanded(
                      child: Padding(
                        padding: EdgeInsets.all(kDefaultPadding * 0.2),
                        child: LayoutBuilder(
                            builder: (BuildContext context, BoxConstraints constraints) {
                              print("The width is ${constraints.constrainWidth()}");
                              return Flex(
                                direction: Axis.horizontal,
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: List.generate(
                                    (constraints.constrainWidth()/10).floor(),
                                        (index) => SizedBox(
                                      width: 5,
                                      height: 1,
                                      child: DecoratedBox(
                                        decoration: BoxDecoration(
                                            color: kContentColorDarkTheme
                                        ),
                                      ),
                                    )
                                ),
                              );
                            }


                        ),
                      ),
                  ),
                  const SizedBox(
                    height: kDefaultPadding,
                    width: kDefaultPadding * 0.5,
                    child: DecoratedBox(
                      decoration: BoxDecoration(
                        color: kContentColorDarkTheme,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(kDefaultPadding * 0.5),
                          bottomLeft: Radius.circular(kDefaultPadding * 0.5)
                        )
                      ),
                    ),
                  ),
                ],
              ),
            ),
            /*
               La partie rouge du Ticket sous le Container Rouge avec les tirets
             */
            Container(
              padding: const EdgeInsets.all(kDefaultPadding / 1.25),
              decoration: const BoxDecoration(
                  color: kBadgeColor,
                  borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(kDefaultPadding + 1),
                      bottomLeft: Radius.circular(kDefaultPadding + 1)
                  )
              ),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            '1 May',
                            style: Styles.headLineStyle3.copyWith(color: kContentColorDarkTheme),
                          ),
                          const SizedBox(height: kDefaultPadding * 0.2,),
                          Text(
                            'Date',
                            style: Styles.headLineStyle4.copyWith(color: kContentColorDarkTheme),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Text(
                            '08:00 AM',
                            style: Styles.headLineStyle3.copyWith(color: kContentColorDarkTheme),
                          ),
                          const SizedBox(height: kDefaultPadding * 0.2,),
                          Text(
                            'Depart',
                            style: Styles.headLineStyle4.copyWith(color: kContentColorDarkTheme),
                          )
                        ],
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            '23',
                            style: Styles.headLineStyle3.copyWith(color: kContentColorDarkTheme),
                          ),
                          const SizedBox(height: kDefaultPadding * 0.2,),
                          Text(
                            'Number',
                            style: Styles.headLineStyle4.copyWith(color: kContentColorDarkTheme),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AppLayout {
  static getSize(BuildContext context){
    return MediaQuery.of(context).size;
  }
}