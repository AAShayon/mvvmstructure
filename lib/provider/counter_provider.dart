import 'package:flutter/material.dart';
class CounterProvider with ChangeNotifier{
   int _counter = 0;
   ///---getter method
int get counter=>_counter;
void incrementCounter(){
  _counter++;
  notifyListeners();
}


}