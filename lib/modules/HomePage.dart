
import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

const List<String> images = [
  "assets/images/iv_ad1.jpg",
  "assets/images/iv_ad2.jpg",
  "assets/images/iv_ad3.jpg",
  "assets/images/iv_ad4.jpg",
];

class HomePage extends StatefulWidget {
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {
    return new Column(children: <Widget>[
        _buildTopBanner(),
        new Expanded(child: _buildGridView())
    ]);
  }

  Widget _buildTopBanner() {
    return Container(
        width: MediaQuery.of(context).size.width,
        height: 200.0,
        child: Swiper(
          itemBuilder: _swiperBuilder,
          itemCount: 4,
          pagination: new SwiperPagination(
              builder: DotSwiperPaginationBuilder(
                color: Colors.black54,
                activeColor: Colors.white,
              )),
          //control: new SwiperControl(),
          scrollDirection: Axis.horizontal,
          autoplay: true,
          onTap: (index) => print('点击了第$index个'),
        )
    );
  }

  Widget _swiperBuilder(BuildContext context, int index) {
    return new Image.asset(
      images[index],
      fit: BoxFit.fill,
    );
  }

  Widget _buildGridView() {
    return GridView.count(
      // Create a grid with 2 columns. If you change the scrollDirection to
      // horizontal, this would produce 2 rows.
      crossAxisCount: 2,
      childAspectRatio: 5/3,
      children: <Widget>[
        _buildIconItem("在线下单", "assets/images/icon_online_order.png"),
        _buildIconItem("我的订单", "assets/images/icon_myorder_list.png"),
        _buildIconItem("调度计划", "assets/images/icon_vehicle_trip.png"),
        _buildIconItem("附件网点", "assets/images/icon_station.png"),
        _buildIconItem("运价查询", "assets/images/icon_query_price.png"),
      ],
    );
  }

  Widget _buildIconItem(String title, String imagePath) {
    return Container(
      child: Column(
          children: <Widget>[
            Image.asset(
              imagePath,
              fit: BoxFit.cover,
              width: 60.0,
              height: 60.0,
            ),
            Text(
              title,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold),
            ),
          ]),
    )
      ;

  }
}