import 'package:besty/screens/flow_track/components/circular_slider.dart';
import 'package:besty/screens/flow_track/components/circular_slider_controller.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:table_calendar/table_calendar.dart';


class FlowTrackScreen extends StatefulWidget {
  const FlowTrackScreen({super.key, required this.title});

  final String title;

  @override
  State<FlowTrackScreen> createState() => _FlowTrackScreenState();
}


class _FlowTrackScreenState extends State<FlowTrackScreen> {
  CircularSliderController controller = CircularSliderController(day: 10);
  DateTime _focusedDay = DateTime.now();
  DateTime? _selectedDay;
  CalendarFormat _calendarFormat = CalendarFormat.week;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15,
          ),
          child: Column(
            children: <Widget>[
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
              TextFormField(
                keyboardType: TextInputType.number,
                validator: (value) {
                  try {
                    int.parse(value!);
                    return null;
                  } catch (e) {
                    return 'Please enter a valid day';
                  }
                },
                autovalidateMode: AutovalidateMode.onUserInteraction,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Day',
                ),
                onChanged: (value) {
                  try {
                    controller.changeDay(int.parse(value));
                  } catch (e) {}
                },
              ),
              CircularSlider(
                controller: controller,
              ),
            ],
          ),
        ),
      ),
    );
  }
}