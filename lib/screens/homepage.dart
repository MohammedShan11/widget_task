import 'package:flutter/material.dart';
import 'package:widget_task/screens/widgettwo.dart';
import 'package:widget_task/screens/widgetone.dart';
class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
            appBar: AppBar(
              backgroundColor: Colors.red,
              bottom: TabBar(
                indicatorWeight: 5,
                tabs: [
                  Tab(
                    child: Text("Widget1"),
                  ), Tab(
                    child: Text("Widget2"),
                  )
                ],
              ),
            ),
        body: TabBarView(
            children: [
                WidgetOne(),
              WidgetTwo(),
            ]),
      ),
    );
  }
}
