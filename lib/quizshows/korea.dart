import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'korea1.dart';
import 'korea2.dart';

class Korea extends StatefulWidget {
  const Korea({Key? key}) : super(key: key);

  @override
  State<Korea> createState() => _Screen2State();
}

class _Screen2State extends State<Korea> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('응시 종별선택'),
        ),
        body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
              padding: EdgeInsets.all(15.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [SizedBox(height: 70),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: ElevatedButton(onPressed: ()async{
                          var rawResponse=await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/china.json');
                          List response=jsonDecode(rawResponse.data);

                          Get.to(Korea1(),arguments:[response]);
                        },
                          child: Text('1종보통',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black87)),
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
                          var rawResponse=await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/c2.json');
                          List response=jsonDecode(rawResponse.data);

                          Get.to(Korea2(),arguments:[response]);},
                          child: Text('2종보통',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black87)),
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

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        child: ElevatedButton(onPressed: ()async{
                          var rawResponse=await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/china.json');
                          List response=jsonDecode(rawResponse.data);

                          Get.to(Korea1(),arguments:[response]);
                        },
                          child: Text('1종대형',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black87)),
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
                          var rawResponse=await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/c2.json');
                          List response=jsonDecode(rawResponse.data);

                          Get.to(Korea2(),arguments:[response]);
                        },
                          child: Text('2종소형',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.black87)),
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
                  SizedBox(height: 30),
                  TextButton(onPressed: (){},
                      child: Text('필기시험 접수하러가기   >>>',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
                ],
              ),
            ),
          ),
        )
    );
  }
}
