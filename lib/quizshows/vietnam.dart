import 'dart:convert';
import 'package:dao/quizshows/vietnam1.dart';
import 'package:dao/quizshows/vietnam2.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';


class Vietnam extends StatefulWidget {
  const Vietnam({Key? key}) : super(key: key);

  @override
  State<Vietnam> createState() => _Screen2State();
}

class _Screen2State extends State<Vietnam> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    //TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
        appBar: AppBar(
          title: Text('베트남어 (lựa chọn)'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: ElevatedButton(onPressed: ()async{
                          var rawResponse=await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/v12.json');
                          List response=jsonDecode(rawResponse.data);
                          print(response);

                          Get.to(Vietnam1(),arguments:[response]);
                        },
                          child: Column(
                            children: [
                              Text('1종보통',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black87)),
                              Text('Loại 1 Bình thường',style: TextStyle(fontSize: 20,color: Colors.black87)),
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
                          var rawResponse=await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/v12.json');
                          List response1=jsonDecode(rawResponse.data);
                          print(response1);

                          Get.to(Vietnam1(),arguments:[response1]);
                        },
                          child: Column(
                            children: [
                              Text('2종보통',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black87)),
                              Text('Loại 2 Bình thường',style: TextStyle(fontSize: 20,color: Colors.black87)),
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
                      var rawResponse=await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/v2s.json');
                      List response=jsonDecode(rawResponse.data);
                      print(response);

                      Get.to(Vietnam2(),arguments:[response]);
                    },
                      child: Column(
                        children: [
                          Text('2종소형(원동기)',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black87)),
                          Text('xe máy',style: TextStyle(fontSize: 20,color: Colors.black87)),
                        ],
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.white,
                          elevation: 3,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(20),
                          ),
                          minimumSize: Size(470, 150),
                      ),
                    ),
                  ),
                  SizedBox(height: 30),
                  TextButton(onPressed: (){},
                      child: Column(
                        children: [
                          Text('필기시험 접수하러가기   >>>',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
                          Text('( Tiếp quản )',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
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
