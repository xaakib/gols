import 'package:flutter/material.dart';

class InstitutesScreen extends StatefulWidget {
  const InstitutesScreen({Key key}) : super(key: key);

  @override
  _InstitutesScreenState createState() => _InstitutesScreenState();
}

class _InstitutesScreenState extends State<InstitutesScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        toolbarHeight: 0,
      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        color: Colors.white,
        child: ListView(
          children: [
            Container(
              height: 110,
              decoration: BoxDecoration(
                  color: Colors.indigoAccent,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(30.0),
                    bottomRight: Radius.circular(30.0),
                  )),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  Container(
                    height: 24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(Icons.arrow_back_ios,
                                color: Colors.white)),
                        Text(
                          "Institutes",
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 25),
                        ),
                        Text(
                          "i",
                          style: TextStyle(
                              fontSize: 1,
                              fontWeight: FontWeight.bold,
                              color: Colors.blue),
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 10),
                  Container(
                    height: 50,
                    width: double.infinity,
                    child: Row(
                      children: [
                        SizedBox(width: 20),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            height: 50,
                            width: MediaQuery.of(context).size.width * 0.66,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20)),
                            child: Center(
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: TextFormField(
                                  decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Search'),
                                ),
                              ),
                            ),
                          ),
                        ),
                        IconButton(
                            onPressed: () {},
                            icon: Icon(Icons.search_rounded,
                                size: 40, color: Colors.white))
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Container(
              constraints: BoxConstraints(),
              child: ListView.builder(
                  shrinkWrap: true,
                  primary: false,
                  itemCount: 40,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: ListTile(
                        leading: Container(
                          height: 80,
                          width: 80,
                          decoration: BoxDecoration(
                              color: Colors.black,
                              image: DecorationImage(
                                  fit: BoxFit.cover,
                                  image:
                                      AssetImage("assets/images/profile2.jpg")),
                              shape: BoxShape.circle),
                        ),
                        title: Text(
                          "School Name",
                          style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black,
                              fontSize: 18),
                        ),
                      ),
                    );
                  }),
            ),
            Container(
              height: 500,
              width: double.infinity,
              color: Colors.red,
            ),
          ],
        ),
      ),
    );
  }
}
