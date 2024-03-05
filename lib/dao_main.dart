import 'dart:convert';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:dao/quizshows/china.dart';
import 'package:dao/quizshows/english.dart';
import 'package:dao/quizshows/korea.dart';
import 'package:dao/quizshows/vietnam.dart';
import 'package:dao/test_center/drive_test.dart';
import 'package:dao/test_center/exam_information.dart';

import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

import 'academy.dart';
import 'assortment/daehyeong.dart';
import 'assortment/daehyeonggyeonincha.dart';
import 'assortment/gunancha.dart';
import 'assortment/iljongbotong.dart';
import 'assortment/leejongsohyeong.dart';
import 'assortment/sohyeonggyeonincha.dart';
import 'hospital.dart';



class Dao_Main extends StatelessWidget {
  const Dao_Main({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('운전면허 DAO',style: TextStyle(color: Colors.grey,fontSize: 15,
                  )),
                ),
                const SizedBox(height: 5),
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('운전면허 문제은행',style: TextStyle(
                    color: Colors.black87,fontSize: 25,fontWeight: FontWeight.bold,
                  )),
                ),

                const SizedBox(height: 20),

                MaterialButton( //운전전문학원
                  onPressed: ()async{
                    var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/academy.json');
                    List<dynamic>response = jsonDecode(rawResponse.data);
                    // print(response);

                    Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                    //print(position);

                    const Distance distance =  Distance();

                    List kmList = List.generate(response.length,(index)=> distance.as(LengthUnit.Kilometer, LatLng( position.latitude,position.longitude), LatLng(response[index]['lat'],response[index]['lng'] ) ) as int );
                    print(kmList.toString());

                    for (int i = 0; i < response.length; i++) {
                      response[i]["km"] = kmList[i];
                    }
                    response.sort((a, b) => a['km'].compareTo(b['km']).toInt());

                    Get.to(const AcaDemy(),arguments: [response]);},

                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: AspectRatio(
                      aspectRatio: 1.5/1,
                      child: Image.asset(
                        'image/banner.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 20,),

                CarouselSlider(
                    items: [

                      ElevatedButton(onPressed: ()async{
                        var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/hospital.json'); //신체검사 지정병원
                        List<dynamic>response = jsonDecode(rawResponse.data);
                        //print(response);

                        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                        //print(position);

                        const Distance distance =  Distance();

                        List kmList = List.generate(response.length,(index)=> distance.as(LengthUnit.Kilometer, LatLng( position.latitude,position.longitude), LatLng(response[index]['lng'],response[index]['lat'] ) ) as int );
                        print(kmList.toString());

                        for (int i = 0; i < response.length; i++) {
                          response[i]["km"] = kmList[i];
                        }
                        response.sort((a, b) => a['km'].compareTo(b['km']).toInt());
                        Get.to(const HosPital(),arguments: [response]);
                        },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('신체검사 지정병원'),
                              Text('hospital',style: TextStyle(fontSize: 10),),
                            ],
                          )),

                      ElevatedButton(onPressed: ()async{
                        var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/license.json'); //운전면허시험장
                        List<dynamic>response = jsonDecode(rawResponse.data);
                        if (kDebugMode) {
                          print(response);
                        }

                        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                        if (kDebugMode) {
                          print(position);
                        }

                        const Distance distance =  Distance();

                        List kmList = List.generate(response.length,(index)=> distance.as(LengthUnit.Kilometer, LatLng( position.latitude,position.longitude), LatLng(response[index]['lat'],response[index]['lng'] ) ) as int );
                        if (kDebugMode) {
                          print(kmList.toString());
                        }

                        for (int i = 0; i < response.length; i++) {
                          response[i]["km"] = kmList[i];
                        }
                        response.sort((a, b) => a['km'].compareTo(b['km']).toInt());
                        Get.to(const Drive_test(),arguments: [response]);
                      },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('운전면허시험장 위치',style: TextStyle(fontSize: 12),),SizedBox(height: 3),
                              Text('Driver s License Test Center Location',style: TextStyle(fontSize: 10),),
                            ],
                          )),

                      ElevatedButton(onPressed: (){launch('https://www.safedriving.or.kr/guide/cusSeGuide01M.do');},
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: const [
                              Text('학과시험 접수하기'),
                              Text('Apply for written test',style: TextStyle(fontSize: 10),),
                            ],
                          ),
                      ),

                    ], options: CarouselOptions(
                     height: 70,
                     aspectRatio: 16/8,
                     viewportFraction: 0.3,
                     autoPlay: true,
                     autoPlayInterval: const Duration(seconds: 3),
                     //autoPlayAnimationDuration: Duration(milliseconds: 800),
                     //enlargeCenterPage: true,
                )),

                const SizedBox(height: 30,),

                Column(crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    SizedBox(width: 10,),
                    Text('※ 운전면허시험 모의고사!',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                    Text('---문제풀이로 테스트로 시험준비하기---',style: TextStyle()),
                  ],
                ),
                const SizedBox(height: 20),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Row(
                          children: [
                            ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Korea()));
                            },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 3,//박스 3D
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: const Size(235, 135),
                              ),
                              child: Column(
                                children: const [
                                  Text('한국어',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.lightBlueAccent)),
                                  Text('KOREAN',style: TextStyle(fontSize: 20,color: Colors.black)),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10),

                            ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const China()));
                            },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 3,//박스 3D
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: const Size(235, 135),
                              ),
                              child: Column(
                                children: const [
                                  Text('중국어',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.orange)),
                                  Text('CHINESE',style: TextStyle(fontSize: 20,color: Colors.black)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 10,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Row(
                          children: [
                            ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const English()));
                            },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 3,//박스 3D
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: const Size(235, 135),
                              ),
                              child: Column(
                                children: const [
                                  Text('영 어',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.deepPurple)),
                                  Text('ENGLISH',style: TextStyle(fontSize: 20,color: Colors.black)),
                                ],
                              ),
                            ),
                            const SizedBox(width: 10,),

                            ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Vietnam()));},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 3,//박스 3D
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: const Size(235, 135),
                              ),

                              child: Column(
                                children: const [
                                  Text('베트남어',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 40,color: Colors.blue)),
                                  Text('VIETNAMESE',style: TextStyle(fontSize: 20,color: Colors.black)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 30,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Row(
                          children: [
                            ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const English()));
                            },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0.5,//박스 3D
                                shape: const RoundedRectangleBorder(
                                  //borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: const Size(465,100),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    child: IconButton(
                                     icon: Icon(Icons.edit_off,color: Colors.black,),
                                    onPressed: null,
                                  ),),
                                  const SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('많이 틀리는 문제',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black87)),
                                      Text('응시자들이 많이 틀릴 수 있는 문제를 모아!',style: TextStyle(fontSize: 18,color: Colors.black87)),
                                    ],
                                  ),
                                  const SizedBox(width: 10,),
                                  const SizedBox(
                                    child: IconButton(
                                      icon: Icon(Icons.navigate_next,color: Colors.black,),
                                      onPressed: null,
                                    ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Row(
                          children: [
                            ElevatedButton(onPressed: () async {
                              final url=Uri.parse('https://www.youtube.com/watch?v=6c2vZrrVwP0');
                              if(await canLaunchUrl(url)){
                                await launchUrl(url);
                              }
                              //launch('https://www.youtube.com/watch?v=6c2vZrrVwP0'); //유튜브 동영상
                            },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0.5,//박스 3D
                                shape: const RoundedRectangleBorder(
                                  //borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: const Size(465,100),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    child: IconButton(
                                      icon: Icon(Icons.video_collection,color: Colors.red),
                                      onPressed: null,
                                    ),),
                                  const SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('유튜브 동영상 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black87)),
                                      Text('유튜브 동영상으로  더욱 쉽게 학습하세요!',style: TextStyle(fontSize: 18,color: Colors.black87)),
                                    ],
                                  ),
                                  const SizedBox(width: 10,),
                                  const SizedBox(
                                    child: IconButton(
                                      icon: Icon(Icons.navigate_next,color: Colors.black,),
                                      onPressed: null,
                                    ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5,),

                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Row(
                          children: [
                            ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=>const Exam_Information()));
                            },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0.5,//박스 3D
                                shape: const RoundedRectangleBorder(
                                  //borderRadius: BorderRadius.circular(20),
                                ),
                                minimumSize: const Size(465,100),
                              ),
                              child: Row(
                                children: [
                                  const SizedBox(
                                    child: IconButton(
                                      icon: Icon(Icons.task_alt_outlined,color: Colors.red),
                                      onPressed: null,
                                    ),),
                                  const SizedBox(width: 20,),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('운전면허 시험안내 ',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 25,color: Colors.black87)),
                                      Text('운전면허 취득절차 및 종별안내.................',style: TextStyle(fontSize: 18,color: Colors.black87)),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  const SizedBox(
                                    child: IconButton(
                                      icon: Icon(Icons.navigate_next,color: Colors.black),
                                      onPressed: null,
                                    ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 20,),

                CarouselSlider(items: [ //슬라이더 1
                  MaterialButton(onPressed: (){ //동호운전학원
                    launch('http://www.okdongho.co.kr/');
                  },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: AspectRatio(
                        aspectRatio: 1.5/1,
                        child: Image.asset('image/donho.png',fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  MaterialButton(onPressed: (){ //신도림운전학원
                    launch('https://www.sindolim.co.kr/m/');
                  },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: AspectRatio(
                        aspectRatio: 1.5/1,
                        child: Image.asset('image/sin.png',fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  MaterialButton(onPressed: (){ //동일운전학원
                    launch('http://www.dongil-car.co.kr/m/');
                  },
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: AspectRatio(
                        aspectRatio: 1.5/1,
                        child: Image.asset('image/dongil.png',fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ], options: CarouselOptions(
                  height: 250,
                  aspectRatio: 16/8,
                  viewportFraction: 0.8,
                  autoPlay: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                  enlargeCenterPage: true,
                )),

                CarouselSlider(
                    items: [ //슬라이더 2

                      MaterialButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Iljongbotog()));
                      },//1종보통
                        child: Container(
                          margin: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                  'image/1b.png',
                                ),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ), // 1종보통 
                      MaterialButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Daehyeong())); //1종대형
                      },
                        child: Container(
                          margin: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                  'image/1d.png',
                                ),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      MaterialButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Leejonsohyeong()));
                      },//2종소형
                        child: Container(
                          margin: EdgeInsets.all(1),
                          decoration: BoxDecoration(
                            image: const DecorationImage(
                                image: AssetImage(
                                  'image/2s.png',
                                ),
                                fit: BoxFit.cover
                            ),
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                      ),

                      ElevatedButton(onPressed: (){
                        Navigator.push(context, MaterialPageRoute(builder: (context)=>Daehyeonggyeonincha()));},//대형견인
                        child: Text('대형견인차'),style: ElevatedButton.styleFrom(
                          foregroundColor: Colors.black87, padding: EdgeInsets.all(20.0),
                          fixedSize: Size(300, 80),textStyle: TextStyle(
                          fontSize: 20,fontWeight: FontWeight.bold,
                        ),
                          backgroundColor: Colors.white,
                          elevation: 3,
                          shadowColor: Colors.black,
                          side:BorderSide(color: Colors.black12,width: 2),
                          shape: StadiumBorder()

                        ),
                      ),
                      //SizedBox(width: 5,),

                      SizedBox(width: 170,
                        child: OutlinedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Sohyeonggyeonincha()));},//소형견인
                          child: Column(
                            children: [SizedBox(height: 15,),
                              Text('소형견인차',style: TextStyle(color: Colors.black,fontSize: 20),),
                              Text('시험코스 및 채점방법',style: TextStyle(color: Colors.black,fontSize: 10),),
                            ],
                          ),

                          style: OutlinedButton.styleFrom(
                            backgroundColor: Colors.white,elevation: 5,
                            side: BorderSide(color: Colors.orange,width: 2.2,),
                              shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(10.0)
                          )
                          ),
                        ),
                      ),
                      //SizedBox(width: 0.01,),


                      SizedBox(width: 170,
                        child: ElevatedButton(onPressed: (){
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>Gunancha()));},//구난차
                          child:
                          Text('구난차',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.indigo,elevation: 5
                          ),
                        ),
                      ),
                    ], options: CarouselOptions(
                  height: 70,
                  aspectRatio: 16/8,
                  viewportFraction: 0.3,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 10),
                  //autoPlayAnimationDuration: Duration(milliseconds: 800),
                  //enlargeCenterPage: true,
                )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
