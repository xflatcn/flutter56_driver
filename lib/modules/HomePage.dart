
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
      crossAxisCount: 3,
      // Generate 100 Widgets that display their index in the List
      /*
      children: List.generate(100, (index) {
        return Center(
          child: Text(
            'Item $index',
            style: Theme.of(context).textTheme.headline,
          ),
        );
      }),
      */
      children: <Widget>[
        _buildIconItem("运单录入", "assets/images/btn_desktop_order_new.png"),
        _buildIconItem("运单录入", "assets/images/btn_desktop_order_new.png"),
        _buildIconItem("运单录入", "assets/images/btn_desktop_order_new.png"),
        _buildIconItem("运单录入", "assets/images/btn_desktop_order_new.png"),
        _buildIconItem("运单录入", "assets/images/btn_desktop_order_new.png"),
        _buildIconItem("运单录入", "assets/images/btn_desktop_order_new.png"),
        _buildIconItem("运单录入", "assets/images/btn_desktop_order_new.png"),
        _buildIconItem("运单录入", "assets/images/btn_desktop_order_new.png"),
        _buildIconItem("运单录入", "assets/images/btn_desktop_order_new.png"),
        _buildIconItem("运单录入", "assets/images/btn_desktop_order_new.png"),
      ],
    );
  }

  Widget _buildIconItem(String title, String imagePath) {
    return InkWell(
      child: Card(
        elevation: 4.0,
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
          ],
        ),
      ),
    );
  }
}