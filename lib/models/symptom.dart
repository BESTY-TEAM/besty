import 'package:besty/generated/assets.dart';
import 'package:besty/models/subsymptom.dart';

class Symtom {
  final String symptomTitle;
  final String symptomImage;
  final List<SubSymtom> subSymptom;

  Symtom({
    required this.symptomTitle,
    required this.symptomImage,
    required this.subSymptom,
  });

}

List SymtomsData = [
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

];
