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
      symptomTitle: '',
      symptomImage: '',
      subSymptom: [

      ]
  ),
];
