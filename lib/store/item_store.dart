import 'package:flutter/foundation.dart';

class ItemStore extends ChangeNotifier{

  int _count = 0;

  int get count => _count;

  void addItem(){
    _count++;
    notifyListeners();
  }

  void removeItem(){
    _count--;
    notifyListeners();
  }

}