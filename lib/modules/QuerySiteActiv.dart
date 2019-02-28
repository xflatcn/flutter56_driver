
import 'package:flutter/material.dart';

class QuerySiteActiv extends StatefulWidget {
  QuerySiteState createState() => QuerySiteState();
}

class QuerySiteState extends State<QuerySiteActiv> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("QuerySite Page"),
        ),
        body: Center(
          child: Text('QuerySite Page'),
        )
    );
  }

}