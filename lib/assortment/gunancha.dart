import 'package:flutter/material.dart';

class Gunancha extends StatefulWidget {
  const Gunancha({Key? key}) : super(key: key);

  @override
  State<Gunancha> createState() => _GunanchaState();
}

class _GunanchaState extends State<Gunancha> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 1, vsync: this);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('구난차(렉카) 채점기준'),
      ),

      body: Column(
        children: [
          SizedBox(height: 20,),
          //Text('구난차(렉카) 채점기준',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),),
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
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    SizedBox(
                                      child: SizedBox(
                                        width: 400,
                                        child: Image(image: AssetImage('image/gunanchacos1.png')),
                                      ),
                                    ),
                                    SizedBox(
                                      child: SizedBox(
                                        width: 400,
                                        child: Image(image: AssetImage('image/gunancha1.png')),
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Text('시험자격',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                              Text('만19세 이상으로 최초 운전면허 1,2종보통 취득후, 만 1년이상 경과되신 분'),
                                              Text('도로교통법 제 70조의 규정에 의한 운전면허의 결격사유에 해당하지 아니한 자'),
                                              Text('도로교통법시행령 제 45조(자동차등의 운전에 관하여 필요한 적성기준)의 규정에 합격한자'),
                                              SizedBox(height: 7),

                                              Text('준비물',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                              Text('운전면허 신체검사표(응시원서)'),
                                              Text('여권용 사진 1장 최근 6개월미만 (면허증 부착용)'),
                                              Text('면허소지자 - 운전면허증(신분증),사진= 3x4 반명함 3장, 운전경력증명서,응시원서(운전면허신체검사)'),
                                              Text('운전면허증 또는 신분증'),
                                              Text('응시료 : 25,000'),
                                              Text('운전면허증 발급 (국문, 영문 : 10,000원'),
                                              Text('모바일 운전면허증 발급 (국문, 영문 : 15,000원'),
                                              SizedBox(height: 7),

                                              Text('시험방법',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                              Text('1. 견인차에 피견인차를 5분 이내에 연결하고 굴절코스와 곡선코스를 검지선 접촉없이 전진으로 통과한 후 다시 피견인차를 5분 이내에 분리하여 방향 전환 코스를 검지선 접촉없이 통과'),
                                              Text('2. 각 코스 지정시간은 3분 이내'),
                                              Text('3. 총 지정시간은 19분 이내'),
                                              SizedBox(height: 7),

                                              Text('합격기준',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                              Text('각 시험 항목별 감점기준에 따라 감점한 결과 100점 만점에 90점이상을 얻은 때'),
                                              SizedBox(height: 7),

                                              Text('실격기준',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.red)),
                                              Text('출발지시를 알고 특별한 사유없이 20초 이내에 출발 (후진)하지 못한 때'),
                                              Text('시험과제를 어느 하나라도 이행하지 아니한 때'),
                                              Text('시험 중 안전사고를 일으키거나 코스를 벗어난 때'),

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
