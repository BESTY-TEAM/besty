import 'package:besty/models/subsymptom.dart';
import 'package:besty/models/symptom.dart';
import 'package:besty/generated/assets.dart';

class Period {
  final DateTime firstDay;
  final DateTime endDay;
  final int dure;
  final List<Symtom> symptom;
  final String note;
  final String title;
  Period({
    required this.symptom,
    required this.firstDay,
    required this.dure,
    required this.endDay,
    required this.note,
    required this.title,
  });
  // Fonction pour calculer la date d'ovulation
  DateTime calculateOvulationDate() {
    if (dure >= 21 && dure <= 35) {
      // Vérifier que la durée du cycle menstruel est valide
      // La date d'ovulation est 14 jours avant la fin de la période
      return endDay.subtract(Duration(days: 14));
    } else {
      throw Exception('La durée du cycle menstruel doit être entre 21 et 35 jours.');
    }
  }

  DateTime calculateNextPeriodStartDate() {
    if (dure >= 21 && dure <= 35) {
      // Vérifier que la durée du cycle menstruel est valide
      // Le début des prochaines règles est la fin de la période actuelle + 1 jour
      return endDay.add(Duration(days: 1));
    } else {
      throw Exception('La durée du cycle menstruel doit être entre 21 et 35 jours.');
    }
  }
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
        symptomImage: Assets.iconsMenstruationPain,
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
