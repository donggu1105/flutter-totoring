import 'package:flutter/material.dart';
import 'package:get/get.dart';




class China2 extends StatefulWidget {
  China2({Key? key}) : super(key: key);

  @override
  State<China2> createState() => _Screen2State();
}

class _Screen2State extends State<China2> with TickerProviderStateMixin {
  RxInt problemNum =0.obs; //문제번호(다음버튼 누르면 하나씩 올라감)
  RxInt selectedNum = 0.obs; //사용자가 선택한 선지가 어떤 선지인지 프로그램이 알수 있게 하기 위해서 만든 변수
  Map selectedNumList = {};
  int score =0;

  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 1, vsync: this);

    return Scaffold(
      appBar: AppBar(
        title: Text('중국어 (2종소형)'),
      ),
      body: Column(
        children: [

          SizedBox(height: 20,),
          Container(
            child: Container(
              child: Builder(
                  builder: (context) {
                    return Container(
                      child: Text('2종소형',style: TextStyle(
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
                  ),
                  ),
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
                ElevatedButton(onPressed: () {
                  if (selectedNumList['${problemNum.value + 1}번문제'] != null) {
                    selectedNumList['${problemNum.value + 1}번문제'] =
                        selectedNum.value;
                    print(selectedNumList);
                    selectedNum.value = 0;

                    if (selectedNumList['${problemNum.value + 2}번문제'] != null) {
                      selectedNum.value =
                      selectedNumList['${problemNum.value + 2}번문제'];
                    }

                    problemNum.value == null ? print('마지막 문제입니다') : problemNum
                        .value++;
                    print(problemNum.toString());
                  } else {
                    selectedNumList.addAll(
                        {'${problemNum.value + 1}번문제': selectedNum.value});
                    print(selectedNumList);
                    selectedNum.value = 0;

                    if (selectedNumList['${problemNum.value + 2}번문제'] != null) {
                      selectedNum.value =
                      selectedNumList['${problemNum.value + 2}번문제'];
                    }

                    problemNum.value == null ? print('마지막 문제 입니다') : problemNum
                        .value++;
                    print(problemNum.toString()); //마지막 문제면 마지막 문제라고 알려주고 아니면 다음 문제로 넘어가는 로직

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
