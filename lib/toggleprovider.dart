import 'package:flutter/material.dart';

class Toggleprovider extends ChangeNotifier{
    bool _ison=false;
    bool get ison=>_ison;

  void ToggleSwitch(){
      _ison=!_ison;
      notifyListeners();
}
}
