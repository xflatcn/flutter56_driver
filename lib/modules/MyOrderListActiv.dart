
import 'package:flutter/material.dart';

class MyOrderListActiv extends StatefulWidget {
  MyOrderListState createState() => MyOrderListState();
}

class MyOrderListState extends State<MyOrderListActiv> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("MyOrderList Page"),
        ),
        body: Center(
          child: Text('MyOrderList Page'),
        )
    );
  }

}