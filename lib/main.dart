import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(const FunnyQuotesApp());
}

class FunnyQuotesApp extends StatelessWidget {
  const FunnyQuotesApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: HomePage());
  }
}

class HomePage extends StatefulWidget {
  HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  static  List<Color>colorList = [
    Colors.pink,
    Colors.lightGreenAccent,
    Colors.amber,
    Colors.red,
    Colors.black38,
    Colors.blue,
    Colors.deepPurple
  ];
  var color = colorList[0];

  static const List<String> quoteList = [
    'ยามใดที่เราทุกข์ ชาไข่มุกคือพลัง',
    'มากกว่าคำว่ารัก ก็น้ำหนักเรานี่แหละ',
    'ไม่เคยรักษาอะไรไว้ได้เลย นอกจากพุง',
    'นอกจากรังแค ก็ไม่มีใครแคร์แล้วอ่ะ',
    'ใจสั่นๆ นึกว่าเศร้า ที่ไหนได้หิวข้าวนี่เอง',
    'คนที่ทำให้เราหลง คือคนที่ส่งโลเคชั่นผิด',
  ];
  var quote = quoteList[0];

  void handleClickGo() {
    setState(() {
      var r = Random();
      var ra = r.nextInt(quoteList.length);
      quote = quoteList[ra];

      var rc = Random();
      var rc1= rc.nextInt(colorList.length);
      color = colorList[rc1];
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('คำคมกวนๆ')),
      floatingActionButton: FloatingActionButton(
        child: Text('GO'),
        onPressed: handleClickGo,
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Text(
            quote,
            style:  TextStyle(
                fontSize: 50,
                fontWeight: FontWeight.bold,
                fontStyle: FontStyle.italic,
                color:color,
            ),
          ),
        ),
      ),
    );
  }
}
