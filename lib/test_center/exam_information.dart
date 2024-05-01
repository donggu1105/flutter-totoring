

import 'package:flutter/material.dart';

import 'drive_list1.dart';
import 'drive_list2.dart';
import 'drive_list3.dart';
import 'drive_list4.dart';



class Exam_Information extends StatelessWidget {
  Exam_Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange,
        title: Text('운전면허 시험안내'),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text('운전면허 DAO',
                      style: TextStyle(color: Colors.grey, fontSize: 15,
                      )),
                ),

                SizedBox(height: 20,),

                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                          child: ElevatedButton(onPressed: ()async{
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Drive_list1()));
                          },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                maximumSize: Size(200, 80)
                            ),child: ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('운전면허 취득절차',style: TextStyle(fontSize: 23,color: Colors.black87),)
                                  ],
                                ),

                                SizedBox(width: 51,
                                  child: IconButton(
                                    alignment: Alignment.centerRight,
                                    icon: Icon(Icons.navigate_next,color: Colors.black87,),
                                    onPressed: null,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                  ],
                ),

                const SizedBox(height: 5,),

                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                          child: ElevatedButton(onPressed: ()async{
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Drive_list2()));
                          },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                maximumSize: Size(200, 80)
                            ),child: ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('응시전 교통안전교육',style: TextStyle(fontSize: 23,color: Colors.black87),)
                                  ],
                                ),

                                SizedBox(width: 10,
                                  child: IconButton(
                                    alignment: Alignment.centerRight,
                                    icon: Icon(Icons.navigate_next,color: Colors.black87,),
                                    onPressed: null,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                          child: ElevatedButton(onPressed: ()async{
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Drive_list3()));
                          },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                maximumSize: Size(200, 80)
                            ),child: ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('학과/기능/도로주행',style: TextStyle(fontSize: 23,color: Colors.black87),)
                                  ],
                                ),

                                SizedBox(width: 30,
                                  child: IconButton(
                                    alignment: Alignment.centerRight,
                                    icon: Icon(Icons.navigate_next,color: Colors.black87,),
                                    onPressed: null,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                  ],
                ),

                const SizedBox(height: 5),

                Row(
                  children: [
                    Expanded(
                        child: GestureDetector(
                          child: ElevatedButton(onPressed: ()async{
                            Navigator.push(context, MaterialPageRoute(builder: (context) => Drive_list4()));
                          },
                            style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 1,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(0),
                                ),
                                maximumSize: Size(200, 80)
                            ),child: ButtonBar(
                              alignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(width: 20,),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text('준비물',style: TextStyle(fontSize: 23,color: Colors.black87),)
                                  ],
                                ),

                                SizedBox(width: 166,
                                  child: IconButton(
                                    alignment: Alignment.centerRight,
                                    icon: Icon(Icons.navigate_next,color: Colors.black87,),
                                    onPressed: null,
                                  ),
                                )
                              ],
                            ),
                          ),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
