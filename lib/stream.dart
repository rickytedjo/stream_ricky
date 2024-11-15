import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:math';

class ColorStream {
  final List<Color> colors = [
    Colors.blueGrey,
    Colors.amber,
    Colors.deepPurple,
    Colors.lightBlue,
    Colors.teal,
    // Soal 2
    Colors.cyan,
    Colors.lime,
    Colors.indigo,
    Colors.red,
    Colors.white
  ];
  // Soal 3
  // yield* memberi akses ke data yang dihasilkan pada stream yang lain
  // Method ini ada untuk mengambil warna dari array warna
  Stream<Color> getColors() async* {
    yield* Stream.periodic(
      const Duration(seconds: 1), (int t){
        int index = t % colors.length;
        return colors[index];
      }
    );
  }
}

class NumberStream {
  Stream<int> getNumbers() async*{
    yield* Stream.periodic(const Duration(seconds: 1),(int t){
      Random random = Random();
      int myNum = random.nextInt(10);
      return myNum;
    });
  }
}