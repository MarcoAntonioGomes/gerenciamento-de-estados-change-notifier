import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:panucci_delivery/models/item.dart';




 class CartStore extends ChangeNotifier{

  List<Item> _Itens = [];


  double purchaseTotal = 0;


  int get amountItens =>  _Itens.length;


  bool get listEmpty =>  _Itens.isEmpty;


  UnmodifiableListView<Item> get allItens => UnmodifiableListView(_Itens);

  void addItem(Item item){
    _Itens.add(item);
    updateTotalPurchase();
    notifyListeners();
  }


  void removeItem(Item item){
    _Itens.remove(item);
    updateTotalPurchase();
    notifyListeners();
  }


  void updateTotalPurchase(){
    purchaseTotal = 0;
    for(var i = 0; i<_Itens.length; i++){
      purchaseTotal += _Itens[i].preco;
    }
  }

}