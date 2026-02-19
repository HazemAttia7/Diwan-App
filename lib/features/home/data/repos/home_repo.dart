import 'package:poem_app/features/home/data/models/poem.dart';
import 'package:poem_app/features/home/data/models/poet_model.dart';

abstract class HomeRepo {
  Future<List<Poem>> getPoems();
  Future<List<Poet>> getPoets();
}