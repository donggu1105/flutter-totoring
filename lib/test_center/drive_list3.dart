
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';



class Drive_list3 extends StatefulWidget {
  const Drive_list3({Key? key}) : super(key: key);

  @override
  State<Drive_list3> createState() => _Screen2State();
}

class _Screen2State extends State<Drive_list3> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 5, vsync: this);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('학과/기능/도로주행'),
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
                  Tab(child: Text("학과시험",style: TextStyle(color: Colors.black))),
                  Tab(child: Text("기능시험",style: TextStyle(color: Colors.black))),
                  Tab(child: Text("연습면허 >>",style: TextStyle(color: Colors.black))),
                  Tab(child: Text("도로주행시험",style: TextStyle(color: Colors.black))),
                  Tab(child: Text("운전면허증발급",style: TextStyle(color: Colors.black))),
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
                  SingleChildScrollView(
                    child: Container(alignment: Alignment.topLeft,
                      child: Column( //학과시험
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('70점 이상',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 1종대형,대형견인,소형견인,구난차,1종보통'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 7),
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              const Text('60점 이상',style: TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 7),
                              Column(
                                children: const [
                                  Text('- 2종보통,2종소형,원동기')
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 7),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              const Text('시험자격',style: TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 13),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text('- 1종대형,대형견인,소형견인,구난차(19세 이상 1,2종보통 면허 취득후'),
                                  Text('  1년 경과한 자)'),
                                  Text('- 1,2종보통,2종소형 = 18세 이상',style: TextStyle(color: Colors.indigo),),
                                  Text('- 원동기 = 16세 이상',style: TextStyle(color: Colors.indigo),),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 7),
                          Row(crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              const Text('시험시간',style: TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 13),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 모든 필기시험시간은 40문제 40분'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 7),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              const Text('수수료',style: TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 26),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: const [
                                  Text('- 1종대형,대형견인,소형견인,구난차,1종보통,2종보통,2종소형 = 10,000원'),
                                  Text('- 원동기 = 8,000원'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 7),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              const Text('시험유형',style: TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 13),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 객관식(선다형)'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 7),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              const Text('준비물',style: TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 26),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 응시원서(신체검사 완료 또는 건강검진결과서 조회·제출)신청일로부터'),
                                  Text('  6개월 내에 모자를 벗은 상태에서 배경 없이 촬영된 3.5X4.5cm,규격의'),
                                  Text('  상반신 컬러사진 (허용되는 사진규격) 3매'),
                                  Text('- 신분증 (신분증 인정 범위)'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 7),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              const Text('시험내용',style: TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 13),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 안전운전에 필요한 교통법규 등 공개된 학과시험 문제은행 중 40문제 '),
                                  Text('  출제'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 7),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              const Text('결과발표',style: TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 13),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 시험 종료 즉시 컴퓨터 모니터에 획득 점수 및 합격 여부 표시 '),
                                  Text('- 합격 또는 불합격도장이 찍힌 응시원서를 돌려받아 본인이 보관'),
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
                              const SizedBox(width: 13),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 학과시험 최초응시 일로부터 1년 이내 학과시험에 합격하여야 함.'),
                                  Text('- 학과시험 합격일로부터 1년 이내 기능시험에 합격하여야 함.'),
                                  Text('- 1년경과 시 기존 원서 폐기 후 학과시험부터 신규 접수하여야 하며 이때'),
                                  Text('  교통안전교육 재수강은 불필요'),
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
                                  Text('응시가능',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('(언어)',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 13),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 한국어, 영어, 중국어, 베트남어'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 7),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('비문해자',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('PC학과시험',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 13),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 시험문제와 보기를 음성으로 들을 수 있는 PC학과시험 '),
                                  Text('  시험시간 총 80분,'),
                                  Text('- 민원실에서 접수 시 신청 가능'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 7),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('청각장애인',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('수화',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('PC학과시험',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 13),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('- 청각장애인이면서 비문해자를 위한 수화로 보는 PC학과시험'),
                                  const Text('  시험시간 총 80분, 민원실에서 접수 시 신청 가능'),
                                  const SizedBox(height: 20),
                                  ElevatedButton(onPressed: (){
                                    launch('https://www.safedriving.or.kr/mainCertification01M.do');},
                                      child: const Text('학과시험 방문시간 예약하기')),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30)
                        ],
                      ),
                    ),
                  ),

                  SingleChildScrollView(
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: const [
                              SizedBox(width: 10),
                              Text('1종대형',style: TextStyle(fontSize: 20,color: Colors.blueAccent,fontWeight: FontWeight.bold),),
                            ],
                          ),
                          const SizedBox(height: 7),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              const Text('준비물',style: TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 20),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 온라인 접수 또는 현장 예약 접수 후 시험 당일 응시원서, 신분증 지참'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              const Text('합격기준',style: TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 80점 이상'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 7),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('수수료',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 25,000원'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('시험코스',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 7),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 출발 > 횡단보도 > 경사로 > 굴절 > 교차로 > 곡선 > 교차로 > 방향전환> '),
                                  Text('  교차로 > 철길 > 기어변속구간 > 평행주차 > 교차로 > 종료 '),

                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('실격기준',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 7),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 특별한 사유 없이 출발선에서 30초 이내 출발하지 못한 때'),
                                  Text('- 경사로코스·굴절코스·방향전환코스·기어변속코스(자동변속기장치 '),
                                  Text('  자동차의 경우는 제외) 및 평행주차코스를 어느 하나라도 이행하지'),
                                  Text('  아니한 때'),
                                  Text('- 특별한 사유 없이 교차로 내에서 30초 이상 정차한 때'),
                                  Text('- 안전사고를 일으키거나 단 1회라도 차로를 벗어난 때'),
                                  Text('- 경사로 정지 구간 이행 후 30초를 초과하여 통과하지 못한 때 또는 경사'),
                                  Text('  로 정지 구간에서 후진하여 앞 범퍼가 경사로 사면을 벗어난 때'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('응시자격',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 7),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 19세 이상으로 제1,2종 보통면허 취득 후 1년 이상인자'),
                                ],
                              ),
                            ],
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('불합격후',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('(재응시)',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 7),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 기능시험 불합격자는(운전전문학원 검정 불합격 포함) 불합격 일로부터 '),
                                  Text('  3일 경과 후에 재 응시 가능'),
                                  Text(' 예) 1일(월요일)에 불합격하였을 경우, 4일(목요일)부터 재 응시 가능'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(width: 10),
                                  Text('1종특수(대형견인,소형견인,구난차)',style: TextStyle(fontSize: 20,color: Colors.blueAccent,fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(height: 7),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('준비물',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 20),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 온라인 접수 또는 현장 예약 접수 후 시험 당일 응시원서, 신분증 지참'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('합격기준',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 90점 이상'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('수수료',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 20),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 25,000원'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('시험코스',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 대형 견인차 : 연결·코스·분리'),
                                      Text('- 소형 견인차 : 굴절코스·곡선코스·방향전환코스'),
                                      Text('- 구난차 : 굴절코스·곡선코스·방향전환코스'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('실격기준',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 특별한 사유없이 20초 이내에 출발하지 못한 때'),
                                      Text('- 어느 하나라도 이행하지 아니한 때'),
                                      Text('- 시험 중 안전사고를 일으키거나 코스를 벗어난 때'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('응시자격',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 19세 이상으로 제1∙2종 보통면허 취득 후 1년 이상인자'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('불합격 후',style: TextStyle(fontWeight: FontWeight.bold)),
                                      Text('(재응시)',style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 기능시험 불합격자는(운전전문학원 불합격 포함) 불합격 일로부터 '),
                                      Text('  3일 경과 후에 재 응시 가능'),
                                      Text('예) 1일(월요일)에 불합격하였을 경우, 4일(목요일)부터 재 응시 가능'),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Column(
                            children: [
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  SizedBox(width: 10),
                                  Text('1,2종보통',style: TextStyle(fontSize: 20,color: Colors.blueAccent,fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 7),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('준비물',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 20),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 온라인 접수 또는 현장 예약 접수 후 시험 당일 응시원서, 신분증 지참'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('합격기준',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 80점 이상'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('수수료',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 20),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 25,000원'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('시험코스',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 주행거리 300m 이상, 운전장치 조작, 차로 준수·급정지, 경사로'),
                                      Text('- 좌·우회전, 직각 주차, 신호교차로, 전진(가속구간)'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('실격기준',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 점검이 시작될 때부터 종료될 때까지 좌석 안전띠를 착용하지 아니한 때'),
                                      Text('- 시험 중 안전사고를 일으키거나 차의 바퀴 어느 하나라도 연석을 접촉한'),
                                      Text('  때'),
                                      Text('- 시험관의 지시나 통제를 따르지 않거나 음주, 과로, 마약·대마 등 약물 등'),
                                      Text('  의 영향으로 정상적인 시험 진행이 어려운 때'),
                                      Text('- 특별한 사유 없이 출발 지시 후 출발선에서 30초 이내 출발하지 못한 때'),
                                      Text('- 각 시험 코스를 어느 하나라도 시도하지 않거나 제대로 이행하지 않을 때'),
                                      Text('  (예: 경사로에서 정지하지 않고 통과, 직각 주차에서 차고에 진입해서'),
                                      Text('  확인선을 접촉하지 않음, 가속코스에서 기어변속을 하지 않음)'),
                                      Text('- 경사로 정지 구간 이행 후 30초를 초과하여 통과하지 못한 때 또는 경사'),
                                      Text('  로 정지구간에서 후방으로 1미터 이상 밀린 때'),
                                      Text('- 신호 교차로에서 신호위반을 하거나 또는 앞 범퍼가 정지선을 넘어간 때'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('응시자격',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 18세 이상'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('주의사항',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 학과시험 합격일로부터 1년 이내 기능 시험에 합격하여야 함.'),
                                      Text('- 1년경과 시 기존 원서 폐기 후 학과시험부터 신규 접수하여야 하며'),
                                      Text('  이때 응시 전 교통안전교육 재수강은 불필요'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('불합격 후 ',style: TextStyle(fontWeight: FontWeight.bold)),
                                      Text('(재응시)',style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 기능시험 불합격자는(운전전문학원 불합격 포함) 불합격 일로부터 '),
                                      Text('  3일경과 후에 재 응시 가능 '),
                                      Text('예) 1일(월요일)에 불합격하였을 경우, 4일(목요일)부터 재 응시 가능'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('외국어 음성,화면 지원 서비스 제공',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 영어,중국어'),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Column(
                            children: [
                              Row(
                                children: const [
                                  SizedBox(width: 10),
                                  Text('2종소형(125cc초과 이륜자동차)',style: TextStyle(fontSize: 20,color: Colors.blueAccent,fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(height: 7),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('준비물',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 20),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 온라인 접수 또는 현장 예약 접수 후 시험 당일 응시원서, 신분증 지참'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('합격기준',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 90점 이상'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('수수료',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 20),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 14,000원'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('시험코스',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 굴절코스, 곡선코스, 좁은길코스, 연속진로전환코스'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('실격기준',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 운전미숙으로 20초 이내에 출발하지 못한 때'),
                                      Text('- 시험 과제를 하나라도 이행하지 아니한 때'),
                                      Text('- 시험 중 안전사고를 일으키거나 코스를 벗어난 때'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('응시자격',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 18세 이상'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('불합격 후',style: TextStyle(fontWeight: FontWeight.bold)),
                                      Text('(재응시)',style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  const SizedBox(width: 10),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 기능시험 불합격자는(운전전문학원 불합격 포함) 불합격 일로부터 '),
                                      Text('  3일경과 후에 재 응시 가능 '),
                                      Text('예) 1일(월요일)에 불합격하였을 경우, 4일(목요일)부터 재 응시 가능'),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 20),
                          Column(
                            children: [
                              Row(
                                children: const [
                                  SizedBox(width: 10),
                                  Text('제2종 원동기장치 자전거(125cc이하))',style: TextStyle(fontSize: 20,color: Colors.blueAccent,fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(height: 7),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('준비물',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 20),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 온라인 접수 또는 현장 예약 접수 후 시험 당일 응시원서, 신분증 지참'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('합격기준',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 10),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 90점 이상'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('수수료',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 20),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 10,000원'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('시험코스',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 굴절코스, 곡선코스, 좁은길코스, 연속진로전환코스'),
                                      Text('※ 다륜형원동기장치자전거 굴절코스, 곡선코스만 진행'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('실격기준',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 운전미숙으로 20초 이내에 출발하지 못한 때'),
                                      Text('- 시험 과제를 하나라도 이행하지 아니한 때'),
                                      Text('- 시험 중 안전사고를 일으키거나 코스를 벗어난 때'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  const Text('응시자격',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(width: 8),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('- 16세 이상'),
                                    ],
                                  ),
                                ],
                              ),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const SizedBox(width: 10),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: const [
                                      Text('불합격 후',style: TextStyle(fontWeight: FontWeight.bold)),
                                      Text('(재응시)',style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  const SizedBox(height: 7),
                                  Column(crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text('- 기능시험 불합격자는(운전전문학원 불합격 포함) 불합격 '),
                                      const Text('  일로부터 3일경과 후에 재 응시 가능 '),
                                      const Text('  예) 1일(월요일)에 불합격하였을 경우, 4일(목요일)부터 재 응시 가능'),
                                      SizedBox(height: 7),
                                      ElevatedButton(onPressed: (){
                                        launch('https://www.safedriving.or.kr/rerrest/rerrestScheduleViewM.do?menuCode=MN-MO-1121');},
                                          child: const Text('기능시험 예약하기')),
                                    ],
                                  ),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                  Container(alignment: Alignment.topLeft,
                    child: Column( //연습면허
                      children: [
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10),
                            const Text('준비물 및 수수료',style: TextStyle(fontWeight: FontWeight.bold)),
                            const SizedBox(width: 15),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('- 응시원서, 신분증, 수수료 4,000원'),
                                Text('- 대리접수 : 대리인 신분증(원본), 위임장'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 10),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('연습면허 교환발급',style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('유효기간 산정안내',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(width: 7),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('- 연습면허의 유효기간은 1년'),
                                Text('- 최초 1종 연습면허 소지자가 2종 보통 연습 면허로 격하하여'),
                                Text('  교환 발급 시 최초 발급받은 연습면허 잔여기간을 유효기간으'),
                                Text('  로 하는 연습 면허가 발급됨'),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  SingleChildScrollView(
                    child: Container(alignment: Alignment.topLeft,
                      child: Column( //도로주행시험
                        children: [
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              const Text('면허종별',style: TextStyle(fontWeight: FontWeight.bold)),
                              const SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 1종 보통/2종 보통(수동, 자동)'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 5,),

                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('준비물',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 온라인 접수 또는 현장 예약 접수'),
                                  Text('- 시험 당일 연습면허 발급·부착된 응시원서, 신분증 지참'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('합격기준',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 7),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 70점 이상 시 합격'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('수수료',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 20),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 30,000원'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 5,),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('시험코스',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 7),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 총 연장거리 5km 이상인 4개 코스 중 추첨을 통한 1개 코스 선택'),
                                  Text('- 내비게이션 음성 길 안내'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('시험내용',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 7),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 긴급자동차 양보, 어린이보호구역, 지정 속도 위반 등 '),
                                  Text('  안전운전에 필요한 57개 항목을 평가'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('실격기준',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 7),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 3회 이상 “출발 불능”, “클러치 조작 불량으로 인한 엔진 정지”,“급브레'),
                                  Text('  이크 사용”,'),
                                  Text('  “급조작·급출발” 또는 그 밖의 사유로 운전능력이 현저하게 부족한 것'),
                                  Text('  으로 인정 할 수 있는 행위를 한 경우'),
                                  Text('- 안전거리 미확보나 경사로에서 뒤로 1미터 이상 밀리는 현상 등 운전'),
                                  Text('  능력 부족으로 교통사고를 일으킬 위험이 현저한 경우 또는 교통사고'),
                                  Text('  를 야기한 경우'),
                                  Text('- 음주, 과로, 마약, 대마 등 약물의 영향 이나 휴대전화 사용 등으로 정상'),
                                  Text('  적으로 운전하지 못할'),
                                  Text('  우려가 있거나 교통안전과 소통을 위한 시험관의 지시 및 통제에 불응'),
                                  Text('  한 경우'),
                                  Text('- 신호 또는 지시에 따르지 않은 경우'),
                                  Text('- 보행자 보호의무 등을 소홀히 한 경우'),
                                  Text('- 어린이 보호구역, 노인 및 장애인 보호구역에 지정되어 있는 최고 속도'),
                                  Text('  를 초과한 경우'),
                                  Text('- 도로의 중앙으로부터 우측 부분을 통행하여야 할 의무를 위반한 경우'),
                                  Text('- 법령 또는 안전표지 등으로 지정되어 있는 최고 속도를 시속 10킬로미'),
                                  Text('  터 초과한 경우'),
                                  Text('- 긴급자동차의 우선통행 시 일시정지하거나 진로를 양보하지 않은 경우'),
                                  Text('- 어린이 통학버스의 특별보호의무를 위반한 경우'),
                                  Text('- 시험시간 동안 좌석안전띠를 착용하지 않은 경우'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('주의사항',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 7),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 연습운전면허 유효기간(발급일로부터 1년) 이내 도로주행시험에 '),
                                  Text('  합격하여야 함.'),
                                  Text('- 연습운전면허 유효기간이 지났을 경우, 도로주행시험 접수가 불'),
                                  Text('  가능하며 학과시험, 기능 시험에 재응시하여야 함.'),
                                  Text('  (응시 전 교통안전교육은 재수강 불필요)'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 5),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const SizedBox(width: 10),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('외국어 음성',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('지원서비스',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('(코스안내)제공',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),
                              const SizedBox(width: 7),
                              Column(crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('- 영어'),
                                  const SizedBox(height: 50),
                                  ElevatedButton(onPressed: (){
                                    launch('https://www.safedriving.or.kr/rerrest/rerrestScheduleViewM.do?menuCode=MN-MO-1121');},
                                      child: const Text('도로주행시험 예약하기')),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                  Container(alignment: Alignment.topLeft,
                    child: Column(
                      // crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(width: 3),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: const [
                            Text('※ 각 응시 종별(1종 대형, 1종 보통, 1종 특수, 2종 보통, 2종 소형,2종원동기장치'),
                            Text('     자전거)에 따른 응시과목을 최종 합격했을 경우 발급'),
                          ],
                        ),
                        const SizedBox(height: 10),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('준비물 및 ',style: TextStyle(fontWeight: FontWeight.bold)),
                                Text('(수수료)',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(width: 3),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('- 응시원서, 신분증, 수수료 4,000원'),
                                Text('- 대리접수 : 대리인 신분증(원본), 위임장'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),

                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('발급대상',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('- 연습면허의 유효기간은 1년'),
                                Text('- 최초 1종 연습면허 소지자가 2종 보통 연습 면허로 격하하여'),
                                Text('  교환 발급 시 최초 발급받은 연습면허 잔여기간을 유효기간으'),
                                Text('  로 하는 연습 면허가 발급됨'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('발급장소',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('- 운전면허시험장'),
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(height: 5),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const SizedBox(width: 10),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text('구비서류',style: TextStyle(fontWeight: FontWeight.bold)),
                              ],
                            ),
                            const SizedBox(width: 10),
                            Column(crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text('- 최종 합격한 응시원서, 신분증, 최근 6개월 이내 촬영한 컬러 사진 '),
                                const Text('  (규격 3.5cm*4.5cm) 1매,'),
                                const Text('  수수료 : 운전면허증(국문,영문) 10,000원, 모바일 운전면허증(국문,'),
                                const Text('  영문) 15,000원'),
                                const Text('- 대리접수 : 대리인 신분증, 위임장'),
                                const SizedBox(height: 10),
                                ElevatedButton(onPressed: (){
                                  launch('https://www.safedriving.or.kr/mainM.do');},
                                    child: const Text('운전면허증 발급')),
                              ],
                            ),
                          ],
                        ),
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
