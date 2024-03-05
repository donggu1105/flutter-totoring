import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'china1.dart';
import 'china2.dart';

class China extends StatefulWidget {
  const China({Key? key}) : super(key: key);

  @override
  State<China> createState() => _Screen2State();
}

class _Screen2State extends State<China> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    //TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
        appBar: AppBar(
          title: Text('중국어 ( 选择 )'),
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: ElevatedButton(onPressed: ()async{
                          var rawResponse=await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/china.json');
                          List response=jsonDecode(rawResponse.data);

                          Get.to(China1(),arguments:[response]);
                        },
                          child: Column(
                            children: [
                              Text('1종보통',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black87)),
                              Text('1型正常',style: TextStyle(fontSize: 20,color: Colors.black87)),
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
                          var rawResponse=await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/china.json');
                          List response=jsonDecode(rawResponse.data);
                          print(response);

                          Get.to(China1(),arguments:[response]);
                        },
                          child: Column(
                            children: [
                              Text('2종보통',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black87)),
                              Text('2型正常',style: TextStyle(fontSize: 20,color: Colors.black87)),
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
                      var rawResponse=await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/c2.json');
                      List response=jsonDecode(rawResponse.data);
                      print(response);

                      Get.to(China2(),arguments:[response]);
                    },
                      child: Column(
                        children: [
                          Text('2종소형(원동기)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black87)),
                          Text('原动机',style: TextStyle(fontSize: 20,color: Colors.black87)),
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
                        children: [
                          Text('필기시험 접수하러가기   >>>',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Text('( 申请 )',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
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
