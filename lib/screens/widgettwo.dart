import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_task/screens/homepage.dart';
import 'package:widget_task/screens/widgetone.dart';

class WidgetTwo extends StatelessWidget {
  const WidgetTwo({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: SingleChildScrollView(
              child: Stack(
                children:[ Column(
                  children: [
                    Container(
                      height: Get.height * .3,
                      color: Colors.green,

                    ),

                    Container(
                      height: Get.height * .7,
                      color: Colors.yellow,

                    ),
                  ],
                ),
                  Positioned(
                    top: 400,
                    left: 140,
                    child: ElevatedButton(
                      onPressed: (){
                        Get.to(WidgetOne());
                      },
                      style: ElevatedButton.styleFrom(
                        // primary: Colors.orange
                        textStyle: TextStyle(fontSize: 20,fontWeight: FontWeight.w600)
                      ),
                      child: Text("Widget One"),
                    ),
                  ),
                ]
              ),
            ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: (){
      //     Get.to(HomePage());
      //   },
      //   child: Icon(Icons.home),
      // ),
    );
  }
}
