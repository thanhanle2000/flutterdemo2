import 'package:flutter/material.dart';
import 'package:flutterbuoi2/dimens.dart';

class ListDemo extends StatefulWidget {
  const ListDemo({Key? key}) : super(key: key);

  @override
  _ListDemoState createState() => _ListDemoState();
}

class _ListDemoState extends State<ListDemo> {
  final listDemo = [
    'Flutter',
    'React Native',
    'Java',
    'Python',
    'Ruby',
    'Swift',
    'C#',
    'JavaCript',
    'HTML'
  ];

  final listDemo1 = ['1', '2', '3', '4', '5', '6', '7', '8', '9'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(
          child: Text(
            'ListView Demo Lesson 6',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.black),
          ),
        ),
        backgroundColor: Colors.blue[100],
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
                  padding: EdgeInsets.symmetric(vertical: 50.w),
                  color: Colors.amberAccent,
                  child: buildWidgetListView())),
          Expanded(
              child: Container(
                  padding: EdgeInsets.all(50.w),
                  color: Colors.greenAccent,
                  child: buildWidgetGridView())),
        ],
      ),
    );
  }

  Widget buildWidgetListView() => ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: listDemo.length,
      itemBuilder: (BuildContext context, index) {
        return Text(
          listDemo[index],
          style: TextStyle(
            fontSize: 25.t,
          ),
        );
      });

  Widget buildWidgetGridView() => GridView.builder(
      itemCount: listDemo1.length,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3,
          mainAxisExtent: 100,
          mainAxisSpacing: 2,
          crossAxisSpacing: 2),
      itemBuilder: (BuildContext context, index) {
        return Text(listDemo1[index]);
      });
}
