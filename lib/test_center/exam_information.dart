
import 'package:dao/test_center/drive_list.dart';
import 'package:dao/test_center/drive_list2.dart';
import 'package:flutter/material.dart';

import 'drive_list3.dart';
import 'drive_list7.dart';


class Exam_Information extends StatelessWidget {
  const Exam_Information({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.orange,
        title: const Text('운전면허 시험안내'),),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(15.0),
            child: Column(
              children: [
                const Align(
                  alignment: Alignment.centerLeft,
                  child: Text('운전면허 DAO',
                      style: TextStyle(color: Colors.grey, fontSize: 15,
                      )),
                ),

                const SizedBox(height: 30,),

                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Row(
                          children: [
                            ElevatedButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => const Drive_list()));
                            },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0.5, //박스 3D
                                minimumSize: Size(470, 70),
                              ),
                              child: Row(
                                children: [
                                  Row(
                                    children: const [
                                      Text('운전면허취득 절차', style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87)),
                                    ],
                                  ),
                                  const SizedBox(width: 180,),
                                  const SizedBox(
                                    child: IconButton(
                                      icon: Icon(Icons.navigate_next,
                                        color: Colors.black,),
                                      onPressed: null,
                                    ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 5,),

                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Row(
                          children: [
                            ElevatedButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => const Drive_list2()));
                            },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0.5, //박스 3D
                                minimumSize: Size(470, 70),
                              ),
                              child: Row(
                                children: [
                                  Row(
                                    children: const [
                                      Text('응시전 교통안전교육', style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87)),
                                    ],
                                  ),
                                  const SizedBox(width: 160,),
                                  const SizedBox(
                                    child: IconButton(
                                      icon: Icon(Icons.navigate_next,
                                        color: Colors.black,),
                                      onPressed: null,
                                    ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 5),
                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Row(
                          children: [
                            ElevatedButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => const Drive_list3()));
                            },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0.5, //박스 3D
                                minimumSize: const Size(470, 70),
                              ),
                              child: Row(
                                children: [
                                  Row(
                                    children: const [
                                      Text('학과/기능/도로주행', style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87)),
                                    ],
                                  ),
                                  const SizedBox(width: 160,),
                                  const SizedBox(
                                    child: IconButton(
                                      icon: Icon(Icons.navigate_next,
                                        color: Colors.black,),
                                      onPressed: null,
                                    ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),

                const SizedBox(height: 5),

                Row(
                  children: [
                    Expanded(
                      child: GestureDetector(
                        child: Row(
                          children: [
                            ElevatedButton(onPressed: () {
                              Navigator.push(context, MaterialPageRoute(
                                  builder: (context) => const Drive_list7()));
                            },
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                elevation: 0.5, //박스 3D
                                minimumSize: Size(470, 70),
                              ),
                              child: Row(
                                children: [
                                  Row(
                                    children: const [
                                      Text('준비물', style: TextStyle(
                                          fontSize: 20,
                                          color: Colors.black87)),
                                    ],
                                  ),
                                  const SizedBox(width: 280,),
                                  const SizedBox(
                                    child: IconButton(
                                      icon: Icon(Icons.navigate_next,
                                        color: Colors.black,),
                                      onPressed: null,
                                    ),),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
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
