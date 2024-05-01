
import 'package:flutter/material.dart';



class Iljongbotog extends StatefulWidget {
  const Iljongbotog({Key? key}) : super(key: key);

  @override
  State<Iljongbotog> createState() => _IljongbotogState();
}

class _IljongbotogState extends State<Iljongbotog> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 2, vsync: this);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('1.2종보통 채점기준'),
      ),
      body: Column(
        children: [
          SizedBox(height: 50,),
          ClipRRect(
            // shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(70)),
            // elevation: 3,
            child: Container(
              height: 43,
              margin: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(1)),
                color: Colors.green.shade100,
              ),
              child: TabBar(
                indicatorSize: TabBarIndicatorSize.tab,
                dividerColor: Colors.transparent,
                indicator: BoxDecoration(
                  color: Colors.green,
                ),
                controller: tabController,
                isScrollable: true,
                labelPadding: EdgeInsets.symmetric(horizontal: 30),
                tabs: const [
                  Tab(child: Text("장내기능 채점기준",style: TextStyle(color: Colors.black))),
                  Tab(child: Text("도로주행 채점기준",style: TextStyle(color: Colors.black))),
                ],
              ),
            ),
          ),
          const SizedBox(height: 25),

          Expanded(
            child: SizedBox(
              child: TabBarView(
                controller: tabController,
                children: [
                  SingleChildScrollView(//장내기능 채점기준
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 7),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    const SizedBox(
                                      child: SizedBox(
                                        width: 400,
                                        child: Image(image: AssetImage('image/1b2b1.png')),
                                      ),
                                    ),
                                    const SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('실격기준',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.red)),
                                              Text('각 시험 항목별 감점기준에 따라 감점결과 100점 만점에 80점 이상 합격'),
                                              Text('※ 다음의 경우 실격으로 한다.'),
                                              SizedBox(height: 7,),
                                              Text('1. 특별한 사유없이 출발선에서 30초 이내 출발하지 못한때'),
                                              Text('2. 경사로코스, 방향전환코스, 기어변속구간을 어느 하나라도 이행하지 아니한 때'),
                                              Text('3. 특별한 사요없이 교차로를 30초 이내 통과하지 못한때'),
                                              Text('4. 시험중 안전사고를 일으키거나 단1회라도 차로를 벗어 났을때'),
                                              Text('5. 경사로 정지구간 이행후 30초를 초과하여 경사구간을 통과하지 못한때 또는 경사 정지구간에서 후진하여 앞 범퍼가 경사로 사면을 벗어난 때'),
                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),const SizedBox(height: 50),
                        ],
                      ),
                    ),
                  ),

                  SingleChildScrollView(//도로주행 채점기준
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 7),
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      child: SizedBox(
                                        width: 400,
                                        child: Image(image: AssetImage('image/doro11.png')),
                                      ),
                                    ),
                                    SizedBox(
                                      child: SizedBox(
                                        width: 400,
                                        child: Image(image: AssetImage('image/doro22.png')),
                                      ),
                                    ),
                                    SizedBox(
                                      child: SizedBox(
                                        width: 400,
                                        child: Image(image: AssetImage('image/doro33.png')),
                                      ),
                                    ),
                                    SizedBox(
                                      child: SizedBox(
                                        width: 400,
                                        child: Image(image: AssetImage('image/doro44.png')),
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('시험코스',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                                              Text(' 총연장 5km 이상'),
                                              SizedBox(height: 7),
                                              Text('시험항목',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                                              Text('운전자세, 제동장치 및 조향장치 조작, 직진 및 좌.우회전, 진로변경 등 총 87개 채점 항목'),
                                              SizedBox(height: 7),
                                              Text('도로주행시험을 실시하는 도로의 기준',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                                              Text('주행거리 5km이상 실제도로에서 실시'),
                                              Text('지시속도에 의한 주행(매시 40km) 1구간 400m'),
                                              Text('차로변경(편도 2차로 이상의 도로에서) 각 1회'),
                                              Text('방향전환 좌.우회전, 직진(교차로) 1회'),
                                              Text('횡단보도(일시정지 및 통과) 1회'),
                                              SizedBox(height: 7),
                                              Text('합격기준',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                                              Text('70점 이상 합격'),
                                              Text('시험관이 채점표에 의하여 감점방식으로 채점 2012년 11월 1일 도로주행시험 노선 및 채점에 (전자채점시스템 도입)'),
                                              SizedBox(height: 7),
                                              Text('실격기준',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.red)),
                                              Text('3회 이상 출발블능 또는 응시자가 시험을 포기한 경우'),
                                              Text('5회 이상 "클러치 조작 불량으로 인한 엔진정지","급브레이크 사용" 또는 그 밖의 사유로 운전능력이 현저하게 부족한 것으로 인정되는 경우'),
                                              Text('교통사고 야기한 경우 또는 운전능력부족으로 일으킬 위험이 현저한 경우'),
                                              Text('교통사고 예방 및 시험 진행을 위한 시험관 지시.통제에 불응한 경우'),
                                              Text('보행자 보호의무 위반, 신호 또는 지시위반, 중앙선 침범 어린이 통학버스 보호의무 위반한 경우'),
                                              SizedBox(height: 7),
                                              Text('기타',style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold)),
                                              Text('연습면허 유효기간 내에 도로주행시험에 합격해야 합니다.'),
                                              Text('(유효기간이 지났을 경우에는 다시 PC학과시험, 장내기능시험에 합격 후에 연습면허 발급 받아야 함)'),
                                              Text('도로주행시험 응시 후 불합격자는(운전전문학원에서 불합격한 이력도 포함)'),
                                              Text('불합격일부터 3일 경과 후에 재응시가 가능합니다.'),
                                              Text('예) 불합격이 1일이면 4일부터 재응시 가능'),

                                            ],
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),const SizedBox(height: 50),
                        ],
                      ),
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
