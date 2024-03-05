import 'package:flutter/material.dart';

class Sohyeonggyeonincha extends StatefulWidget {
  const Sohyeonggyeonincha({Key? key}) : super(key: key);

  @override
  State<Sohyeonggyeonincha> createState() => _SohyeonggyeoninchaState();
}

class _SohyeonggyeoninchaState extends State<Sohyeonggyeonincha> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 1, vsync: this);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('채점기준'),
      ),

      body: Column(
        children: [
          SizedBox(height: 20,),
          Text('소형견인차 채점기준',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
          SizedBox(height: 20,),
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
                              SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  SizedBox(
                                    child: SizedBox(
                                      width: 490,
                                      child: Image(image: AssetImage('image/gunanchacos.png')),
                                    ),
                                  ),
                                  SizedBox(
                                    child: SizedBox(
                                      width: 490,
                                      child: Image(image: AssetImage('image/sohyeonggyeonincha.png')),
                                    ),
                                  ),
                                  SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('시험자격',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                          Text('- 만19세 이상으로 최초 운전면허 1,2종보통 취득후, 만 1년이상 경과되신 분'),
                                          Text('- 도로교통법 제 70조의 규정에 의한 운전면허의 결격사유에 해당하지 아니한 자'),
                                          Text('- 도로교통법시행령 제 45조(자동차등의 운전에 관하여 필요한 적성기준)의'),
                                          Text('  규정에 합격한자'),
                                          SizedBox(height: 7),

                                          Text('준비물',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                          Text('- 운전면허 신체검사표(응시원서)'),
                                          Text('- 여권용 사진 1장 최근 6개월미만 (면허증 부착용)'),
                                          Text('- 면허소지자 - 운전면허증(신분증),사진= 3x4 반명함 3장'),
                                          Text('- 면허취소자 - 운전면허증(신분증),운전경력증명서,응시원서(운전면허신체검사)'),
                                          Text('  사진= 3x4 반명함 3장'),
                                          Text('- 운전면허증 또는 신분증'),
                                          Text('- 응시료 : 25,000'),
                                          Text('- 운전면허증 발급 (국문, 영문 : 10,000원'),
                                          Text('- 모바일 운전면허증 발급 (국문, 영문 : 15,000원'),
                                          SizedBox(height: 7),

                                          Text('시험방법',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                          Text('소형 견인 트레일러 면허시험은 1톤 화물트럭에 평판형 트레일러를 연결해 '),
                                          Text('치르게 되며, 시험코스는 굴절.곡선.방향전환등 3개 코스로 이루어져 있습니다.'),
                                          SizedBox(height: 3),
                                          Text('굴절코스 : 지정시간 3분 초과시 마다 또는 검지선 접촉시마다 10점 감점'),
                                          Text('곡선코스 : 지정시간 3분 초과시 마다 또는 검지선 접촉시마다 10점 감점'),
                                          Text('방향전환코스 : 확인선을 미접촉하거나 지정시간 3분 초과시마다 또는 검지선'),
                                          Text('접촉시마다 10점 감점'),
                                          SizedBox(height: 7),

                                          Text('합격기준',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                          Text(' 각 시험 항목별 감점기준에 따라 감점한 결과 100점만점에 90점이상을 얻은 때'),
                                          SizedBox(height: 7),

                                          Text('실격기준',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.red)),
                                          Text(' 출발지시를 알고 특별한 사유없이 20초 이내에 출발(후진)하지 못한 때'),
                                          Text(' 시험과제를 어느 하나라도 이행하지 아니한 때'),
                                          Text(' 시험 중 안전사고를 일으키거나 코스를 벗어난 때'),

                                        ],
                                      ),
                                    ],
                                  ),
                                ],
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
