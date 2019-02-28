
import 'package:flutter/material.dart';

class OnlineOrderActiv extends StatefulWidget {
  OnlineOrderState createState() => OnlineOrderState();
}

class OnlineOrderState extends State<OnlineOrderActiv> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("OnlineOrder Page"),
      ),
      body: Center(
        child: Text('OnlineOrder Page'),
      )
    );
  }

}