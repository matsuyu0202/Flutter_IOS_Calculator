import 'package:flutter/material.dart';

class CalculateData with ChangeNotifier {
  String _result = '0';
  bool _isAC = true;
  String _operator;
  var _num1;

  String get result {
    return _result.toString();
  }

  bool get isAC {
    return _isAC;
  }

  void enterData(String num) {
    if (_result == '0') {
      _result = num;
      _isAC = false;
    } else {
      _isAC = false;
      _result = _result + num;
    }
    notifyListeners();
  }

  void clearResult() {
    _result = '0';
    _isAC = true;
    notifyListeners();
  }

  void addPlusMinus() {
    if (_result.contains('.')) {
      double tmp = double.parse(_result) * (-1);
      _result = tmp.toString();
      notifyListeners();
    } else {
      int tmp = int.parse(_result) * (-1);
      _result = tmp.toString();
      notifyListeners();
    }
  }

  void addPoint() {
    if (_result.contains('.')) {
      return;
    }
    _result = _result + '.';
    notifyListeners();
  }

  void calculatePercent() {
    double tmp = double.parse(_result);
    tmp /= 100;
    _result = tmp.toString();
    notifyListeners();
  }

  void calculateAdd() {
    _operator = '+';
    if (_result.contains('.')) {
      _num1 = double.parse(_result);
    } else {
      _num1 = int.parse(_result);
    }
    _result = '0';
    notifyListeners();
  }

  void calculateMinus() {
    _operator = '-';
    if (_result.contains('.')) {
      _num1 = double.parse(_result);
    } else {
      _num1 = int.parse(_result);
    }
    _result = '0';
    notifyListeners();
  }

  void calculateMultiple() {
    _operator = '*';
    if (_result.contains('.')) {
      _num1 = double.parse(_result);
    } else {
      _num1 = int.parse(_result);
    }
    _result = '0';
    notifyListeners();
  }

  void calculateDivide() {
    _operator = '/';
    if (_result.contains('.')) {
      _num1 = double.parse(_result);
    } else {
      _num1 = int.parse(_result);
    }
    _result = '0';
    notifyListeners();
  }

  void calculateNumbers() {
    switch (_operator) {
      case '+':
        if (_result.contains('.')) {
          double sum = _num1 + double.parse(_result);
          _result = sum.toString();
        } else if (_num1.toString().contains('.')) {
          double sum = _num1 + int.parse(_result);
          _result = sum.toString();
        } else {
          int sum = _num1 + int.parse(_result);
          _result = sum.toString();
        }
        notifyListeners();
        break;

      case '-':
        if (_result.contains('.')) {
          double sum = _num1 - double.parse(_result);
          _result = sum.toString();
        } else if (_num1.toString().contains('.')) {
          double sum = _num1 - int.parse(_result);
          _result = sum.toString();
        } else {
          int sum = _num1 - int.parse(_result);
          _result = sum.toString();
        }
        notifyListeners();
        break;

      case '*':
        if (_result.contains('.')) {
          double sum = _num1 * double.parse(_result);
          _result = sum.toString();
        } else if (_num1.toString().contains('.')) {
          double sum = _num1 * int.parse(_result);
          _result = sum.toString();
        } else {
          int sum = _num1 * int.parse(_result);
          _result = sum.toString();
        }
        notifyListeners();
        break;

      case '/':
        if (_result.contains('.')) {
          double sum = _num1 / double.parse(_result);
          _result = sum.toString();
        } else if (_num1.toString().contains('.')) {
          double sum = _num1 / int.parse(_result);
          _result = sum.toString();
        } else {
          double sum = _num1 / int.parse(_result);
          _result = sum.toString();
        }
        notifyListeners();
        break;
    }
  }
}
