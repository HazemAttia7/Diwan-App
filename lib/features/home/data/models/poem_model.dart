import 'package:poem_app/features/home/data/models/verse_model.dart';

class Poem {
  final int id;
  final String title;
  final int versesCount;
  final int? releaseYear;
  final String? occasionStory , audioPath , audioTimestampsPath;
  final List<Verse> verses;

  Poem({
    required this.title,
    required this.versesCount,
    this.releaseYear,
    this.occasionStory,
    required this.verses, required this.id, this.audioPath, this.audioTimestampsPath,
  });

  factory Poem.fromJson(Map<String, dynamic> json) {
    return Poem(
      id: json['id'],
      title: json['poem_title'],
      versesCount: json['verses_count'],
      releaseYear: json['release_year'],
      occasionStory: json['occasion_story'],
      audioPath: json['audio_path'],
      audioTimestampsPath: json['audio_timestamps_path'],
      verses: List<Verse>.from(
        json['verses'].map((verseJson) => Verse.fromJson(verseJson)),
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'id': id,
    'title': title,
    'versesCount': versesCount,
    'releaseYear': releaseYear,
    'occasionStory': occasionStory,
    'verses': verses,
  };
}
