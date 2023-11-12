import 'package:besty/constants/constants.dart';
import 'package:besty/constants/assets.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';
class PregnantScreen extends StatefulWidget {
  const PregnantScreen({super.key,});


  @override
  State<PregnantScreen> createState() => _PregnantScreenState();
}


class _PregnantScreenState extends State<PregnantScreen> {
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.week;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding:const EdgeInsets.only(top: 50),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  //Text("Selected day = " + today.toString().split("")[0]),
                  TableCalendar(
                    firstDay: DateTime.utc(2010, 10, 16),
                    lastDay: DateTime.utc(2030, 3, 14),
                    locale: "en_US",
                    /*availableCalendarFormats: const {
                      CalendarFormat.month: 'Month',
                      CalendarFormat.week: 'Week',
                    },*/
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
                    availableGestures: AvailableGestures.all,
                    //calendarFormat: CalendarFormat.week,
                   /* selectedDayPredicate: (day) {
                      return isSameDay(_selectedDay, day);
                    },*/
                    //firstDay: kFirstDay,
                    //lastDay: kLastDay,
                    focusedDay: _focusedDay,
                    calendarFormat: _calendarFormat,
                    // To see
                    currentDay: _focusedDay,
                    selectedDayPredicate: (day) {
                      // Use `selectedDayPredicate` to determine which day is currently selected.
                      // If this returns true, then `day` will be marked as selected.

                      // Using `isSameDay` is recommended to disregard
                      // the time-part of compared DateTime objects.
                      return isSameDay(_selectedDay, day);
                    },
                    onDaySelected: (selectedDay, focusedDay) {
                      if (!isSameDay(_selectedDay, selectedDay)) {
                        // Call `setState()` when updating the selected day
                        print("if hello  + $_selectedDay");
                        print("if Hi  + $_focusedDay");
                        setState(() {
                          _selectedDay = selectedDay;
                          _focusedDay = focusedDay;
                          print("ifset hello  + $_selectedDay");
                          print("if Hiset  + $_focusedDay");

                        });
                        //print(_selectedDay);
                      }
                      print("hello  + $_selectedDay");
                      print("Hi  + $_focusedDay");
                    },
                    onFormatChanged: (format) {
                      if (_calendarFormat != format) {
                        // Call `setState()` when updating calendar format
                        setState(() {
                          _calendarFormat = format;
                        });
                      }
                    },
                    onPageChanged: (focusedDay) {
                      // No need to call `setState()` here
                      _selectedDay = focusedDay;
                      //_focusedDay = focusedDay;
                    },
                  ),

                  Stack(
                    //fit: StackFit.expand,
                    children: [
                      Container(
                        //margin: const EdgeInsets.all(kDefaultPadding),
                        padding: const EdgeInsets.all(kDefaultPadding),
                        width: MediaQuery.of(context).size.width,
                        //height: 200,
                        decoration: BoxDecoration(
                          //color: const Color(0xFFFEBDB9).withOpacity(0.4),
                          borderRadius: BorderRadius.circular(kDefaultPadding * 200)
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(kDefaultPadding * 200),
                          child: Image.asset(
                            Assets.baby,
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
                          margin: const EdgeInsets.all(kDefaultPadding),
                          //padding: const EdgeInsets.all(kDefaultPadding),
                          width: MediaQuery.of(context).size.width,
                          height: 50,
                          decoration: BoxDecoration(
                            color: const Color(0xFFFEBDB9).withOpacity(0.5),
                            borderRadius: BorderRadius.circular(kDefaultPadding * 200)
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
                    //color: Colors.black,
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
                  //color: Colors.black,
                  fontSize: 20,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0.05,
                  letterSpacing: -0.24,
                  ),
                )
                ],
              ),
            ),
          )
    );
  }
}
