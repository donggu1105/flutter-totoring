import 'package:flutter/material.dart';

class Leejonsohyeong extends StatefulWidget {
  const Leejonsohyeong({Key? key}) : super(key: key);

  @override
  State<Leejonsohyeong> createState() => _LeejonsohyeongState();
}

class _LeejonsohyeongState extends State<Leejonsohyeong> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 1, vsync: this);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('2종소형.원동기 채점기준'),
      ),

      body: Column(
        children: [
          SizedBox(height: 20),
          //Text('2종소형(원동기) 채점기준',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
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
                                        child: Image(image: AssetImage('image/leejongsohyeongcos1.png')),
                                      ),
                                    ),
                                    SizedBox(height: 20),
                                    SizedBox(
                                      child: SizedBox(
                                        width: 400,
                                        child: Image(image: AssetImage('image/leejongsohyeong1.png')),
                                      ),
                                    ),
                                    SizedBox(height: 15),
                                    Row(
                                      children: [
                                        Expanded(
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: const [
                                              Text('시험자격',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                              Text('원동기 : 만 16세이상'),
                                              Text('2종소형 : 만 18세이상'),
                                              Text('도로교통법 제 70조의 규정에 의한 운전면허의 결격사유에 해당하지 아니한 자'),
                                              Text('도로교통법시행령 제 45조(자동차등의 운전에 관하여 필요한 적성기준)의 규정에 합격한자'),
                                              SizedBox(height: 7),

                                              Text('준비물',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                              Text('운전면허 신체검사표(응시원서)'),
                                              Text('여권용 사진 1장 최근 6개월미만 (면허증 부착용)'),
                                              Text('면허소지자 - 운전면허증(신분증),사진= 3x4 반명함 3장'),
                                              Text('면허취소자 - 운전면허증(신분증),운전경력증명서, 응시원서(운전면허신체검사) 사진= 3x4 반명함 3장'),
                                              Text('운전면허증 또는 신분증'),
                                              Text('응시료 : 2종소형 = 14,000원, 원동기 = 10,000원'),
                                              Text('운전면허증 발급 (국문, 영문 : 10,000원)'),
                                              Text('모바일 운전면허증 발급 (국문, 영문 : 15,000원)'),
                                              SizedBox(height: 7),

                                              Text('시험방법',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                              Text('굴절코스 전진 → 곡선코스 전진 → 좁은 길 코스 통과 → 연속진로전환 코스 통과'),
                                              SizedBox(height: 7),

                                              Text('합격기준',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                              Text('각 시험 항목별 감점기준에 따라 감점한 결과 100점 만점에 90점이상을 얻은 때'),
                                              SizedBox(height: 7),

                                              Text('실격기준',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.red)),
                                              Text('운전미숙으로 20초 이내에 출발하지 못한 때'),
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
