
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../dao_main.dart';


class ResultPage extends StatelessWidget {
  final double score;

  const ResultPage({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('결과'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('당신의 점수는 $score 점', style: TextStyle(fontSize: 24)),
            Text('불합격', style: TextStyle(fontSize: 50,color: Colors.red,fontWeight: FontWeight.bold)),

            ElevatedButton(
              onPressed: () => Get.offAll(Dao_Main()),
              child: Text('처음으로 돌아가기'),
            ),
          ],
        ),
      ),
    );
  }
}

class Result1Page extends StatelessWidget {
  final double score;

  const Result1Page({Key? key, required this.score}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('결과'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text('당신의 점수는 $score 점', style: TextStyle(fontSize: 24)),
            Text('합격', style: TextStyle(fontSize: 50,color: Colors.red,fontWeight: FontWeight.bold)),

            ElevatedButton(
              onPressed: () => Get.offAll(Dao_Main()),
              child: Text('처음으로 돌아가기'),
            ),
          ],
        ),
      ),
    );
  }
}

