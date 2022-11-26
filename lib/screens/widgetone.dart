import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:widget_task/screens/widgettwo.dart';

class WidgetOne extends StatelessWidget {
  const WidgetOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Stack(
          children:[ Column(
            children: [
              Container(
                height: Get.height * .3,
                color: Colors.blue,
              ),
              Container(
                height: Get.height * .7,
                color: Colors.black,
              )
            ],
          ),
            Positioned(
              top: 400,
              left: 140,
              child: ElevatedButton(
                onPressed: (){
                  Get.to(WidgetTwo());
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.orange,
                  textStyle: TextStyle(fontWeight: FontWeight.w600,fontSize: 20)
                ),
                child: Text("Widget Two"),
              ),
            ),
          ]
        ),
      ),
    );
  }
}
