import 'package:flutter/foundation.dart';

class providermodel with ChangeNotifier {
  bool animation = false;
  bool female = false;
  bool weightlbs = false;
  bool weightkg = false;

  gender() {
    animation = true;
    female = false;
    notifyListeners();
  }

  changegender() {
    animation = false;
    female = true;
    notifyListeners();
  }

  weight() {
    animation = true;
    female = false;
    notifyListeners();
  }

  changeweight() {
    animation = false;
    female = true;
    notifyListeners();
  }

  iconss() {
    animation = true;
    notifyListeners();
  }

  periodcolours(int colour) {
    notifyListeners();
  }
}
