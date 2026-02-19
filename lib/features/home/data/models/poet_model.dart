import 'package:poem_app/features/home/data/models/poem_model.dart';

class Poet {
  final String name;
  final List<Poem> poems;

  Poet({required this.name, required this.poems});

  factory Poet.fromJson(Map<String, dynamic> json) {
    return Poet(
      name: json['author_name'],
      poems: List<Poem>.from(
        json['poems'].map((poemJson) => Poem.fromJson(poemJson)),
      ),
    );
  }

  Map<String, dynamic> toJson() => {
    'author_name': name,
    'poems': poems.map((poem) => poem.toJson()).toList(),
  };

  Poet copyWith({List<Poem>? poems}) {
    return Poet(name: name, poems: poems ?? this.poems);
  }
}
