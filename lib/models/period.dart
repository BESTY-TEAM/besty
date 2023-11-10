import 'package:besty/constants/assets.dart';
import 'package:besty/models/subsymptom.dart';
import 'package:besty/models/symptom.dart';

class Period {
  final int firstDay;
  final int endDay;
  final List<Symtom> symptom;
  final String note;
  Period({
    required this.symptom,
    required this.firstDay,
    required this.endDay,
    required this.note,
  });
}

List PeriodData = [
  Period(
    symptom: [

    ],
    firstDay: 45,
    endDay: 25,
    note: ''
  ),
];
