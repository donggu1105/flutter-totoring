import 'package:flutter/material.dart';

class Daehyeong extends StatefulWidget {
  const Daehyeong({Key? key}) : super(key: key);

  @override
  State<Daehyeong> createState() => _DaehyeongState();
}

class _DaehyeongState extends State<Daehyeong> with TickerProviderStateMixin {

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
          Text('1종대형면허 채점기준',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
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
                                      child: Image(image: AssetImage('image/daehyeongcos.png')),
                                    ),
                                  ),
                                  SizedBox(height: 15,),
                                  SizedBox(
                                    child: SizedBox(
                                      width: 490,
                                      child: Image(image: AssetImage('image/daehyong.png')),
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
                                          Text('좌측방향지시등을 켜고 출발 한다. 삐소리가 나면 바로 방향지시등을 끈다 '),
                                          Text('횡단보도 일시정지 후 약 3초 후에 출발한다. 언덕 위.아래 흰색 정지선 안에'),
                                          Text('정지후 기어를 1단으로 변속하고 약 3초 후에 출발한다. 그 다음은 굴절코스'),
                                          Text('다음은 교차로 녹색신호에 직진하여 곡선코스로 진입. 통과후 교차로 녹색신호'),
                                          Text('시 직진한 다음 방향전환코스로 진입. 통과후 교차로에서 좌회전 신호를 받고'),
                                          Text('좌회전 그 다음은 철길 건널목 정지선 정지 후 약 3초 후에 출발'),
                                          Text('다음은 기어변속구간 입니다. 2단으로 출발해서 20킬로를 넘기면 바로 3단변속'),
                                          Text('후 바로 속도를 20킬로 미만으로 줄이고 기어를 2단으로 변속한다. 다음은'),
                                          Text('주차코스는 후진으로 진입.통과후 교차로 우회전(우측방향지시등 켜고)'),
                                          Text('종료직전 약 5m이전에 우측방향지시등을 켜고 종료한다.'),
                                          Text('전체 코스 이동중 돌발상황이 나옵니다.(기어변속구간 제외) 급정지 하시고'),
                                          Text('최대한 빨리 비상등을 켜세요. 그리고 돌발 상황이 지나면 비상등을 끄고 출발'),
                                          Text('약 3초후 출발 하세요.바로 출발하면 감점될수 있습니다.'),
                                          SizedBox(height: 3),
                                          Text('굴절코스 : 지정시간 2분 초과시 마다 또는 검지선 접촉시마다 5점 감점'),
                                          Text('곡선코스 : 지정시간 2분 초과시 마다 또는 검지선 접촉시마다 5점 감점'),
                                          Text('방향전환코스 : 확인선을 미접촉하거나 지정시간 2분 초과시마다 또는 검지선'),
                                          Text('접촉시마다 5점 감점'),
                                          Text('주차코스 : 확인선을 미접촉하거나 지정시간 2분 초과시마다 또는 검지선 '),
                                          Text('접촉시마다 5점 감점,주차 확인선 미접촉시 10점 감점(앞.뒷바퀴가 흰색'),
                                          Text('주차선 미접촉시)'),
                                          SizedBox(height: 7),

                                          Text('합격기준',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17)),
                                          Text(' 각 시험 항목별 감점기준에 따라 감점한 결과 100점만점에 80점이상을 얻은 때'),
                                          SizedBox(height: 7),

                                          Text('실격기준',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 17,color: Colors.red)),
                                          Text(' 1) 특별한 사유없이 출발선에서 30초 이내 출발하지 못한 때'),
                                          Text(' 2) 경사로코스,굴절코스,곡선코스,방향전환코스,기어변속코스 및'),
                                          Text('    평행주차 코스를 어느 하나라도 이행하지 아니한 때'),
                                          Text(' 3) 특별한 사유없이 교차로를 30초 이내에 통과하지 아니한 때'),
                                          Text(' 4) 시험중 안전사고를 일으키거나 단 1회라도 차로를 벗어날 때'),
                                          Text(' 5) 경사로 정지구간 이행 후 30초를 초과하여 경사구간을 통과하지 못한 때 또는'),
                                          Text('    경사정지구간에서 후진하여 앞 범퍼가 경사로 사면을 벗어난 때'),
                                          Text(' 6) 주차 브레이크를 해제하지 않고 주행한 때'),
                                          Text(' 7) 안전벨트를 착용하지 않고 주행한 때'),

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
