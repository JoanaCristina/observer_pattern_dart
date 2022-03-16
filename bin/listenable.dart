abstract class Listenable {
  void addListener(void Function() listener);
  void removeListener(void Function() listener);
}
