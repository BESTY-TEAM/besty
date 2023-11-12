
class SubSymtom {
  final String subTitle;
  final String? subTitle2;
  final String description;
  final String? description2;
  final String subImage;

  SubSymtom({
    required this.subTitle,
    this.subTitle2,
    required this.description,
    this.description2,
    required this.subImage,
  });

}

List SubSymtomsData = [
  SubSymtom(
    subTitle: '',
    subTitle2: '',
    description: '',
    description2: '',
    subImage: '',
  ),
];
