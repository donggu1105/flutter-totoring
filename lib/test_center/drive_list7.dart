
import 'package:flutter/material.dart';



class Drive_list7 extends StatefulWidget {
  const Drive_list7({Key? key}) : super(key: key);

  @override
  State<Drive_list7> createState() => _Screen2State();
}

class _Screen2State extends State<Drive_list7> with TickerProviderStateMixin {

  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 3, vsync: this);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orange,
        title: const Text('준비물'),
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
                  Tab(child: Text("면허시험 준비물",style: TextStyle(color: Colors.black))),
                  Tab(child: Text("신분증 인정 범위",style: TextStyle(color: Colors.black))),
                  Tab(child: Text("허용되는 사진 규격",style: TextStyle(color: Colors.black))),
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
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 10),
                              Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: const [
                                      Text('신규응시',style: TextStyle(fontWeight: FontWeight.bold)),
                                      Text('(신체검사)',style: TextStyle(fontWeight: FontWeight.bold)),
                                    ],
                                  ),
                                  const SizedBox(width: 7),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('- 수수료 '),
                                          Text('  신체검사료 (시험장 내 신체검사장 기준)1종 대형/특수면허 7,000원'),
                                          Text('  기타 면허 6,000원'),
                                          SizedBox(height: 3),
                                          Text('- 준비물 및 주의사항 : 신분증 6개월 이내 촬영한(규격 3.5cmx4.5cm)'),
                                          Text('  3매'),
                                          SizedBox(height: 3),
                                          Text('※ 병원 신체검사 외 건강검진결과 및 징병신체검사서 확인(시험장 및'),
                                          Text('     경찰서 방문 시 행정정보 공동이용 동의 시 활용 가능) 진단서로 신체'),
                                          Text('     검사 후 대리접수 가능(제1종 보통,제2종 운전면허에 한함.'),
                                          SizedBox(height: 3),
                                          Text('※ 병원 신체검사 수수료는 병원마다 상이함',style: TextStyle(color: Colors.red)),
                                          SizedBox(height: 3),
                                          Text('※ 강릉, 태백, 문경, 광양, 충주, 춘천면허시험장 내에는 신체 검사장이'),
                                          Text('     없으므로 가까운 병원에서 신체검사를 받으시기 바랍니다.'),
                                          SizedBox(height: 3),
                                          Text('※ 한쪽 눈이 보이지 않는 분이 1종 보통면허 시험에 응시할,경우 안과'),
                                          Text('     의사의 진단서 필요 (세부기준 고객지원센터 1577-1120 문의)'),
                                          SizedBox(height: 3),
                                          Text('- 인터넷접수 및 대리접수 가능여부'),
                                          Text('  인터넷 : 불가'),
                                          Text('  대리 : 불가, 본인신체검사'),
                                        ],
                                      ),
                                    ],
                                  ),
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
                                  Text('학과시험',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('(재응시'),
                                  Text(' 포함)'),
                                ],
                              ),

                              const SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 수수료 : 10,000원, 원동기 8,000원'),
                                  SizedBox(height: 3),
                                  Text('- 준비물 및 주의사항 : 신분증, 응시원서'),
                                  SizedBox(height: 3),
                                  Text('- 인터넷 예약 및 대리접수 가능여부'),
                                  Text('  인터넷 예약 : 가능'),
                                  Text('  대리 : 불가'),
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
                                  Text('기능시험',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('(재응시'),
                                  Text(' 포함)'),
                                ],
                              ),
                              const SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 수수료',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('  대형/특수 25,000 원'),
                                  Text('  1·2종 보통 25,000원'),
                                  Text('  2종 소형 14,000원,원동기 10,000원'),
                                  SizedBox(height: 3),
                                  Text('- 준비물 및 주의사항 : 신분증, 응시원서'),
                                  SizedBox(height: 3),
                                  Text('- 인터넷접수 및 대리접수 가능여부'),
                                  Text('  인터넷 : 가능'),
                                  Text('  대리 : 가능 (대리 : 위임장, 대리인·위임자 신분증, 응시원서)'),
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
                                  Text('도로주행',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('시험',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('(재응시'),
                                  Text(' 포함)'),
                                ],
                              ),

                              const SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 수수료 : 30,000원'),
                                  SizedBox(height: 3),
                                  Text('- 준비물 및 주의사항 : 신분증, 응시원서'),
                                  SizedBox(height: 3),
                                  Text('- 인터넷접수 및 대리접수 가능여부'),
                                  Text('  인터넷 : 가능'),
                                  Text('  대리 : 가능 (대리 : 위임장, 대리인·위임자 신분증, 응시원서)'),
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
                                  Text('면허발급',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),

                              const SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 수수료'),
                                  Text('  운전면허증(국문,영문) 10,000원'),
                                  Text('  모바일 운전면허증(국문,영문) 15,000원'),
                                  SizedBox(height: 3),
                                  Text('- 준비물 및 주의사항 : 신분증, 응시원서, 6개월 이내 촬영한 컬러사진 '),
                                  Text('  (규격 3.5cm*4.5cm) 1매'),
                                  SizedBox(height: 3),
                                  Text('※ 기존 면허증 소지자는 구 면허증 반납'),
                                  SizedBox(height: 3),
                                  Text('- 인터넷접수 및 대리접수 가능여부'),
                                  Text('  인터넷 : 불가'),
                                  Text('  대리 : 가능 (대리 : 위임장, 대리인·위임자 신분증, 응시원서)'),
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
                                  Text('연습면허',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('(재교부)',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),

                              const SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 수수료 4,000원'),
                                  SizedBox(height: 3),
                                  Text('- 준비물 및 주의사항 : 신분증, 응시원서'),
                                  SizedBox(height: 3),
                                  Text('- 인터넷접수 및 대리접수 가능여부'),
                                  Text('  인터넷 : 가능 (연습면허증 재교부는 인터넷 불가)'),
                                  Text('  대리 : 가능 (대리 : 위임장, 대리인·위임자 신분증, 응시원서)'),
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
                                  Text('응시원서',style: TextStyle(fontWeight: FontWeight.bold)),
                                  Text('분실 ',style: TextStyle(fontWeight: FontWeight.bold)),
                                ],
                              ),

                              const SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  Text('- 수수료 : 1,000원, 연습면허 재발급 시 4,000원'),
                                  SizedBox(height: 3),
                                  Text('- 준비물 및 주의사항 : 신분증, 6개월 이내 촬영한 '),
                                  Text('  컬러 사진 (규격 3.5cm*4.5cm) 1매'),
                                  SizedBox(height: 3),
                                  Text('- 인터넷접수 및 대리접수 가능여부'),
                                  Text('  인터넷 : 불가'),
                                  Text('  대리 : 가능 (대리 : 위임장, 대리인·위임자 신분증)'),
                                ],
                              ),
                            ],
                          ),
                          const SizedBox(height: 30),
                        ],
                      ),
                    ),
                  ),
                  SingleChildScrollView( //신분증 인정범위
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Row(
                            children: [const SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  const Text('본인 여부 확인을 위해 사용 가능한 신분증면서 등의 종류',style: TextStyle(fontSize: 20)),
                                  const Text('해당 증명서 자체만으로 신분확인이 가능한 신분 증명서 등',style: TextStyle(fontSize: 17)),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      const SizedBox(width: 7),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('＊주민등록증(주민등록증 모바일 확인 서비스,사진에 간인 후 주요 기재사항에 '),
                                          Text('   테이프가 부착된 주민등록증 발급 신청 확인서),재외국민 주민등록증,운전면'),
                                          Text('   허증,여권신청 확인서), 재외국민 주민등록증,운전면허증, 여권 청소년증(유효'),
                                          Text('   기간 이내)'),
                                          SizedBox(height: 5),
                                          Text('＊ 주민등록번호가 기재되지 않은 여권을 제출받는 경우'),
                                          Text(' - 신분확인을 위해 주민등록번호가 필요함을 고지 후,본인의 동의를 얻어 지문'),
                                          Text('   인식 시스템을 통해 본인확인'),
                                          SizedBox(height: 5),
                                          Text(' - 미성년자 및 지문대조 관련 본인 동의가 없을 시,여권법 제23조의 2 제3항에'),
                                          Text('   따른 여권정보증명서를 제출받아 본인확인'),
                                          SizedBox(height: 5),
                                          Text('※ 여권정보확인서가 없는 경우 행망조회(행정정보공동이용 동의서 제출)를 통'),
                                          Text('    한 처리'),
                                          Text('＊ 사진,생년월일, 성명이 기재된 여타 공공기관 발행 신분증 등'),
                                          Text('   예) 공무원증,선원수첩,국가기술자격증,학생증(재학증명서 첨부),장애인 복지'),
                                          Text('   카드, 전역증(전역 후 1년이내),외국인 등록증,외국국적 동포 국내거소신고증'),
                                          Text('   국가보훈처장 → 국가유공자증 등 10종'),
                                          SizedBox(height: 5),
                                          Text('＊ 교정공무원이 수용자를 대리할 경우 교정기관장이 발행한 수용 증명서'),
                                          Text(' - 사진,생년월일,성명이 명확하게 기재되어 있고 공공기관의 장이 발행한 것에'),
                                          Text('   한함'),
                                          SizedBox(height: 3),
                                          Text(' - 유효기간이 명시되어 있는 신분증명서인 경우 유효기간이 경과하지 아니할 것'),
                                          Text('   (여권, 주민등록증 발급신청 확인서 등)'),
                                          SizedBox(height: 3),
                                          Text(' - 상기 제출한 신분증 상의 사진이 본인과 현저히 다르거나 손괴 되어 본인 확인'),
                                          Text('   이 곤란한 경우 신분확인이 가능한 여타 신분 증명서 등을 제출하도록 하되, 본'),
                                          Text('   인이 동의하는 경우 지문 조회 가능'),
                                        ],
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 30),
                                  Row(
                                    children: const [SizedBox(width: 5),
                                      Text('추가 증빙자료가 필요한 신분증의 종류 및 신분확인 절차',style: TextStyle(fontSize: 20)),
                                    ],
                                  ),
                                  const SizedBox(height: 10),
                                  Row(
                                    children: [const SizedBox(width: 7),
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('- 사진,생년월일, 이름이 식별곤란하거나 동일인 여부가 의심되는 경우'),
                                          SizedBox(height: 3),
                                          Text('- 신분확인이 가능한 신분증명서 등을 제출하도록 하되, 사진, 생년월일, 이름의 식'),
                                          Text('  별이 어렵거나 위조 의심, 사진이 본인과 다른 사람으로 판단되는 경우 등 본인'),
                                          Text('  확인이 어려운 경우 본인의 동의를 얻어 지문 조회 등의 방법으로 신분확인'),
                                          SizedBox(height: 3),
                                          Text('- 주민등록증이 발급되지 아니하여 지문 정보가 없는 미성년자가 원동기장치자전'),
                                          Text('  거 면허시험에 응시하는 경우'),
                                          SizedBox(height: 3),
                                          Text('- 사진, 생년월일, 이름이 식별곤란하거나 동일인 여부가 의심되어 지문 조회 하였음'),
                                          Text('  에도 지문 훼손 또는 전산 상 지문누락으로 확인되지 않은 경우: 사진, 생년월일,'),
                                          Text('  이름이 기재된 신분증 외에 주민등록번호 뒷자리를 확인할 수 있는 국가기관 발행'),
                                          Text('  의 증빙자료를 제출받아 신분확인'),
                                          SizedBox(height: 3),
                                          Text('- 신분증명서 미소지자의 경우 본인 동의 시 지문으로 조회 가능하나, 지문이 조회되'),
                                          Text('  지 않는 경우 신분증명서 제출을 요구할 수 있습니다.'),
                                          SizedBox(height: 3),
                                          Text('- 단, 시도지부 안전교육부에서는 지문 조회가 불가합니다.'),
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ],
                          ),const SizedBox(height: 50,),
                        ],
                      ),
                    ),
                  ),

                  SingleChildScrollView(//허용되는 사진규격
                    child: Container(
                      alignment: Alignment.topLeft,
                      child: Column(
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 7),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  const Text('  운전면허증 선명도 향상을 위해 운전면허증 제작용 사진의 표준규격을 마련 '),
                                  const Text('  하였습니다.'),
                                  const SizedBox(height: 3),
                                  const Text('  아래 표준규격을 참고, 표준규격에 맞는 사진을 제출하시기 바랍니다.'),
                                  const SizedBox(height: 15),
                                  const Text('＊표준 사진(이미지 유형)',style: TextStyle(fontWeight: FontWeight.bold)),
                                  const SizedBox(height: 15),
                                  const SizedBox(
                                    child: SizedBox(
                                      width: 465,
                                      child: Image(image: AssetImage('image/poto.png')),
                                    ),
                                  ),
                                  const SizedBox(height: 15),
                                  Row(
                                    children: [
                                      Column(
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: const [
                                          Text('＊인화 사진 제출 시 표준규격'),
                                          Text(' -  3.5cm × 4.5cm 탈모, 상반신, 무 배경, 6개월 이내 촬영한 컬러 사진'),
                                          Text(' - 복사, 포토샵 등으로 수정하지 않은 사진'),
                                          Text(' - 얼굴 방향은 정면을 응시하고 기울어지지 않은 사진'),
                                          Text(' - 색안경 착용 등 눈을 가리지 않은 사진'),
                                          SizedBox(height: 5),
                                          Text('＊ 사진인화용지에 인화된 사진만 허용(일반 용지 인쇄 사진은 면허증 발급 시'),
                                          Text('   해상도가 떨어짐)'),
                                          Text(' - 250킬로바이트(KB) 이하의 JPG파일로 저장'),
                                          Text(' - 가로 350, 세로 450픽셀'),
                                          Text(' - 아래 항목의 표준 규격을 준수할 것'),
                                          Text('  †여권 사진의 경우, 외교부 여권과에서 제공하는 여권사진 규격 참고'),
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
