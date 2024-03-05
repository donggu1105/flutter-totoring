import 'package:flutter/material.dart';

class Iljongdaehyeong extends StatefulWidget {
  const Iljongdaehyeong({Key? key}) : super(key: key);

  @override
  State<Iljongdaehyeong> createState() => _IljongdaehyeongState();
}

class _IljongdaehyeongState extends State<Iljongdaehyeong> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        alignment: Alignment.topLeft,
        child: Column(

          children: [SizedBox(height: 20,),
            Text('1종대형면허 채점기준',style: TextStyle(fontSize: 20,color: Colors.black)),
            SizedBox(height: 10,),
            Row(
              children: [

                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [

                    SizedBox(
                      child: SizedBox(
                        width: 500,
                        child: Image(image: AssetImage('image/daehyong.png')),
                      ),
                    ),
                    SizedBox(height: 15),
                    Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [

                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),SizedBox(height: 50),
          ],
        ),
      ),
    );
  }
}
