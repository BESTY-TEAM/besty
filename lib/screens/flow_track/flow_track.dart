import 'package:besty/screens/flow_track/components/circular_slider.dart';
import 'package:besty/screens/flow_track/components/circular_slider_controller.dart';
import 'package:besty/screens/flow_track/components/symptoms.dart';
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
  //int currentDay = _focusedDay.day;

 /* @override
  void initState() {
    controller.addListener(() {
      setState(() {

      });
    });
    super.initState();
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView (
        child: Padding(
        padding:const EdgeInsets.only(top: 50),
            child: Column(
              children: <Widget>[
                TableCalendar(
                  firstDay: DateTime.utc(2010, 10, 16),
                  lastDay: DateTime.utc(2030, 3, 14),
                  locale: "en_US",
                  currentDay: _focusedDay,
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
                  selectedDayPredicate: (day) {
                    return isSameDay(_selectedDay, day);
                  },
                  onDaySelected: (selectedDay, focusedDay) {
                    if (!isSameDay(_selectedDay, selectedDay)) {
                      setState(() {
                        _selectedDay = selectedDay;
                        _focusedDay = focusedDay;
                      });
                      //print(_selectedDay);
                    }

                    /*if(!controller.currentDragOffset(_focusedDay)){
                      setState(() {
                        _selectedDay = controller.day as DateTime?;
                        _focusedDay = focusedDay;
                      });
                    }*/
                    // Deplacer l'index du flowTract en fonction du jour
                    try {
                      controller.changeDay(_focusedDay.day);
                      print(_focusedDay.day);
                    } catch (e) {}
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
                //const SizedBox(height: 1000,),
                //SymptomSection()
              ],
            ),
          ),
      )
    );
  }
}