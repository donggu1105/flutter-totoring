
import 'package:dao/quizshows/w_result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:youtube_player_iframe/youtube_player_iframe.dart';




class Korea1 extends StatefulWidget {
  Korea1({Key? key}) : super(key: key);

  @override
  State<Korea1> createState() => _Screen2State();
}

class _Screen2State extends State<Korea1> with TickerProviderStateMixin {



  RxInt problemNum =0.obs; //문제번호(다음버튼 누르면 하나씩 올라감)
  RxInt selectedNum = 0.obs; //사용자가 선택한 선지가 어떤 선지인지 프로그램이 알수 있게 하기 위해서 만든 변수
  Map selectedNumList = {};
  double score =0;
//안녕하세요


  //YoutubePlayerController youtubePlayerController =  YoutubePlayerController.fromVideoId(videoId: Get.arguments[0][29]['video'].toString().substring(Get.arguments[0][20]['video'].toString().length-11));

  @override
  Widget build(BuildContext context) {

    // problemNum.value = 0;  어디에 붙여 넣을 까요?
    // selectedNum.value=0;
    // selectedNumList.clear();



    TabController tabController = TabController(length: 1, vsync: this);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blue,
        title: Text('1종보통 (40문항)'),
      ),
      body: Column(
        children: [

          SizedBox(height: 20,),

          Expanded(
            child: SizedBox(
              child: TabBarView(
                controller: tabController,
                children: [
                  Obx(()=> GestureDetector( //1종보통
                    child: Container(
                      //margin: EdgeInsets.symmetric(horizontal:30,vertical: 10),
                      child: ListTile(
                        title: SingleChildScrollView(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(height: 20,),
                              Row( //문제
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                      child: Container(color: Colors.white,child: Text('${problemNum.value+1}.',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)))),
                                  SizedBox(width: 3,),
                                  Expanded(child: Text(Get.arguments[0][problemNum.value]['question'].toString()+'(${(Get.arguments[0][problemNum.value]['score'].toString())}점 문제)',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
                                ],
                              ),

                              SizedBox(height: 15,),

                              Get.arguments[0][problemNum.value]['image'] == null ? Container(): Image.network(Get.arguments[0][problemNum.value]['image']),

                              // problemNum.value == 29 ? YoutubePlayer(
                              //   controller: youtubePlayerController,
                              //   aspectRatio: 16/9,
                              // ):Container(),

                              SizedBox(height: 10,),


                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(),Text('①',style: TextStyle(fontSize: 20),),
                                  Expanded(
                                    child: Container(
                                      //color: Colors.red,
                                      width: 295,
                                      child: selectedNum.value==1?TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('1번선택');  selectedNum.value=1;},
                                          child: Text(Get.arguments[0][problemNum.value]['answer1'].toString())):TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('1번선택');  selectedNum.value=1;},
                                          child: Text(Get.arguments[0][problemNum.value]['answer1'].toString(),style: TextStyle(fontSize: 18,color: Colors.black))),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(),Text('②',style: TextStyle(fontSize: 20),),
                                  Expanded(
                                    child: Container(
                                      width: 295,
                                      child: selectedNum.value==2?TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('2번선택');  selectedNum.value=2;},
                                          child: Text(Get.arguments[0][problemNum.value]['answer2'].toString())):TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('2번선택');  selectedNum.value=2;},
                                          child: Text(Get.arguments[0][problemNum.value]['answer2'].toString(),style: TextStyle(fontSize: 18,color: Colors.black))),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(),Text('③',style: TextStyle(fontSize: 20),),
                                  Expanded(
                                    child: Container(
                                      width: 295,
                                      child: selectedNum.value==3?TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('3번선택');  selectedNum.value=3;},
                                          child: Text(Get.arguments[0][problemNum.value]['answer3'].toString())):TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('3번선택');  selectedNum.value=3;},
                                          child: Text(Get.arguments[0][problemNum.value]['answer3'].toString(),style: TextStyle(fontSize: 18,color: Colors.black))),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(),Text('④',style: TextStyle(fontSize: 20),),
                                  Expanded(
                                    child: Container(
                                      width: 295,
                                      child: selectedNum.value==4?TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('4번선택');  selectedNum.value=4;},
                                          child: Text(Get.arguments[0][problemNum.value]['answer4'].toString())):TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('4번선택');  selectedNum.value=4;},
                                          child: Text(Get.arguments[0][problemNum.value]['answer4'].toString(),style: TextStyle(fontSize: 18,color: Colors.black))),
                                    ),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),

                              // Row(
                              //   crossAxisAlignment: CrossAxisAlignment.center,
                              //   mainAxisAlignment: MainAxisAlignment.start,
                              //   children: [
                              //     SizedBox(),Text('⑤',style: TextStyle(fontSize: 20),),
                              //     Container(
                              //       width: 295,
                              //       child: selectedNum.value==5?TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('4번선택');  selectedNum.value=5;},
                              //           child: Text(Get.arguments[0][problemNum.value]['answer4'].toString())):TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('5번선택');  selectedNum.value=4;},
                              //           child: Text(Get.arguments[0][problemNum.value]['answer4'].toString(),style: TextStyle(fontSize: 18,color: Colors.black))),
                              //     ),
                              //   ],
                              // ),

