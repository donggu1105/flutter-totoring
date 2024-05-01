import 'dart:convert';

import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'korea1.dart';
import 'korea2.dart';
import 'korea3.dart';
import 'korea4.dart';

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
          title: Text('한국어 (Korea)'),
        ),
        body: SingleChildScrollView(
          child: Column(
            // crossAxisAlignment: CrossAxisAlignment.center,
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: GestureDetector(
                        child: ElevatedButton(onPressed: ()async{
                          var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/quiz-sample/main/test12.json');
                          List response=jsonDecode(rawResponse.data);
                          print(response);
                          // /**
                          //  * 1. 문제 가져오기
                          //  * 2. 유투브 링크가 저장되있는 데이터 1번 에 어떤 링크다
                          //  */
                          print("response length : ${response.length}");
                          // 전체를 가져와서 랜덤으로 sorting [1,2,3,4] -> [3,1,4,2]
                          response.shuffle(); //랜덤으로 보내기
                          // 지금 문제가 너무많아서 임시로 response 5개만 넘겨줌
                          response = response.sublist(0,40); // 0 ~ 39

                          Get.to(Korea1(),arguments:[response]);
                        },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              maximumSize: Size(200, 80)
                          ),child: ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('1종보통',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),)
                                ],
                              ),
                              SizedBox(width: 118,),
                              SizedBox(
                                child: IconButton(alignment: Alignment.centerRight,
                                  icon: Icon(Icons.navigate_next,color: Colors.black87,),
                                  onPressed: null,
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(height: 7,),

              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                        child: ElevatedButton(onPressed: ()async{
                          var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/new12.json');
                          List response=jsonDecode(rawResponse.data);
                          print(response);
                          // /**
                          //  * 1. 문제 가져오기
                          //  * 2. 유투브 링크가 저장되있는 데이터 1번 에 어떤 링크다
                          //  */
                          print("response length : ${response.length}");
                          // 전체를 가져와서 랜덤으로 sorting [1,2,3,4] -> [3,1,4,2]
                          response.shuffle(); //랜덤으로 보내기
                          // 지금 문제가 너무많아서 임시로 response 5개만 넘겨줌
                          response = response.sublist(0,40); // 0 ~ 39

                          Get.to(Korea2(),arguments:[response]);
                        },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              maximumSize: Size(200, 80)
                          ),child: ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('2종보통',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),)
                                ],
                              ),
                              SizedBox(width: 118,),
                              SizedBox(
                                child: IconButton(
                                  alignment: Alignment.centerRight,
                                  icon: Icon(Icons.navigate_next,color: Colors.black87,),
                                  onPressed: null,
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(height: 7,),

              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                        child: ElevatedButton(onPressed: ()async{
                          var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/new12.json');
                          List response=jsonDecode(rawResponse.data);
                          print(response);

                          // /**
                          //  * 1. 문제 가져오기
                          //  * 2. 유투브 링크가 저장되있는 데이터 1번 에 어떤 링크다
                          //  */
                          print("response length : ${response.length}");
                          // 전체를 가져와서 랜덤으로 sorting [1,2,3,4] -> [3,1,4,2]
                          response.shuffle(); //랜덤으로 보내기
                          // 지금 문제가 너무많아서 임시로 response 5개만 넘겨줌
                          response = response.sublist(0,40); // 0 ~ 39

                          Get.to(Korea3(),arguments:[response]);
                        },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              maximumSize: Size(200, 80)
                          ),child: ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('1종대형',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),)
                                ],
                              ),
                              SizedBox(width: 118,),
                              SizedBox(
                                child: IconButton(alignment: Alignment.centerRight,
                                  icon: Icon(Icons.navigate_next,color: Colors.black87,),
                                  onPressed: null,
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(height: 7,),
              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                        child: ElevatedButton(onPressed: ()async{
                          var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/2s.json');
                          List response=jsonDecode(rawResponse.data);
                          print(response);

                          // /**
                          //  * 1. 문제 가져오기
                          //  * 2. 유투브 링크가 저장되있는 데이터 1번 에 어떤 링크다
                          //  */
                          print("response length : ${response.length}");
                          // 전체를 가져와서 랜덤으로 sorting [1,2,3,4] -> [3,1,4,2]
                          response.shuffle(); //랜덤으로 보내기
                          // 지금 문제가 너무많아서 임시로 response 5개만 넘겨줌
                          response = response.sublist(0,40); // 0 ~ 39

                          Get.to(Korea4(),arguments:[response]);
                        },
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.white,
                              elevation: 1,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(0),
                              ),
                              maximumSize: Size(200, 80)
                          ),child: ButtonBar(
                            alignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(width: 20,),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('2종소형(원동기)',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold,color: Colors.black87),)
                                ],
                              ),
                              SizedBox(width: 25,),
                              SizedBox(
                                child: IconButton(alignment: Alignment.centerRight,
                                  icon: Icon(Icons.navigate_next,color: Colors.black87,),
                                  onPressed: null,
                                ),
                              )
                            ],
                          ),
                        ),
                      )),
                ],
              ),
              SizedBox(height: 7,),
            ],
          ),
        )
    );
  }
}
