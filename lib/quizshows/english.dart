import 'dart:convert';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'english1.dart';
import 'english2.dart';

class English extends StatefulWidget {
  const English({Key? key}) : super(key: key);

  @override
  State<English> createState() => _Screen2State();
}

class _Screen2State extends State<English> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
        appBar: AppBar(
          title: Text('영 어 (choice)'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(height: 70),
                  Row(mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: ElevatedButton(onPressed: ()async{
                          var rawResponse=await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/english.json');
                          List response=jsonDecode(rawResponse.data);
                          print(response);

                          /**
                           * 1. 문제 가져오기
                           * 2. 유투브 링크가 저장되있는 데이터 1번 에 어떤 링크다
                           */
                          print("response length : ${response.length}");
                          // 전체를 가져와서 랜덤으로 sorting [1,2,3,4] -> [3,1,4,2]
                          response.shuffle();
                          // 지금 문제가 너무많아서 임시로 response 5개만 넘겨줌
                          response = response.sublist(0,40); // 0 ~ 39
                          Get.to(English1(), arguments:[response]);
                        },
                          child: Column(
                            children: [
                              Text('1종보통',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black87)),
                              Text('Class 1 licen',style: TextStyle(fontSize: 20,color: Colors.black87)),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minimumSize: Size(235, 235)
                          ),
                        ),
                      ),
                      SizedBox(width: 7),
                      Container(
                        child: ElevatedButton(onPressed: ()async{
                          var rawResponse=await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/english.json');
                          List response=jsonDecode(rawResponse.data);
                          print("response count : ${response.length}");

                          print(response);

                          Get.to(English2(),arguments:[response]);
                        },
                          child: Column(
                            children: [
                              Text('2종보통',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black87)),
                              Text('Class 2 licen',style: TextStyle(fontSize: 20,color: Colors.black87)),
                            ],
                          ),
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 3,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(20),
                              ),
                              minimumSize: Size(235, 235)
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 7),
                  Container(
                    child: ElevatedButton(onPressed: ()async{
                      var rawResponse=await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/english.json');
                      List response=jsonDecode(rawResponse.data);
                      print(response);

                      Get.to(English2(),arguments:[response]);
                    },
                      child: Column(
                        children: [
                          Text('2종소형(원동기)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black87)),
                          Text('motorbike',style: TextStyle(fontSize: 20,color: Colors.black87)),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: Size(470, 150)
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextButton(onPressed: (){},
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('필기시험 접수하러가기   >>>',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Text('( Apply for test )',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                        ],
                      )),
                ],
              ),
            ),
          ),
        )
    );
  }
}
