import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:poem_app/features/home/data/models/poem.dart';
import 'package:poem_app/features/home/data/models/poet_model.dart';
import 'package:poem_app/features/home/data/repos/home_repo.dart';

class HomeRepoImpl implements HomeRepo {
  @override
  Future<List<Poem>> getPoems() async {
    try {
      final String jsonString = await rootBundle.loadString(
        'assets/data/poems.json',
      );

      final Map<String, dynamic> jsonData = json.decode(jsonString);

      final List<dynamic> poemsJson = jsonData['poets']["poems"] as List;

      return poemsJson
          .map((poemJson) => Poem.fromJson(poemJson as Map<String, dynamic>))
          .toList();
    } catch (e) {
      return [];
    }
  }

  @override
  Future<List<Poet>> getPoets() async {
    try {
      final String jsonString = await rootBundle.loadString(
        'assets/data/poems.json',
      );

      final Map<String, dynamic> jsonData = json.decode(jsonString);

      final List<dynamic> poetsJson = jsonData['poets'] as List;

      return poetsJson
          .map((poetJson) => Poet.fromJson(poetJson as Map<String, dynamic>))
          .toList();
    } catch (e) {
      return [];
    }
  }
}
