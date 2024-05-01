import 'dart:convert';
import 'package:dio/dio.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

import 'Vietnam1.dart';
import 'Vietnam2.dart';
import 'Vietnam3.dart';


class Vietnam extends StatefulWidget {
  const Vietnam({Key? key}) : super(key: key);

  @override
  State<Vietnam> createState() => _Screen2State();
}

class _Screen2State extends State<Vietnam> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          title: Text('베트남어 (Tiếng Việt)'),
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
                          var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/v12.json');
                          List response=jsonDecode(rawResponse.data);
                          print(response);

                          Get.to(Vietnam1(),arguments:[response]);
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
                                  Text(' (Loại 1 Bình thường)', style: TextStyle(fontSize: 15, color: Colors.black87)),
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

              Row(
                children: [
                  Expanded(
                      child: GestureDetector(
                        child: ElevatedButton(onPressed: ()async{
                          var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/v12.json');
                          List response=jsonDecode(rawResponse.data);
                          print(response);

                          Get.to(Vietnam2(),arguments:[response]);
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
                                  Text('(Loại 2 Bình thường)', style: TextStyle(fontSize: 15, color: Colors.black87)),
                                ],
                              ),
                              SizedBox(width: 30,),
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
                          var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/v2s.json');
                          List response=jsonDecode(rawResponse.data);
                          print(response);

                          Get.to(Vietnam3(),arguments:[response]);
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
                                  Text('(động lực chính)', style: TextStyle(fontSize: 15, color: Colors.black87)),
                                ],
                              ),
                              SizedBox(width: 20,),
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
