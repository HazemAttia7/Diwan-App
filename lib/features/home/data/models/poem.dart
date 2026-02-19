import 'package:poem_app/features/home/data/models/verse_model.dart';

class Poem {
  final String title;
  final int versesCount;
  final int? releaseYear;
  final String? occasionStory;
  final List<Verse> verses;

  Poem({
    required this.title,
    required this.versesCount,
    this.releaseYear,
    this.occasionStory,
    required this.verses,
  });

  factory Poem.fromJson(Map<String, dynamic> json) {
    return Poem(
      title: json['poem_title'],
      versesCount: json['verses_count'],
      releaseYear: json['release_year'],
      occasionStory: json['occasion_story'],
      verses: List<Verse>.from(
        json['verses'].map((verseJson) => Verse.fromJson(verseJson)),
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'title': title,
    'versesCount': versesCount,
    'releaseYear': releaseYear,
    'occasionStory': occasionStory,
    'verses': verses,
  };
}
