import 'package:flutter/material.dart';
import 'package:get/get.dart';


class Drive_test extends StatefulWidget {
  const Drive_test({Key? key}) : super(key: key);

  @override
  State<Drive_test> createState() => _Screen2State();
}

class _Screen2State extends State<Drive_test> with TickerProviderStateMixin {



  //팝업창 ↓↓↓
  void showPopup(context,name,phone,address,type){
    showDialog(
      context: context,
      builder: (context){
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 800,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: Column(
              children: [
                const SizedBox(
                  height: 70,
                ),
                Text(name,style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                ),
                SizedBox(height: 25,),
                Padding(
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
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    phone,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
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
  void showPopup1(context,name,phone,address,type){
    showDialog(
      context: context,
      builder: (context){
        return Dialog(
          child: Container(
            width: MediaQuery.of(context).size.width * 0.9,
            height: 800,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white
            ),
            child: Column(
              children: [
                //ClipRRect(
                //borderRadius: BorderRadius.circular(10),
                //child: Image.asset(
                //image,
                // width: 200,
                // height: 200,
                //),
                //)
                const SizedBox(
                  height: 70,
                ),
                Text(name,style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.bold,
                    color: Colors.grey),
                ),
                SizedBox(height: 25,),
                Padding(
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
                Padding(
                  padding: const EdgeInsets.all(8),
                  child: Text(
                    phone,
                    maxLines: 2,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.blue,
                    ),
                  ),
                ),
                Padding(
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
  }

  @override
  Widget build(BuildContext context) {

    TabController tabController = TabController(length: 1, vsync: this);

    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange,
        title: const Text('전국 운전면허시험장'),
      ),
      body: Column(
        children: [
          const SizedBox(height: 20,),

          Expanded(
            child: SizedBox(
              child: TabBarView(
                controller: tabController,
                children: [
                  ListView.builder( //신체검사지정병원
                    physics: const BouncingScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: Get.arguments[0].length,
                    itemBuilder: (context,index){
                      return GestureDetector(
                        onTap: (){showPopup(context,Get.arguments[0][index]['name'].toString(),Get.arguments[0][index]['phone'].toString(),Get.arguments[0][index]['address'].toString(),Get.arguments[0][index]['type'].toString());},
                        child: Card(
                          margin: const EdgeInsets.symmetric(horizontal:10,vertical: 10),
                          child: ListTile(
                            leading: TextButton(
                                onPressed: null,
                                child: Text(
                                    '${Get.arguments[0][index]['km']} km',
                                    style: const TextStyle(fontWeight: FontWeight.w400,color: Colors.grey))),

                            title:  Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(Get.arguments[0][index]['name'].toString(),style: const TextStyle(fontWeight: FontWeight.w500)),
                                Text(Get.arguments[0][index]['phone'].toString(),style: const TextStyle(fontSize:15,color: Colors.blue )),
                                Text(Get.arguments[0][index]['address'].toString(),style: TextStyle(fontSize: 14,color: Colors.grey[500])),
                              ],
                            ),

                            trailing: const Icon(Icons.keyboard_arrow_right,color: Colors.black26,),
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
