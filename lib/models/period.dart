import 'package:besty/models/subsymptom.dart';
import 'package:besty/models/symptom.dart';
import 'package:besty/generated/assets.dart';

class Period {
  final int firstDay;
  final int endDay;
  final List<Symtom> symptom;
  final String note;
  final String title;
  Period({
    required this.symptom,
    required this.firstDay,
    required this.endDay,
    required this.note,
    required this.title,
  });
}

List PeriodData = [
  Period(
    title: "Mentruation",
    firstDay: 45,
    endDay: 25,
    note: 'Pour éviter, règles douloureuse, buvez beaucoup d’eau, faites une sieste à midi, manger de l’oeuf, et trouver moyen de vous divertir dans là journée',
    symptom: [
      Symtom(
      symptomTitle: 'La Menstruation',
      symptomImage: Assets.iconsMenstruation,
      subSymptom: [
        SubSymtom(
          subTitle: 'Intensity',
          description: 'Normal',
          subTitle2: 'Decharge',
          description2: 'Rouge Clair',
          subImage: '',
        )
      ]
  ),
    Symtom(
        symptomTitle: 'Menstrual Pain',
        symptomImage: Assets.iconsMenstruation_pain,
        subSymptom: [
          SubSymtom(
            subTitle: 'Intensity',
            description: 'Hight',
            subTitle2: 'Character',
            description2: 'Breasts',
            subImage: '',
          ),
          SubSymtom(
            subTitle: 'Intensity',
            description: 'Faible',
            subTitle2: 'Character',
            description2: 'Lower Breasts',
            subImage: '',
          )
        ]
    ),
    Symtom(
        symptomTitle: 'Mood',
        symptomImage: Assets.iconsMood,
        subSymptom: [
          SubSymtom(
            subTitle: 'Character',
            description: 'Fatigué',
            subImage: '',
          )
        ]
    ),
    Symtom(
        symptomTitle: 'Sex Protection',
        symptomImage: Assets.iconsMood,
        subSymptom: [
          SubSymtom(
            subTitle: 'Character',
            description: 'Condom',
            subImage: '',
          )
        ]
    ),
  ],
  ),
];
