import 'dart:convert';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'china2.dart';
import 'china3.dart';
import 'korea1.dart';


class China extends StatefulWidget {
  const China({Key? key}) : super(key: key);

  @override
  State<China> createState() => _Screen2State();
}

class _Screen2State extends State<China> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('중국어 ( 中国人 )'),
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
                          var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/china.json');
                          List response=jsonDecode(rawResponse.data);
                          print(response);

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
                                  Text('1종보통',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black87)),
                                  Text(' (1型正常)', style: TextStyle(fontSize: 15, color: Colors.black87)),
                                ],
                              ),
                              SizedBox(width: 110,),
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
                          var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/china.json');
                          List response=jsonDecode(rawResponse.data);
                          print(response);

                          Get.to(China2(),arguments:[response]);
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
                                  Text('2종보통',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black87),),
                                  Text('(2型正常)', style: TextStyle(fontSize: 15, color: Colors.black87)),
                                ],
                              ),
                              SizedBox(width: 110,),
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
                          var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/c2.json');
                          List response=jsonDecode(rawResponse.data);
                          print(response);

                          Get.to(China3(),arguments:[response]);
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
                                  Text('2종소형(원동기)',style: TextStyle(fontSize: 23,fontWeight: FontWeight.bold,color: Colors.black87),),
                                  Text('(原动机)', style: TextStyle(fontSize: 15, color: Colors.black87)),
                                ],
                              ),
                              SizedBox(width: 30,),
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
