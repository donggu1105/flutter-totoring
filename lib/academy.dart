import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';


class AcaDemy extends StatefulWidget {
  AcaDemy({Key? key}) : super(key: key);

  @override
  State<AcaDemy> createState() => _Screen2State();
}

class _Screen2State extends State<AcaDemy> with TickerProviderStateMixin {



  //팝업창 ↓↓↓
  void showPopup(context,name,phone,address,type){ //이미지 넣어야 함
    showDialog(
      context: context,
      builder: (context){
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.7,
            height: 380,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: Column( //상호
              children: [

                // ClipRRect(
                //   borderRadius: BorderRadius.circular(10),
                //   child: Image.asset(
                //     image,
                //     width: 200,
                //     height: 200,
                //   ),
                // ),
                SizedBox(width: 500,
                  height: 70,
                ),
                Text(name,style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                ),

                SizedBox(height: 25,),
                Padding(//종별
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    type,
                    maxLines: 4,
                    style: const TextStyle(
                      fontSize: 15,
                      color: Colors.grey,
                    ),
                    textAlign: TextAlign.center,
                  ),
                ),
                Padding(//전화번호
                  padding: EdgeInsets.all(8),
                  child: ElevatedButton(
                    style: TextButton.styleFrom(
                      padding: EdgeInsets.symmetric(horizontal: 48,vertical: 12),
                      textStyle:  TextStyle(fontSize: 24),
                    ),
                    child: Text('전화걸기'),
                    onPressed: ()async{
                      launch('tel://$phone');
                    },

                  ),
                ),

                Padding( //주소
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    address,
                    maxLines: 3,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.grey[500],
                    ),
                  ),
                ),

                SizedBox(height: 20,),
                ElevatedButton.icon(
                  onPressed: (){
                    Navigator.pop(context);
                  },
                  icon: const Icon(Icons.close),
                  label: const Text('닫기'),
                ),
              ],
            ),
          ),
        );
      },
    );
  } //팝업창 /운전전문학원
  // void showPopup1(context,name,phone,address,type){
  //   showDialog(
  //     context: context,
  //     builder: (context){
  //       return Dialog(
  //         child: Container(
  //           width: MediaQuery.of(context).size.width * 0.9,
  //           height: 800,
  //           decoration: BoxDecoration(
  //               borderRadius: BorderRadius.circular(10),
  //               color: Colors.white
  //           ),
  //           child: Column(
  //             children: [
  //               //ClipRRect(
  //               //borderRadius: BorderRadius.circular(10),
  //               //child: Image.asset(
  //               //image,
  //               // width: 200,
  //               // height: 200,
  //               //),
  //               //)
  //               const SizedBox(
  //                 height: 70,
  //               ),
  //               Text(name,style: const TextStyle( //상호
  //                   fontSize: 20,
  //                   fontWeight: FontWeight.bold,
  //                   color: Colors.grey),
  //               ),
  //               SizedBox(height: 25,),
  //               Padding(
  //                 padding: const EdgeInsets.all(8),
  //                 child: Text( //종별
  //                   type,
  //                   maxLines: 4,
  //                   style: const TextStyle(
  //                     fontSize: 15,
  //                     color: Colors.grey,
  //                   ),
  //                   textAlign: TextAlign.center,
  //                 ),
  //               ),
  //               Padding(//전화번호
  //                 padding: const EdgeInsets.all(8),
  //                 child: Text(
  //                   phone,
  //                   maxLines: 2,
  //                   style: const TextStyle(
  //                     fontSize: 16,
  //                     color: Colors.blue,
  //                   ),
  //                 ),
  //               ),
  //               Padding( //주소
  //                 padding: const EdgeInsets.all(8),
  //                 child: Text(
  //                   address,
  //                   maxLines: 3,
  //                   style: TextStyle(
  //                     fontSize: 16,
  //                     color: Colors.grey[500],
  //                   ),
  //                 ),
  //               ),
  //
  //               SizedBox(height: 20,),
  //               ElevatedButton.icon(
  //                 onPressed: (){
  //                   Navigator.pop(context);
  //                 },
  //                 icon: const Icon(Icons.close),
  //                 label: const Text('닫기'),
  //               ),
  //             ],
  //           ),
  //         ),
  //       );
  //     },
  //   );
  // }

  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 1, vsync: this);

    return Scaffold(
      appBar: AppBar(),
      body: Column(
        children: [
          SizedBox(height: 100,width: 400, //추천운전학원 넣을곳
              child: Expanded(
                  child: Container(
                    color: Colors.blue,
                  ))),

          //Text('운전전문학원',style: TextStyle(fontSize: 25),),

          Expanded(
            child: SizedBox(
              child: TabBarView(
                controller: tabController,
                children: [
                  ListView.builder( //운전전문학원
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: Get.arguments[0].length,
                    itemBuilder: (context,index){
                      return GestureDetector(
                        onTap: (){showPopup(context,Get.arguments[0][index]['name'].toString(),Get.arguments[0][index]['phone'].toString(),Get.arguments[0][index]['address'].toString(),Get.arguments[0][index]['type'].toString());},
                        child: Card(
                          margin: EdgeInsets.symmetric(horizontal:0,vertical: 5),
                          child: ListTile(
                            leading: TextButton(
                                child: Text(
                                    '${Get.arguments[0][index]['km']} km',
                                    style: TextStyle(color: Colors.grey)),
                                onPressed: (){}),

                            title:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(Get.arguments[0][index]['name'].toString(),style: TextStyle(fontWeight: FontWeight.normal,fontSize: 15)),
                                Text(Get.arguments[0][index]['phone'].toString(),style: TextStyle(fontSize:13,color: Colors.blue )),
                                Text(Get.arguments[0][index]['address'].toString(),style: TextStyle(fontSize: 12,color: Colors.grey[500])),
                              ],
                            ),

                            trailing: Icon(Icons.keyboard_arrow_right,color: Colors.black26,),
                          ),
                        ),
                      );
                    },
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
