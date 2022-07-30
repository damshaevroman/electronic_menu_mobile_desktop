import 'package:flutter/material.dart';

class ProvderData with ChangeNotifier {
  String _data = 'null';
  String _nameData = 'empty';
  String _myResult = 'This is news';
  String get getData => _data;
  String get nameData => _nameData;
  String get result => _myResult;

  void changeData(String newString) {
    _data = newString;
    _nameData = 'Roman' + _nameData;

    notifyListeners();
  }
}
