import 'package:floatingpanel/floatingpanel.dart';
import 'package:flutter/material.dart';
import 'package:gols/screens/institue/institute_screen.dart';

import 'components/top_home_icons_widget.dart';

class MainHome extends StatefulWidget {
  const MainHome({Key key}) : super(key: key);

  @override
  _MainHomeState createState() => _MainHomeState();
}

class _MainHomeState extends State<MainHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.white,
          leadingWidth: 0.0,
          leading: Icon(Icons.menu),
          bottom: PreferredSize(
              child: Column(
                children: [
                  SizedBox(height: 5),
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    height: 70,
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          child: TopHomeIconsWigets(
                            image: "assets/icons/home@2x.png",
                            name: "Home",
                          ),
                        ),
                        Container(
                          child: TopHomeIconsWigets(
                            image: "assets/icons/tools@2x.png",
                            name: "Tools",
                          ),
                        ),
                        InkWell(
                          onTap: () {
                            Navigator.push(
                                context,
                                PageRouteBuilder(
                                  transitionDuration:
                                      Duration(milliseconds: 400),
                                  transitionsBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secAnimation,
                                      Widget child) {
                                    animation = CurvedAnimation(
                                        parent: animation,
                                        curve: Curves.easeOutQuint);
                                    return ScaleTransition(
                                      alignment: Alignment.center,
                                      scale: animation,
                                      child: child,
                                    );
                                  },
                                  pageBuilder: (BuildContext context,
                                      Animation<double> animation,
                                      Animation<double> secAnimation) {
                                    return InstitutesScreen();
                                  },
                                ));
                          },
                          child: Container(
                            child: TopHomeIconsWigets(
                              image: "assets/icons/Institute@2x.png",
                              name: "Institute",
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 5),
                  Container(
                    height: 1,
                    color: Colors.indigoAccent,
                  ),
                ],
              ),
              preferredSize: Size.fromHeight(90.0)),
          title: Text(
            'Goals',
            style: TextStyle(color: Colors.indigoAccent, fontSize: 30),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.search_outlined,
                      color: Colors.indigoAccent, size: 40)),
            )
          ],
        ),
        body: Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              color: Colors.white,
              child: SingleChildScrollView(
                physics: BouncingScrollPhysics(),
                child: Column(
                  children: [
                    SizedBox(height: 10),
                    //TopIconsBar>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 50),
                      height: 70,
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            child: TopHomeIconsWigets(
                              image: "assets/icons/newsfeed@2x.png",
                              name: "GFeed",
                            ),
                          ),
                          Container(
                            child: TopHomeIconsWigets(
                              image: "assets/icons/Video button@2x.png",
                              name: "Video",
                            ),
                          ),
                          Container(
                            child: TopHomeIconsWigets(
                              image: "assets/icons/page@2x.png",
                              name: "Page",
                            ),
                          ),
                          Container(
                            child: TopHomeIconsWigets(
                              image: "assets/icons/group@2x.png",
                              name: "Club",
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 10),

                    ///write a post container >>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        children: [
                          Container(
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(15),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.2),
                                  spreadRadius: 3,
                                  blurRadius: 7,
                                  offset: Offset(
                                      1, 9), // changes position of shadow
                                )
                              ],
                            ),
                            child: Padding(
                              padding: const EdgeInsets.symmetric(
                                  horizontal: 10, vertical: 5),
                              child: Column(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        height: 50,
                                        width: 50,
                                        decoration: BoxDecoration(
                                            image: DecorationImage(
                                                fit: BoxFit.cover,
                                                image: AssetImage(
                                                    "assets/images/profile.jpg")),
                                            shape: BoxShape.circle,
                                            color: Colors.blue),
                                      ),
                                      SizedBox(width: 10),
                                      Text(
                                        "Jhon Doe",
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width / 1.5,
                                    child: Center(
                                      child: TextFormField(
                                        keyboardType: TextInputType.multiline,
                                        minLines: 1,
                                        maxLines: 3,
                                        cursorHeight: 30,
                                        decoration: InputDecoration(
                                          hintText: "Write Something....",
                                          border: OutlineInputBorder(
                                              borderRadius:
                                                  BorderRadius.circular(15),
                                              borderSide: BorderSide(
                                                  color: Colors.teal)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                  Container(
                                    padding:
                                        EdgeInsets.symmetric(horizontal: 40),
                                    height: 40,
                                    color: Colors.white,
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Row(
                                          children: [
                                            Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  shape: BoxShape.circle),
                                              child: Image.asset(
                                                "assets/icons/image.png",
                                                height: 35,
                                                width: 35,
                                              ),
                                            ),
                                            SizedBox(width: 10),
                                            Container(
                                              height: 35,
                                              width: 35,
                                              decoration: BoxDecoration(
                                                  color: Colors.grey
                                                      .withOpacity(0.5),
                                                  shape: BoxShape.circle),
                                              child: Image.asset(
                                                "assets/icons/look-for.png",
                                                height: 35,
                                                width: 35,
                                              ),
                                            ),
                                          ],
                                        ),
                                        Container(
                                          height: 40,
                                          width: 80,
                                          decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10),
                                              color: Colors.indigoAccent),
                                          child: Center(
                                              child: Text(
                                            "Post",
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  SizedBox(height: 8),
                                ],
                              ),
                            ),
                          ),
                          ///// public post in listbuilder>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                          SizedBox(height: 40),
                          Container(
                            constraints: BoxConstraints(),
                            child: ListView.builder(
                                shrinkWrap: true,
                                primary: false,
                                physics: ClampingScrollPhysics(),
                                itemCount: 10,
                                itemBuilder: (context, index) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 10),
                                    child: Container(
                                      decoration: BoxDecoration(
                                        color: Colors.white,
                                        borderRadius: BorderRadius.circular(15),
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey.withOpacity(0.2),
                                            spreadRadius: 3,
                                            blurRadius: 7,
                                            offset: Offset(1,
                                                9), // changes position of shadow
                                          )
                                        ],
                                      ),
                                      child: Column(
                                        children: [
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 10),
                                            child: Row(
                                              children: [
                                                Container(
                                                  height: 50,
                                                  width: 50,
                                                  decoration: BoxDecoration(
                                                      image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: AssetImage(
                                                              "assets/images/profile.jpg")),
                                                      shape: BoxShape.circle,
                                                      color: Colors.blue),
                                                ),
                                                SizedBox(width: 10),
                                                Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Text(
                                                      "Jhon Doe",
                                                      style: TextStyle(
                                                          fontWeight:
                                                              FontWeight.bold,
                                                          color: Colors.black,
                                                          fontSize: 18),
                                                    ),
                                                    Row(
                                                      crossAxisAlignment:
                                                          CrossAxisAlignment
                                                              .end,
                                                      children: [
                                                        Text(
                                                          "Teacher",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 14),
                                                        ),
                                                        SizedBox(width: 10),
                                                        Text(
                                                          "14 june, 2021",
                                                          style: TextStyle(
                                                              fontWeight:
                                                                  FontWeight
                                                                      .normal,
                                                              color:
                                                                  Colors.grey,
                                                              fontSize: 10),
                                                        ),
                                                      ],
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 10),
                                          Image.asset(
                                            "assets/images/postImage.jpg",
                                            fit: BoxFit.fill,
                                          ),
                                          SizedBox(height: 3),
                                          Container(
                                            padding: EdgeInsets.symmetric(
                                                horizontal: 20),
                                            height: 40,
                                            child: Row(
                                              children: [
                                                SizedBox(width: 30),
                                                Image.asset(
                                                  "assets/icons/like@2x.png",
                                                  height: 30,
                                                  width: 30,
                                                  fit: BoxFit.fill,
                                                ),
                                                SizedBox(width: 30),
                                                Image.asset(
                                                  "assets/icons/message@2x.png",
                                                  height: 30,
                                                  width: 30,
                                                  fit: BoxFit.fill,
                                                ),
                                              ],
                                            ),
                                          ),
                                          SizedBox(height: 5),
                                        ],
                                      ),
                                    ),
                                  );
                                }),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            FloatBoxPanel(
                positionLeft: 10,
                panelOpenOffset: 10,
                backgroundColor: Colors.indigoAccent,
                panelIcon: Icons.menu,
                onPressed: (index) {
                  //onpress action which gives pressed button index
                  print(index);
                  if (index == 0) {
                    print("Message Button Pressed");
                  } else if (index == 1) {
                    print("Camera Button Pressed");
                  } else if (index == 2) {
                    print("Play Button Pressed");
                  }
                },
                buttons: [
                  // Add Icons to the buttons list.
                  Icons.settings,
                  Icons.photo_camera,
                  Icons.video_library
                  //add more buttons here
                ]),
          ],
        ));
  }
}
