abstract class AudioPlayerRepo {
  Future<void> init({
    required String audioPath,
    required String audioTimestampsPath,
  });
  Stream<int?> get activeVerseStream;
  Future<void> play();
  Future<void> pause();
  Future<void> seekToVerse(int verse);
  void dispose();
}
