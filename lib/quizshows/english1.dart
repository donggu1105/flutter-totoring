import 'package:dao/quizshows/w_result_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';




class English1 extends StatefulWidget {
  const English1({Key? key}) : super(key: key);

  @override
  State<English1> createState() => _Screen2State();
}

class _Screen2State extends State<English1> with TickerProviderStateMixin {
  RxInt problemNum =0.obs; //문제번호(다음버튼 누르면 하나씩 올라감)
  RxInt selectedNum = 0.obs; //사용자가 선택한 선지가 어떤 선지인지 프로그램이 알수 있게 하기 위해서 만든 변수
  Map selectedNumList = {}; // 결과값
  double score = 0;


  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 1, vsync: this);

    return Scaffold(
      appBar: AppBar(
        title: Text('영어 (1,2종보통)'),
      ),
      body: Column(
        children: [

          SizedBox(height: 20,),
          Container(
            child: Container(

              child: Builder(
                  builder: (context) {
                    return Container(
                      child: Text('1,2종보통',style: TextStyle(
                        color: Colors.black,fontSize: 25,fontWeight: FontWeight.bold,
                      ),),
                    );
                  }
              ),
            ),
          ),

          SizedBox(height: 20,),

          Expanded(
            child: SizedBox(
              child: TabBarView(
                controller: tabController,
                children: [
                  Obx(()=> GestureDetector( //1종보통
                    child: Container(
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
                                  SizedBox(height: 25,width: 35,child: Container(color: Colors.white,child: Text('${problemNum.value+1}.',style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold)))),
                                  SizedBox(width: 3,),
                                  Expanded(child: Text(Get.arguments[0][problemNum.value]['question'].toString()+'(${(Get.arguments[0][problemNum.value]['score'].toString())}점 문제)',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold))),
                                ],
                              ),

                              SizedBox(height: 15,),

                              Get.arguments[0][problemNum.value]['image'] == null ? Container(): Image.network(Get.arguments[0][problemNum.value]['image']),

                              SizedBox(height: 10,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 25,width: 25),Text('①'),
                                  Container(
                                    width: 400,
                                    child: selectedNum.value==1?TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('1번선택');  selectedNum.value=1;},
                                        child: Text(Get.arguments[0][problemNum.value]['answer1'].toString())):TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('1번선택');  selectedNum.value=1;},
                                         child: Text(Get.arguments[0][problemNum.value]['answer1'].toString(),style: TextStyle(fontSize: 18,color: Colors.black))),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 25,width: 25),Text('②'),
                                  Container(
                                    width: 400,
                                    child: selectedNum.value==2?TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('2번선택');  selectedNum.value=2;},
                                        child: Text(Get.arguments[0][problemNum.value]['answer2'].toString())):TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('2번선택');  selectedNum.value=2;},
                                         child: Text(Get.arguments[0][problemNum.value]['answer2'].toString(),style: TextStyle(fontSize: 18,color: Colors.black))),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 25,width: 25,),Text('③'),
                                  Container(
                                    width: 400,
                                    child: selectedNum.value==3?TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('3번선택');  selectedNum.value=3;},
                                        child: Text(Get.arguments[0][problemNum.value]['answer3'].toString())):TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('3번선택');  selectedNum.value=3;},
                                        child: Text(Get.arguments[0][problemNum.value]['answer3'].toString(),style: TextStyle(fontSize: 18,color: Colors.black))),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),

                              Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  SizedBox(height: 25,width: 25,),Text('④',),
                                  Container(
                                    width: 400,
                                    child: selectedNum.value==4?TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('4번선택');  selectedNum.value=4;},
                                        child: Text(Get.arguments[0][problemNum.value]['answer4'].toString())):TextButton(style:TextButton.styleFrom(alignment: Alignment.centerLeft),onPressed:(){print('4번선택');  selectedNum.value=4;},
                                        child: Text(Get.arguments[0][problemNum.value]['answer4'].toString(),style: TextStyle(fontSize: 18,color: Colors.black))),
                                  ),
                                ],
                              ),
                              SizedBox(height: 10,),

                              Text(Get.arguments[0][problemNum.value]['answer'].toString()),
                              Text(Get.arguments[0][problemNum.value]['score'].toString()),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )),
                ],
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(vertical: 30),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ElevatedButton(onPressed: (){
                  problemNum.value == 0 ?print('이전페이지가 없습니다'):problemNum.value--; print(problemNum.toString());
                  selectedNum.value = selectedNumList['${problemNum.value+1}번문제'];},

                  child: Text('<< 이전'),style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent, padding: const EdgeInsets.symmetric(horizontal: 40,vertical: 10),textStyle: const TextStyle(fontSize: 25,fontWeight: FontWeight.bold),
                  ),),


                SizedBox(width: 90,),
                ElevatedButton(onPressed: () { // 다음버튼

                  /** 로직 구성
                   *  1. 어떤클릭 (몇번 선택)
                      2. 정답을 가지고 맞았는지 틀렸는지 맞았으면 score (총점수) 에다가 플러스할거야
                      3. 마지막 문제였다면, 결과화면 보여주기 (score총합)
                   */


                  // 1. 어떤클릭 (몇번 선택)
                  // 현재 선택한 답안 번호를 selectedNumList에 저장
                  print("현재 문제 번호 : ${problemNum.value + 1}");
                  selectedNumList['${problemNum.value + 1}번문제'] = selectedNum.value;
                  print("현재 선택한 번호 : ${selectedNum.value}");

                  // 2. 맞았는지 틀렸는지
                  // 현재 문제의 정답(들)을 문자열로 확인합니다.
                  var correctAnswers = Get.arguments[0][problemNum.value]['answer'].toString(); // 정답

                  // correctAnswers = 4 5  4,5

                  // 사용자의 선택이 정답 문자열에 포함되어 있는지 확인합니다.
                  if (correctAnswers.contains(selectedNum.value.toString())) { // 정답일경우
                    // 정답인 경우, 문제의 점수를 score에 추가합니다.
                    score += Get.arguments[0][problemNum.value]['score']; // 점수추가
                  }

                  ////////////////

                  print("현재까지의 점수 : $score");

                  // 3. 마지막 문제인지 확인합니다.
                  if (problemNum.value + 1 == Get.arguments[0].length) {
                    // 모든 문제를 풀었으므로 결과 페이지로 이동합니다.
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultPage(score: score), // 최종 점수를 결과 페이지로 전달합니다.
                      ),
                    );
                  } else {
                    // 다음 문제로 넘어갑니다.
                    problemNum.value++;
                    // 다음 문제의 선택된 답안 번호를 초기화합니다.
                    selectedNum.value = selectedNumList.containsKey(problemNum.value + 1)
                        ? selectedNumList[problemNum.value + 1]
                        : 0;
                  }

                },
                  child: Text('다음'),style: ElevatedButton.styleFrom(
                    backgroundColor:
                    Colors.blueAccent,
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                        vertical: 20
                    ),
                    textStyle:
                    const TextStyle(
                        fontSize: 25,fontWeight: FontWeight.bold
                    ),
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
