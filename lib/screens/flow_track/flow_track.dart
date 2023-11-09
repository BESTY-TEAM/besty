import 'package:besty/constants/constants.dart';
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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kContentColorDarkTheme,
        toolbarHeight: 100,
        title: TableCalendar(
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
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.only(
            top: 15,
          ),
          child: Column(
            children: <Widget>[
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