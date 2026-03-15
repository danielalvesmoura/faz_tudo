import 'package:flutter/material.dart';

class AppController extends ChangeNotifier {
  static AppController instance = AppController();

  bool temaEscuro = false;
  
  mudarTema() {
    temaEscuro = !temaEscuro;
    notifyListeners();
  }

}