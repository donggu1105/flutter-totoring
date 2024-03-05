import 'package:dao/dao_main.dart';
import 'package:dao/main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

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
            Text('당신의 점수는 $score 점입니다.', style: TextStyle(fontSize: 24)),
            ElevatedButton(
              onPressed: () => Get.offAll(const Dao_Main()),
              child: Text('처음으로 돌아가기'),
            ),
          ],
        ),
      ),
    );
  }
}
