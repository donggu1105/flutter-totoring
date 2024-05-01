import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

import '../hospital.dart';


class Drive_list1 extends StatelessWidget {
  const Drive_list1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange,
          title: const Text('운전면허 시험순서')),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const SizedBox(height: 30),
                Row(
                  children: [
                    const Text('①',style: TextStyle(fontSize: 50,color: Colors.lightBlue)),
                    const SizedBox(width: 30),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('응시 전 교통안전교육',style: TextStyle(color: Colors.green,fontSize: 20)),
                          const Text('학과 시험 전까지 이수 완료',style: TextStyle(color: Colors.black,fontSize: 15)),
                          const Text('준비물 : 신분증',style: TextStyle(color: Colors.black,fontSize: 15)),
                          const SizedBox(height: 7),
                          ElevatedButton(onPressed: (){launch('https://www.safedriving.or.kr/rersafetyed/rerSafetyedScheduleViewM.do?menuCode=MN-MO-1111');},
                              child: const Text('응시전 교통안전교육 예약하기')),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text('②',style: TextStyle(fontSize: 50,color: Colors.lightBlue)),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('신체검사',style: TextStyle(color: Colors.green,fontSize: 20)),
                            const Text('시험장내 신체검사실 또는 병원에서 검사진행',style: TextStyle(color: Colors.black,fontSize: 15)),
                            const Text('(문경,강릉,태백,광양,충주,춘천시험장내 신체검사원 없음',style: TextStyle(color: Colors.black,fontSize: 15)),
                            const SizedBox(height: 7),

                            ElevatedButton(onPressed: ()async{
                              var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/hospital.json'); //신체검사 지정병원
                              List<dynamic>response = jsonDecode(rawResponse.data);

                              Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);

                              const Distance distance =  Distance();

                              List kmList = List.generate(response.length,(index)=> distance.as(LengthUnit.Kilometer, LatLng( position.latitude,position.longitude), LatLng(response[index]['lng'],response[index]['lat'])) as int );
                              print(kmList.toString());

                              for (int i = 0; i < response.length; i++) {
                                response[i]["km"] = kmList[i];
                              }
                              response.sort((a, b) => a['km'].compareTo(b['km']).toInt());
                              Get.to(HosPital(),arguments: [response]);
                            },
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: const [
                                    Text('신체검사 지정병원 바로가기'),
                                  ],
                                )),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text('③',style: TextStyle(fontSize: 50,color: Colors.lightBlue)),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('학과시험',style: TextStyle(color: Colors.green,fontSize: 20)),
                            const Text('준비물 : 응시원서,신분증, 6개월 이내 촬영한 컬러 사진 (3.5*4.5cm) 3매 ',style: TextStyle(color: Colors.black,fontSize: 15)),
                            const SizedBox(height: 7),
                            ElevatedButton(onPressed: (){
                              launch('https://www.safedriving.or.kr/mainCertification01M.do');
                            },
                                child: const Text('학과시험 방문시간 예약 바로가기')),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text('④',style: TextStyle(fontSize: 50,color: Colors.lightBlue),),
                    const SizedBox(width: 30,),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('기능시험',style: TextStyle(color: Colors.green,fontSize: 20)),
                            const Text('준비물:응시원서,신분증',style: TextStyle(color: Colors.black,fontSize: 15)),
                            const Text('대리접수 : 대리인 신분증 및 위임자의 위임장',style: TextStyle(color: Colors.black,fontSize: 15)),
                            const Text('불합격시 : 불합격일로부터 3일 경과후 재 응시 가능',style: TextStyle(color: Colors.red,fontSize: 15)),
                            const SizedBox(height: 7),
                            ElevatedButton(onPressed: (){
                              launch('https://www.safedriving.or.kr/rerrest/rerrestScheduleViewM.do?menuCode=MN-MO-1121');
                            },
                                child: const Text('기능시험 접수 예약하기')),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text('⑤',style: TextStyle(fontSize: 50,color: Colors.lightBlue),),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('연습면허 발급',style: TextStyle(color: Colors.green,fontSize: 20)),
                            const Text('제 1,2종 보통면허시험 응시자로 학과시험, 장내기능 시험에 모두 합격한자',style: TextStyle(color: Colors.black,fontSize: 15)),
                            const SizedBox(height: 7),
                            ElevatedButton(onPressed: (){
                              launch('https://www.safedriving.or.kr/mainM.do');
                            },
                                child: const Text('연습면허증 발급 예약하기')),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text('⑥',style: TextStyle(fontSize: 50,color: Colors.lightBlue)),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text('도로주행시험',style: TextStyle(color: Colors.green,fontSize: 20)),
                            const Text('불합격 시 : 불합격일로부터 3일 경과 후 재 응시 가능',style: TextStyle(color: Colors.red,fontSize: 15)),
                            const SizedBox(height: 7),
                            ElevatedButton(onPressed: (){
                              launch('https://www.safedriving.or.kr/rerrest/rerrestScheduleViewM.do?menuCode=MN-MO-1121');
                            },
                                child: const Text('도로주행 접수 예약하기')),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 20),
                Row(
                  children: [
                    const Text('⑦',style: TextStyle(fontSize: 50,color: Colors.lightBlue),),
                    const SizedBox(width: 30),
                    Expanded(
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children:  [
                            const Text('운전면허증 발급',style: TextStyle(color: Colors.green,fontSize: 20)),
                            const Text('제1,2종 보통면허: 연습면허 취득 후 도로주행시험에 합격한 자',style: TextStyle(color: Colors.black,fontSize: 15)),
                            const Text('기타 면허:학과시험 기능시험에 불합격한 자 ',style: TextStyle(color: Colors.black,fontSize: 15)),
                            const SizedBox(height: 7),
                            ElevatedButton(onPressed: (){
                              launch('https://www.safedriving.or.kr/mainM.do');
                            },
                                child: const Text('운전면허증 발급')),
                            const SizedBox(height: 20,)
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}