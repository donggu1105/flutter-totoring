import 'dart:convert';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:dao/quizshows/china.dart';
import 'package:dao/quizshows/english.dart';
import 'package:dao/quizshows/korea.dart';
import 'package:dao/quizshows/vietnam.dart';
import 'package:dao/test_center.dart';
import 'package:dao/test_center/exam_information.dart';
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:latlong2/latlong.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:url_launcher/url_launcher.dart';

import 'academy.dart';
import 'hospital.dart';

class Dao_Main extends StatelessWidget {
  Dao_Main({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
            child: Padding(
                padding: EdgeInsets.all(15.0),
                child: Column(
                  children: [SizedBox(height: 15,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text('운전면허 DAO',style: TextStyle(color: Colors.grey,fontSize: 15),),
                    ),
                    SizedBox(height: 10,),
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text(' 운전면허 문제은행',style: TextStyle(
                        color: Colors.black87,fontSize: 26,fontWeight: FontWeight.bold,
                      ),),
                    ),
                    SizedBox(height: 7,),
                    CarouselSlider(items: [ //상단 슬라이더 1
                      MaterialButton(onPressed: ()async{
                        // 권한

                        // 위치 권한 상태 확인
                        var permissionStatus = await Permission.location.status;
                        print(permissionStatus);
                        if (permissionStatus.isDenied || permissionStatus.isPermanentlyDenied) {
                          // 권한 요청
                          var requested = await Permission.location.request();
                          if (!requested.isGranted) {
                            return;
                          }
                        }


                        var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/academy.json'); //운전면허학원 공도 1
                        List<dynamic>response = jsonDecode(rawResponse.data);
                        print('stat');

                        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                        //print(position);

                        Distance distance =  Distance();
                        List<int> kmList = List.generate(response.length, (index) => distance.as(LengthUnit.Kilometer, LatLng(position.latitude, position.longitude), LatLng(response[index]['lat'], response[index]['lng'])).round() as int);

                        for (int i = 0; i < response.length; i++) {
                          response[i]["km"] = kmList[i];
                        }

                        response.sort((a, b) => a['km'].compareTo(b['km']));
                        print(response);

                        Get.to(AcaDemy(),arguments: [response]);
                      },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: AspectRatio(
                            aspectRatio: 1/0.6,
                            child: Image.asset('image/sin1.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),

                      MaterialButton(onPressed: ()async{
                        // 권한

                        // 위치 권한 상태 확인
                        var permissionStatus = await Permission.location.status;
                        print(permissionStatus);
                        if (permissionStatus.isDenied || permissionStatus.isPermanentlyDenied) {
                          // 권한 요청
                          var requested = await Permission.location.request();
                          if (!requested.isGranted) {
                            return;
                          }
                        }


                        var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/license.json'); //운전면허시험장 동일
                        List<dynamic>response = jsonDecode(rawResponse.data);
                        print('stat');

                        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                        //print(position);

                        Distance distance =  Distance();
                        List<int> kmList = List.generate(response.length, (index) => distance.as(LengthUnit.Kilometer, LatLng(position.latitude, position.longitude), LatLng(response[index]['lat'], response[index]['lng'])).round() as int);

                        for (int i = 0; i < response.length; i++) {
                          response[i]["km"] = kmList[i];
                        }

                        response.sort((a, b) => a['km'].compareTo(b['km']));
                        print(response);

                        Get.to(Test_Center(),arguments: [response]);
                      },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: AspectRatio(
                            aspectRatio: 1/0.6,
                            child: Image.asset('image/dongil1.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),

                      MaterialButton(onPressed: ()async{
                        // 권한

                        // 위치 권한 상태 확인
                        var permissionStatus = await Permission.location.status;
                        print(permissionStatus);
                        if (permissionStatus.isDenied || permissionStatus.isPermanentlyDenied) {
                          // 권한 요청
                          var requested = await Permission.location.request();
                          if (!requested.isGranted) {
                            return;
                          }
                        }


                        var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/hospital.json'); //신체검사지정병원 호수
                        List<dynamic>response = jsonDecode(rawResponse.data);
                        print('stat');

                        Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                        //print(position);

                        Distance distance =  Distance();
                        List<int> kmList = List.generate(response.length, (index) => distance.as(LengthUnit.Kilometer, LatLng(position.latitude, position.longitude), LatLng(response[index]['lng'], response[index]['lat'])).round() as int);

                        for (int i = 0; i < response.length; i++) {
                          response[i]["km"] = kmList[i];
                        }

                        response.sort((a, b) => a['km'].compareTo(b['km']));
                        print(response);

                        Get.to(HosPital(),arguments: [response]);
                      },
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: AspectRatio(
                            aspectRatio: 1/0.6,
                            child: Image.asset('image/byeongwon1.jpg',
                              fit: BoxFit.fill,
                            ),
                          ),
                        ),
                      ),
                    ], options: CarouselOptions(
                      height: 210,
                      aspectRatio: 1/0.6,
                      viewportFraction: 1.1,
                      //autoPlay: true,
                      //autoPlayInterval: Duration(seconds: 30),
                      //autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      //enlargeCenterPage: true,
                    )),
                    //SizedBox(height: 20,),




                    SizedBox(height: 10),

                    Column(
                      children: [
                        Text('※ 운전면허 필기시험 모의고사!',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.black87)),
                        Text('---문제풀이로 시험준비하기---',style: TextStyle()),
                      ],
                    ),
                    SizedBox(height: 15),

                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            child: ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> Korea()));
                            },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                minimumSize: Size(70, 90),
                              ),
                              child: Column(
                                children: [
                                  Text('한국어',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.lightBlueAccent)),
                                  Text('Korean',style: TextStyle(fontSize: 15,color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 7,),
                        Expanded(
                            child: GestureDetector(
                              child: ElevatedButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> China()));
                              },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  minimumSize: Size(70, 90),
                                ),
                                child: Column(
                                  children: [
                                    Text('중국어',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.orange)),
                                    Text('China',style: TextStyle(fontSize: 15,color: Colors.black),),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 7,),

                    Row(
                      children: [
                        Expanded(
                          child: GestureDetector(
                            child: ElevatedButton(onPressed: (){
                              Navigator.push(context, MaterialPageRoute(builder: (context)=> English()));
                            },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 3,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                                minimumSize: Size(70, 90),
                              ),
                              child: Column(
                                children: [
                                  Text('영 어',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.black87)),
                                  Text('English',style: TextStyle(fontSize: 15,color: Colors.black)),
                                ],
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 7,),
                        Expanded(
                            child: GestureDetector(
                              child: ElevatedButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=> Vietnam()));
                              },
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.white,
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  ),
                                  minimumSize: Size(70, 90),
                                ),
                                child: Column(
                                  children: [
                                    Text('베트남어',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 30,color: Colors.teal)),
                                    Text('Vietnamese',style: TextStyle(fontSize: 15,color: Colors.black),),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 20,),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                            child: GestureDetector(
                              child: ElevatedButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>English()));
                              },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    maximumSize: Size(300, 80)

                                ),child: Row(
                                  children: [
                                    ButtonBar(
                                      alignment: MainAxisAlignment.start,
                                      // buttonPadding: EdgeInsets.all(20),
                                      children: [
                                        SizedBox(
                                          child: IconButton(
                                            icon: Icon(Icons.edit_off,color: Colors.black,),
                                            onPressed: null,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('많이 틀리는 문제',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black87),),
                                            Text('응시자들이 많이 틀리는 문제!',style: TextStyle(fontSize: 15,color: Colors.black87),)
                                          ],
                                        ),
                                        SizedBox(width: 15,
                                          child: IconButton(alignment: Alignment.centerRight,
                                            icon: Icon(Icons.navigate_next,color: Colors.black,),
                                            onPressed: null,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Expanded(
                            child: GestureDetector(
                              child: ElevatedButton(onPressed: (){
                                launch('https://www.youtube.com/watch?v=6c2vZrrVwP0&t=107s');
                              },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    maximumSize: Size(300, 80)

                                ),child: Row(
                                  children: [
                                    ButtonBar(
                                      alignment: MainAxisAlignment.start,
                                      // buttonPadding: EdgeInsets.all(20),
                                      children: [
                                        SizedBox(
                                          child: IconButton(
                                            icon: Icon(Icons.video_collection,color: Colors.red,),
                                            onPressed: null,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('유튜브 동영상',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black87),),
                                            Text('동영상으로 쉽게 학습하세요!',style: TextStyle(fontSize: 15,color: Colors.black87),)
                                          ],
                                        ),
                                        SizedBox(width: 15,
                                          child: IconButton(alignment: Alignment.centerRight,
                                            icon: Icon(Icons.navigate_next,color: Colors.black,),
                                            onPressed: null,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 5,),
                    Row(
                      children: [
                        Expanded(
                            child: GestureDetector(
                              child: ElevatedButton(onPressed: (){
                                Navigator.push(context, MaterialPageRoute(builder: (context)=>Exam_Information()));
                              },
                                style: ElevatedButton.styleFrom(
                                    backgroundColor: Colors.white,
                                    elevation: 1,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(0),
                                    ),
                                    maximumSize: Size(300, 80)

                                ),child: Row(crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    ButtonBar(
                                      alignment: MainAxisAlignment.start,
                                      // buttonPadding: EdgeInsets.all(20),
                                      children: [
                                        SizedBox(
                                          child: IconButton(
                                            icon: Icon(Icons.task_alt_outlined,color: Colors.red,),
                                            onPressed: null,
                                          ),
                                        ),
                                        Column(
                                          crossAxisAlignment: CrossAxisAlignment.start,
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: [
                                            Text('운전면허 시험안내',style: TextStyle(fontSize: 22,fontWeight: FontWeight.bold,color: Colors.black87),),
                                            Text('취득절차 및 시험안내',style: TextStyle(fontSize: 15,color: Colors.black87),)
                                          ],
                                        ),
                                        SizedBox(width: 30,
                                          child: IconButton(
                                            icon: Icon(Icons.navigate_next,color: Colors.black,),
                                            onPressed: null,
                                          ),
                                        )
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ))
                      ],
                    ),
                    SizedBox(height: 10,),
                    CarouselSlider(
                        items: [ //슬라이더 1
                          MaterialButton(onPressed: (){ //청담운전학원
                            launch('http://cddrive.co.kr/index.html');
                          },
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: AspectRatio(
                                aspectRatio: 16/9,
                                child: Image.asset('image/cugdam1.jpeg',fit: BoxFit.cover,
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
                                aspectRatio: 16/9,
                                child: Image.asset('image/sin1.jpg',fit: BoxFit.cover,
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
                                aspectRatio: 16/9,
                                child: Image.asset('image/dongil1.jpg',fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                        ], options: CarouselOptions(
                      height: 180,
                      aspectRatio: 16/9,
                      viewportFraction: 0.8,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: const Duration(milliseconds: 800),
                      //enlargeCenterPage: true,
                    )),

                    SizedBox(height: 10,),


                    CarouselSlider(
                        items: [
                          SizedBox(width: 200,height: 100,
                            child: OutlinedButton(onPressed: ()async{
                              // 권한

                              // 위치 권한 상태 확인
                              var permissionStatus = await Permission.location.status;
                              print(permissionStatus);
                              if (permissionStatus.isDenied || permissionStatus.isPermanentlyDenied) {
                                // 권한 요청
                                var requested = await Permission.location.request();
                                if (!requested.isGranted) {
                                  return;
                                }
                              }


                              var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/hospital.json'); //신체검사지정병원 호수
                              List<dynamic>response = jsonDecode(rawResponse.data);
                              print('stat');

                              Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                              //print(position);

                              Distance distance =  Distance();
                              List<int> kmList = List.generate(response.length, (index) => distance.as(LengthUnit.Kilometer, LatLng(position.latitude, position.longitude), LatLng(response[index]['lng'], response[index]['lat'])).round() as int);

                              for (int i = 0; i < response.length; i++) {
                                response[i]["km"] = kmList[i];
                              }

                              response.sort((a, b) => a['km'].compareTo(b['km']));
                              print(response);

                              Get.to(HosPital(),arguments: [response]);
                            },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('신체검사',style: TextStyle(fontSize: 15),),
                                  Text('지정병원',style: TextStyle(fontSize: 15),),
                                ],
                              ),
                              style: OutlinedButton.styleFrom(
                                backgroundColor: Colors.white,elevation: 5,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0),
                                ),

                              ),
                            ),
                          ),

                          SizedBox(width: 200,height: 100,
                            child: OutlinedButton(onPressed: ()async{
                              // 권한

                              // 위치 권한 상태 확인
                              var permissionStatus = await Permission.location.status;
                              print(permissionStatus);
                              if (permissionStatus.isDenied || permissionStatus.isPermanentlyDenied) {
                                // 권한 요청
                                var requested = await Permission.location.request();
                                if (!requested.isGranted) {
                                  return;
                                }
                              }


                              var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/academy.json'); //운전면허시험장 동일
                              List<dynamic>response = jsonDecode(rawResponse.data);
                              print('stat');

                              Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                              //print(position);

                              Distance distance =  Distance();
                              List<int> kmList = List.generate(response.length, (index) => distance.as(LengthUnit.Kilometer, LatLng(position.latitude, position.longitude), LatLng(response[index]['lat'], response[index]['lng'])).round() as int);

                              for (int i = 0; i < response.length; i++) {
                                response[i]["km"] = kmList[i];
                              }

                              response.sort((a, b) => a['km'].compareTo(b['km']));
                              print(response);

                              Get.to(AcaDemy(),arguments: [response]);
                            },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('운전학원',style: TextStyle(fontSize: 15),),
                                  Text('찾기',style: TextStyle(fontSize: 15),),
                                ],
                              ),
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  )
                              ),
                            ),
                          ),

                          SizedBox(width: 200,height: 100,
                            child: OutlinedButton(onPressed: ()async{
                              // final url=Uri.parse('https://www.safedriving.or.kr/mainCertification01M.do'); //필기시험접수
                              // if(await canLaunchUrl(url)){
                              //   await launchUrl(url);
                              // }
                              launch('https://www.safedriving.or.kr/mainCertification01M.do');

                            },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('필기시험',style: TextStyle(fontSize: 15),),
                                  Text('접수',style: TextStyle(fontSize: 15),),
                                ],
                              ),
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10.0),
                                  )
                              ),
                            ),
                          ),

                          SizedBox(width: 200,height: 100,
                            child: OutlinedButton(onPressed: ()async{
                              // 권한

                              // 위치 권한 상태 확인
                              var permissionStatus = await Permission.location.status;
                              print(permissionStatus);
                              if (permissionStatus.isDenied || permissionStatus.isPermanentlyDenied) {
                                // 권한 요청
                                var requested = await Permission.location.request();
                                if (!requested.isGranted) {
                                  return;
                                }
                              }


                              var rawResponse = await Dio().get('https://raw.githubusercontent.com/dbswhdaks/drive/main/license.json'); //운전면허시험장 동일
                              List<dynamic>response = jsonDecode(rawResponse.data);
                              print('stat');

                              Position position = await Geolocator.getCurrentPosition(desiredAccuracy: LocationAccuracy.high);
                              //print(position);

                              Distance distance =  Distance();
                              List<int> kmList = List.generate(response.length, (index) => distance.as(LengthUnit.Kilometer, LatLng(position.latitude, position.longitude), LatLng(response[index]['lat'], response[index]['lng'])).round() as int);

                              for (int i = 0; i < response.length; i++) {
                                response[i]["km"] = kmList[i];
                              }

                              response.sort((a, b) => a['km'].compareTo(b['km']));
                              print(response);

                              Get.to(Test_Center(),arguments: [response]);
                            },
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text('운전면허',style: TextStyle(fontSize: 15),),
                                  Text('시험장',style: TextStyle(fontSize: 15),),
                                ],
                              ),
                              style: OutlinedButton.styleFrom(
                                  backgroundColor: Colors.white,elevation: 5,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(12),
                                  )
                              ),
                            ),
                          )
                        ],
                        options: CarouselOptions(
                          height: 60,
                          //aspectRatio: 16/9,
                          viewportFraction: 0.35,
                          // autoPlay: true,
                          // autoPlayInterval: Duration(seconds: 3),
                          // autoPlayAnimationDuration: Duration(milliseconds: 800),
                          //enlargeCenterPage: true,
                        )),
                  ],
                )),
          )),
    );
  }
}
