import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
class FlowTrackScreen extends StatefulWidget {
  const FlowTrackScreen({super.key,});


  @override
  State<FlowTrackScreen> createState() => _FlowTrackScreenState();
}


class _FlowTrackScreenState extends State<FlowTrackScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding:const EdgeInsets.only(top: 50),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                TableCalendar(
                  firstDay: DateTime.utc(2022, 1, 1),
                  lastDay: DateTime.utc(2060, 12, 31),
                  rowHeight: 40,
                  pageJumpingEnabled: false,
                  focusedDay: DateTime.now(),
                  calendarFormat: CalendarFormat.week,
                  headerStyle: HeaderStyle(
                    formatButtonVisible: false,
                    formatButtonShowsNext: false,
                    headerMargin: const EdgeInsets.only(left: 20/2),
                    titleTextStyle: const TextStyle(
                      fontSize: 17.0,
                      fontWeight: FontWeight.bold
                      ),
                      titleTextFormatter: (date, locale) => DateFormat.yMMMMd(locale).format(date),
                      leftChevronVisible: false,
                      rightChevronVisible: false,
                  ),
                  calendarStyle: const CalendarStyle(
                    markerMargin: EdgeInsets.all(10)
                  ),
                  currentDay: DateTime.now(),
                  //headerVisible: false,
                  formatAnimationCurve: Curves.bounceInOut,
                ),
                Stack(
                  //fit: StackFit.expand,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(20),
                      padding: const EdgeInsets.all(20),
                      //width: MediaQuery.of(context).size.width,
                      //height: 200,
                      decoration: BoxDecoration(
                        //color: const Color(0xFFFEBDB9).withOpacity(0.4),
                        borderRadius: BorderRadius.circular(200)
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(200),
                        child: Image.asset(
                          'assets/images/baby.jpg',
                          //width: ,
                          ),
                      ),
                    ),
                     Positioned(
                      top: 0,
                      bottom: 0,
                      left: 0,
                      right: 0,
                       child: Container(
                        margin: const EdgeInsets.all(20),
                        padding: const EdgeInsets.all(20),
                        width: MediaQuery.of(context).size.width,
                        height: 50,
                        decoration: BoxDecoration(
                          color: const Color(0xFFFEBDB9).withOpacity(0.5),
                          borderRadius: BorderRadius.circular(200)
                        ),
                                         ),
                     ),
                  ],
                ),
                const SizedBox(height: 20,),
                const Text(
                  '6 mois, 2 semaines de ta grocesse',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w600,
                  height: 0.05,
                  letterSpacing: -0.24,
                  ),
                ),
                const SizedBox(height: 30,),
                const Text(
                'Waouh le cœur du bébé bat déjà.',
                textAlign: TextAlign.center,
                style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0.05,
                letterSpacing: -0.24,
                ),
              )
              ],
            ),
          )
    );
  }
}
