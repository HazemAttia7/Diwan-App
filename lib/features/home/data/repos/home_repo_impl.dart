import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:poem_app/features/home/data/models/poem_model.dart';
import 'package:poem_app/features/home/data/models/poet_model.dart';
import 'package:poem_app/features/home/data/repos/home_repo.dart';
import 'package:shared_preferences/shared_preferences.dart';

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

  @override
  Future<void> savePoem(Poem poem) async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getStringList('saved_poems') ?? [];
    final idStr = poem.id.toString();

    if (!saved.contains(idStr)) {
      saved.add(idStr);
      await prefs.setStringList('saved_poems', saved);
    }
  }

  @override
  Future<void> removePoem(Poem poem) async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getStringList('saved_poems') ?? [];
    saved.remove(poem.id.toString());
    await prefs.setStringList('saved_poems', saved);
  }

  @override
  Future<bool> isPoemSaved(int id) async {
    final prefs = await SharedPreferences.getInstance();
    final saved = prefs.getStringList('saved_poems') ?? [];
    return saved.contains(id.toString());
  }

  @override
  Future<List<Poem>> getSavedPoems() async {
    final prefs = await SharedPreferences.getInstance();
    final savedIds = prefs.getStringList('saved_poems') ?? [];

    if (savedIds.isEmpty) return [];

    final allPoets = await getPoets();
    final allPoems = allPoets.expand((poet) => poet.poems).toList();

    return allPoems
        .where((poem) => savedIds.contains(poem.id.toString()))
        .toList();
  }
}
