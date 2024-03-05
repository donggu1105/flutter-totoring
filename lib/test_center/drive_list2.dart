import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

import '../hospital.dart';


class Drive_list2 extends StatefulWidget {
  const Drive_list2({Key? key}) : super(key: key);

  @override
  State<Drive_list2> createState() => _Screen2State();
}

class _Screen2State extends State<Drive_list2> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('응시전 교통안전교육'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 50),
          Card(
            shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
            elevation: 5,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.black.withOpacity(0.1),
                borderRadius: BorderRadius.circular(12),
              ),
              child: TabBar(
                indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: Colors.orange
                ),
                controller: tabController,
                isScrollable: true,
                labelPadding: const EdgeInsets.symmetric(horizontal: 50),
                tabs: const [
                  Tab(child: Text("응시 전 교통안전교육",style: TextStyle(color: Colors.black))),
                  Tab(child: Text("신 체 검 사",style: TextStyle(color: Colors.black))),
                ],
              ),
            ),
          ),
          const SizedBox(height: 38),

          Expanded(
            child: SizedBox(
              child: TabBarView(
                controller: tabController,
                children: [
                  Container(alignment: Alignment.topLeft,
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10),
                            Column(
                              children: const [
                                Text('교육대상',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(width: 7),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('- 처음으로 운전면허를 취득하는 자(원동기장치 자전거 응시자 포함'),
                                Text('- 군 운전면허소지자 중 일반 운전면허로 갱신하는 자'),
                                Text('※ 교융대상자 제외'),
                                Text('＊ 운전면허가 있는 사람이 다른 종류의 운전면허를 취득하고자 하는 자'),
                                Text('   (원동기장치자전거 면허 소지자 포함)'),
                                Text('＊ 외국운전면허 소지자로서 일반 운전면허로 갱신하고자 하는 자'),
                                Text('＊ 국제운전면허증을 받고자 하는 자'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),

                        Row(
                          children: [
                            const SizedBox(width: 10),
                            const Text('교육시기',style: TextStyle(fontWeight: FontWeight.bold)),
                            const SizedBox(width: 7),
                            Column(
                              children: const [
                                Text('- 학과시험 응시 전까지 언제나 가능')
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(
                          children: [
                            const SizedBox(width: 10),
                            const Text('교육시간',style: TextStyle(fontWeight: FontWeight.bold)),
                            const SizedBox(width: 7),
                            Column(
                              children: const [
                                Text('- 시청각 교육 1시간'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('수강신청',style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('(절차)',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(width: 7),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('- 교육 수강 신청 및 접수 > 지문등록 > 수강카드발급 > 강의실 입실 >'),
                                Text('  교육수강'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(
                          children: [
                            const SizedBox(width: 10),
                            const Text('준비물',style: TextStyle(fontWeight: FontWeight.bold)),
                            const SizedBox(width: 20),
                            Column(
                              children: const [
                                Text('- 주민등록증 또는 본인을 확인할 수 있는 신분증,교육 수강료 무료'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                             const SizedBox(width: 10),
                             const Text('주의사항',style: TextStyle(fontWeight: FontWeight.bold)),
                             const SizedBox(width: 7),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                const Text('- 신규면허 발급 전까지 유효기간 이내에는 수회에 걸쳐 면허시험에 응시'),
                                const Text('  하더라도 추가 교육 수강 의무 면제'),
                                const SizedBox(height: 10),
                                ElevatedButton(onPressed: (){
                                  launch('https://www.safedriving.or.kr/rersafetyed/rerSafetyedScheduleViewM.do?menuCode=MN-MO-1111');
                                },
                                    child: const Text('응시전 교통안전교육 예약하기'))
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  Container(alignment: Alignment.topLeft, //신체검사
                    child: Column(
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10),
                            const Text('장소',style: TextStyle(fontWeight: FontWeight.bold)),
                            const SizedBox(width: 40),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('- 운전면허시험장내 신체검사실 또는 병원(문경,강릉,태백,광양,충주'),
                                Text('  춘천운전면허시험장은 신체검사실이 없으므로 병원에서 받아와야 함'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('준비물 및 ',style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('준비사항',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(width: 7),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('- 신분증, 6개월 이내 촬영한 컬러 사진'),
                                Text('  (규격 3.5cm * 4.5cm) 2매'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 7),
                        Row(crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('수수료',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(width: 25),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('- 시험장 내 신체검사실 : 1종대형/특수면허 7,000원, 기타면허'),
                                Text('  6,000원'),
                                Text('- 건강검진결과내역서 등 제출 시 신체검사비 무료(1종보통 7년 무사'),
                                Text('  고만 해당)'),
                                Text('- 시험장 내 신체검사장의 외의 병원인 경우 신체검사비는 일반의료수'),
                                Text('  가에 따름'),
                                Text('- 국민건강보험법 또는 의료급여법에 따른 건강검진 결과 또는 병역법에'),
                                Text('  따른 병역판정 신체검사 결과(신청일로부터 2년 이내)를 받으신 경우'),
                                Text('  는 운전면허시험장 또는 경찰서에서 본인이 정보이용동의서 작성 시 '),
                                Text('  별도의 건강검진 결과 내역서 제출 및 신체검사를 받지 않아도 됨'),
                                Text('  (단,신청일로부터 2년 이내여야 하며,시력 또는 청력기준을 충족해야 함'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),
                        ElevatedButton(onPressed: ()async{
                          var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/hospital.json'); //신체검사 지정병원
                          List<dynamic>response = jsonDecode(rawResponse.data);
                          print(response);

                          Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                          print(position);

                          final Distance distance =  Distance();

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
                                Text('신체검사 지정병원 바로가기'),
                              ],
                            )),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
