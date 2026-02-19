class VerseTimestamp {
  final int verse;
  final double start;
  final double end;

  VerseTimestamp({required this.verse, required this.start, required this.end});

  factory VerseTimestamp.fromJson(Map<String, dynamic> json) => VerseTimestamp(
    verse: json['verse'],
    start: (json['start'] as num).toDouble(),
    end: (json['end'] as num).toDouble(),
  );

  Map<String, dynamic> toJson() => {'verse': verse, 'start': start, 'end': end};
}