                              Text(Get.arguments[0][problemNum.value]['answer'].toString()),
                              Text(Get.arguments[0][problemNum.value]['score'].toString()),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                  ),
                ],
              ),
            ),
          ),

          Container(
            //width: MediaQuery.of(context).size.width * 0.8,
            //height: 100,
            margin: EdgeInsets.symmetric(vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              // crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ElevatedButton(onPressed: (){

                  problemNum.value == 0 ?print('이전페이지가 없습니다'):problemNum.value--; print(problemNum.toString());
                  selectedNum.value = selectedNumList['${problemNum.value+1}번문제'];



                  // String videoUrl = Get.arguments[0][problemNum.value]['video'].toString();
                  //  String videoId = videoUrl.substring(videoUrl.length -11);
                  // youtubePlayerController.loadVideoById(videoId: videoId);
                  //다음버튼누를떄유튜브영상에 새로운영상Id를넣어서 새로고침


                },
                  child: Text('이전',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 3,
                      minimumSize: Size(120, 55)
                  ),),
                SizedBox(width: 90,),
                ElevatedButton(
                  onPressed: () {
                    //selectedNum은 사용자가 현재 선택한 선지
                    //selectedNumList는 사용자가  선택한 선지들을 모아놓은 꾸러미(map타입)
                    //problemNum+1은 문제번호

                    //기존에 선택한 선지가 이미있다면 그 선지에 답을수정 해줬으면 좋겟어

                    if(selectedNumList['${problemNum.value+1}번문제'] !=null ){

                      selectedNumList['${problemNum.value+1}번문제'] = selectedNum.value;
                      print(selectedNumList);
                      //사용자가 선택한선지를 기존선지에수정하는로직
                      selectedNum.value =0;
                      //사용자가선택한선지를초기화

                      //해당문제에사용자가 이미선택한 선지가 있다면 그선지를파란색으로표시해줬으면좋겠어
                      if(selectedNumList['${problemNum.value+2}번문제'] !=null){
                        selectedNum.value = selectedNumList['${problemNum.value+2}번문제'];
                      }
                      //  String videoUrl = Get.arguments[0][problemNum.value]['video'].toString();
                      //  String videoId = videoUrl.substring(videoUrl.length -11);
                      //  youtubePlayerController.loadVideoById(videoId: videoId);
                      //다음버튼누를떄유튜브영상에 새로운영상Id를넣어서 새로고침

                      //기존에 선택한 선지가 없다면 선지를 추가하고 다음문제로 넘어가면좋겠어
                    }else {
                      selectedNumList.addAll(
                          {'${problemNum.value + 1}번문제': selectedNum.value});
                      print(selectedNumList);
                      //사용자가선택한선지를리스트에담는로직
                      var correctAnswers = Get.arguments[0][problemNum.value]
                      ['answer']
                          .toString(); // 정답
                      if (correctAnswers.contains(selectedNum.value.toString())) {
                        // 정답일경우
                        // 정답인 경우, 문제의 점수를 score에 추가합니다.
                        score +=
                        Get.arguments[0][problemNum.value]['score']; // 점수추가
                      }
                      print("현재까지의 점수 : $score");

                      selectedNum.value = 0;
                      //사용자가선택한선지를초기화

                      // String videoUrl = Get.arguments[0][problemNum.value]['video'].toString();
                      //  String videoId = videoUrl.substring(videoUrl.length -11);
                      //  youtubePlayerController.loadVideoById(videoId: videoId);
                      //다음버튼누를떄유튜브영상에 새로운영상Id를넣어서 새로고침

                      //해당문제에사용자가이미선택한선지 있다면 그선지를파란색으로표시해줬으면좋겠어
                      if(selectedNumList['${problemNum.value+2}번문제'] != null){
                        selectedNum.value = selectedNumList['${problemNum.value+2}번문제'];
                      }
                    }

                    problemNum.value == 39 ? Get.defaultDialog(title: '알림메세지',
                        content:Column(
                          children: [
                            Text('마지막 문제입니다'),
                            Text('답안을 제출 하시겠습니까?'),
                          ],
                        ),

                        confirm:ElevatedButton(onPressed: (){

                          if (score > 70) {
                            Get.to(Result1Page(score: score,));

                          }else {
                            problemNum.value++;
                            selectedNum.value =
                            selectedNumList.containsKey(problemNum.value + 1)
                                ? selectedNumList[problemNum.value + 1]
                                : 0;
                            Get.to(ResultPage(score: score,));
                          }
                        },
                            child: Text('확인')),

                        cancel: ElevatedButton(onPressed: (){Get.back();}, child: Text('취소')) ) : problemNum
                        .value++;
                    print(problemNum.toString());
                    //마지막문제면 마지막문제라고알려주고 아니면 다음문제로 넘어가는로직
                  },
                  child: Text('다음',style: TextStyle(color: Colors.white,fontSize: 25,fontWeight: FontWeight.bold),),
                  style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      elevation: 3,
                      minimumSize: Size(120, 55)
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
