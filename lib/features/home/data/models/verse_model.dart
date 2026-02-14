class Verse {
  final String firstHemistich;
  final String secondHemistich;
  final bool isBeingRead;

  Verse({
    required this.firstHemistich,
    required this.secondHemistich,
    this.isBeingRead = false,
  });
}
