import 'package:poem_app/features/home/data/models/poem_model.dart';
import 'package:poem_app/features/home/data/models/poet_model.dart';

abstract class HomeRepo {
  Future<List<Poem>> getPoems();
  Future<List<Poet>> getPoets();
  Future<void> savePoem(Poem poem);
  Future<List<Poem>> getSavedPoems();
  Future<void> removePoem(Poem poem);
  Future<bool> isPoemSaved(int id);
}
