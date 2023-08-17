import 'dart:collection';
import 'package:flutter/material.dart';
import '../model.dart';

class Providerclass extends ChangeNotifier{

  List<TodoModel> _item=[];
  UnmodifiableListView<TodoModel> get list_item => UnmodifiableListView(_item);

  void add_item(String items){
    _item.add(TodoModel(todoTitle: items, completed: false));
    notifyListeners();
  }

  void toggleTask(TodoModel items){
    final itemIndex=_item.indexOf(items);
    _item[itemIndex].toggleCompleted();
    notifyListeners();
  }

  void deleteTask(TodoModel items){
    _item.remove(items);
    notifyListeners();
  }

}