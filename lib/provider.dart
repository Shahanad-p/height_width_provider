import 'package:flutter/material.dart';

class ContainerProvider extends ChangeNotifier {
  bool resize = false;
  void containerSize() {
    resize = !resize;
    notifyListeners();
  }
}
