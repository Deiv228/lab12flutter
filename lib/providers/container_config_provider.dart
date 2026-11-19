import 'package:flutter/foundation.dart';

class ContainerConfigProvider extends ChangeNotifier {
  double _width = 80.0;
  double _height = 80.0;
  double _topRightRadius = 25.0;

  double get width => _width;
  double get height => _height;
  double get topRightRadius => _topRightRadius;

  void updateWidth(double value) {
    _width = value;
    notifyListeners();
  }

  void updateHeight(double value) {
    _height = value;
    notifyListeners();
  }

  void updateTopRightRadius(double value) {
    _topRightRadius = value;
    notifyListeners();
  }
}