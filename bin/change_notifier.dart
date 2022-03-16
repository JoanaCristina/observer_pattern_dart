import 'listenable.dart';

abstract class ChangeNotifier implements Listenable {
  final List<void Function()> _listeners = [];

  @override
  void addListener(void Function() listener) {
    _listeners.add(listener);
  }

  @override
  void removeListener(void Function() listener) {
    _listeners.remove(listener);
  }

  void notifyListeners() {
    for (var listener in _listeners) {
      listener();
    }
  }
}
