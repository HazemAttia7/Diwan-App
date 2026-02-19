class Verse {
  final String firstHemistich;
  final String secondHemistich;
  final bool isBeingRead;

  Verse({
    required this.firstHemistich,
    required this.secondHemistich,
    this.isBeingRead = false,
  });

  factory Verse.fromJson(Map<String, dynamic> json) => Verse(
    firstHemistich: json['first_hemistich'],
    secondHemistich: json['second_hemistich'],
  );

  Map<String, dynamic> toJson() => {
    'first_hemistich': firstHemistich,
    'second_hemistich': secondHemistich,
  };
}
