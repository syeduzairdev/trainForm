import 'package:flutter/foundation.dart';

class providermodel with ChangeNotifier {
  bool animation = false;
  bool female = false;
  bool weightlbs = false;
  bool weightkg = false;
  bool third = false;
  bool four = false;
  bool five = false;
  bool six = false;
  gender() {
    animation = true;
    female = false;
    third = false;
    notifyListeners();
  }

  changegender() {
    animation = false;
    female = true;
    third = false;
    four = false;
    five = false;
    six = false;
    notifyListeners();
  }

  weight() {
    animation = false;
    female = false;
    third = true;
    four = false;
    five = false;
    six = false;
    notifyListeners();
  }

  completed() {
    animation = false;
    female = false;
    third = false;
    four = true;
    five = false;
    six = false;
    notifyListeners();
  }

  documents() {
    animation = false;
    female = false;
    third = false;
    four = false;
    five = true;
    six = false;
    notifyListeners();
  }

  payments() {
    animation = false;
    female = false;
    third = false;
    four = false;
    five = false;
    six = true;
    notifyListeners();
  }
}
