import 'package:flutter/material.dart';
import 'package:streams/random_screen.dart';
import 'stream.dart';
import 'dart:async';
import 'dart:math';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // Soal 1
      title: 'Stream Ricky',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.green),
        useMaterial3: true,
      ),
      home: RandomScreen(),
    );
  }
}

// class StreamHomePage extends StatefulWidget {
//   const StreamHomePage({super.key});

//   @override
//   State<StreamHomePage> createState() => _StreamHomePageState();
// }

// class _StreamHomePageState extends State<StreamHomePage>{
//   late Stream<int> numberStream;

//   @override
//   void initState() {
//     numberStream = NumberStream().getNumbers();
//     super.initState();
//   }

//   // // Color bgColor = Colors.blueGrey;
//   // // late ColorStream colorStream;
//   // int lastNumber = 0;
//   // late StreamController numberStreamController;
//   // late NumberStream numberStream;
//   // late StreamSubscription subscription;
//   // late StreamTransformer transformer;

//   // late StreamSubscription subscription2;
//   // String values = '';


//   // // void changeColor() async {
//   // //   colorStream.getColors().listen((eventColor){
//   // //     // Soal 5
//   // //     // await for memproses event secara sekuensial 
//   // //     // sedangkan listen bisa memproses event secara asinkron
//   // //     setState(() {
//   // //       bgColor = eventColor;
//   // //     });
//   // //   });
//   // // }

//   // @override
//   // void initState() {
//   //   numberStream = NumberStream();
//   //   numberStreamController = numberStream.controller;
//   //   Stream stream = numberStreamController.stream.asBroadcastStream();
//   //   subscription = stream.listen((event){
//   //     setState(() {
//   //       values += '$event - ';
//   //     });
//   //   });
//   //   subscription2 = stream.listen((event){
//   //     setState(() {
//   //       values += '$event - ';
//   //     });
//   //   });
//   //   super.initState();
//   //   // Soal 10
//   //   // Stream sudah melalui subscription, sehingga tidak bisa melewati subscription2
//   // }

//   // void stopStream(){
//   //   numberStreamController.close();
//   // }

//   // void addRandomNumber() {
//   //   Random random = Random();
//   //   int myNum = random.nextInt(10);
//   //   if (!numberStreamController.isClosed){
//   //     numberStream.addNumberToSink(myNum);
//   //   } else{
//   //     setState(() {
//   //       lastNumber = -1;
//   //     });
//   //   }
//   // }
//   // // Soal 9
//   // // menambahkan subscription pada event, sehingga jika subscription dimatikan event tidak berjalan lagi

//   // @override
//   // void dispose() {
//   //   numberStreamController.close();
//   //   subscription.cancel();
//   //   super.dispose();
//   // }


//   // @override
//   // Widget build(BuildContext context) {
//   //   // Soal 6
//   //   // initState melakukan inisialisasi dan menyiapkan stream yang menerima data dari addRandomNumber
//   //   return Scaffold(
//   //     appBar: AppBar(
//   //       title: const Text('Stream'),
//   //     ),
//   //     body: SizedBox(
//   //       width: double.infinity,
//   //       child: Column(
//   //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//   //         crossAxisAlignment: CrossAxisAlignment.center,
//   //         children: [
//   //           // Soal 11
//   //           // Karena di buat sebagai sebuah broadcast, stream bisa diakses berbagai variabel
//   //           Text(values),
//   //           ElevatedButton(onPressed: () => addRandomNumber(), child: Text('New Random Number')),
//   //           ElevatedButton(onPressed: () => stopStream(), child: Text('Stop Subscription')),
//   //         ],
//   //       ),
//   //     ),
//   //   );
//   // }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Stream'),
//       ),
//       body: StreamBuilder(
//         // Soal 12
//         // Stream akan diberikan data secara periodic setiap 1 detik
//         // Jika dari stream tidak ada data, maka akan menampilkan 'Error'
//         // Sedangkan jika ada, maka akan menampilkan data
//         stream: numberStream,
//         initialData: 0,
//         builder: (context, snapshot){
//           if(snapshot.hasError){
//             print('Error');
//           }
//           if(snapshot.hasData){
//             return Center(child: Text(snapshot.data.toString(),style: const TextStyle(fontSize: 96),),);
//           }
//           else {
//             return const SizedBox.shrink();
//           }
//         },
//       ),
//     );
//   }
// }
