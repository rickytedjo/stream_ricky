import 'package:flutter/material.dart';
import 'dart:math';
import 'dart:async';

class RandomNumberBloc {
  final _generateRandomController = StreamController<void>();

  final _randomNumberController = StreamController<int>();

  Sink<void> get generateRandom => _generateRandomController.sink;

  Stream<int> get randomNumber => _randomNumberController.stream;

  RandomNumberBloc(){
    _generateRandomController.stream.listen((_){
      final random = Random().nextInt(10);
      _randomNumberController.sink.add(random);
    });
  }

  void dispose(){
    _generateRandomController.close();
    _randomNumberController.close();
  }

}