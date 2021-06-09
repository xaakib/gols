import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
          body: NestedScrollView(
        headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
          return <Widget>[
            SliverAppBar(
              backgroundColor: Colors.white,
              leadingWidth: 0.0,
              leading: Icon(Icons.image, size: 1),
              title: Text(
                'Goals',
                style: TextStyle(color: Colors.indigoAccent),
              ),
              actions: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search_outlined,
                        color: Colors.indigoAccent, size: 30))
              ],
              floating: true,
              elevation: 0,
              bottom: TabBar(
                isScrollable: true,
                tabs: [
                  Tab(
                      child: Column(
                    children: [
                      Icon(
                        Icons.menu,
                        color: Colors.indigoAccent,
                      ),
                      Text('Flight',
                          style: TextStyle(color: Colors.indigoAccent)),
                    ],
                  )),
                  Tab(
                      child: Text('Train',
                          style: TextStyle(color: Colors.indigoAccent))),
                  Tab(
                      child: Text('Car',
                          style: TextStyle(color: Colors.indigoAccent))),
                  Tab(
                      child: Text('Cycle',
                          style: TextStyle(color: Colors.indigoAccent))),
                  Tab(
                      child: Text('Boat',
                          style: TextStyle(color: Colors.indigoAccent))),
                ],
              ),
            ),
          ];
        },
        body: TabBarView(
          children: <Widget>[
            Icon(Icons.flight, size: 350),
            Icon(Icons.directions_transit, size: 350),
            Icon(Icons.directions_car, size: 350),
            Icon(Icons.directions_bike, size: 350),
            Icon(Icons.directions_boat, size: 350),
          ],
        ),
      )),
    );
  }
}
