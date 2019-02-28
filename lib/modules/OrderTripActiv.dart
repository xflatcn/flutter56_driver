
import 'package:flutter/material.dart';

class OrderTripActiv extends StatefulWidget {
  OrderTripState createState() => OrderTripState();
}

class OrderTripState extends State<OrderTripActiv> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("OrderTrip Page"),
        ),
        body: Center(
          child: Text('OrderTrip Page'),
        )
    );
  }

}