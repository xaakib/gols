import 'package:flutter/material.dart';

class CreatePostScreen extends StatefulWidget {
  const CreatePostScreen({Key key}) : super(key: key);

  @override
  _CreatePostScreenState createState() => _CreatePostScreenState();
}

class _CreatePostScreenState extends State<CreatePostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        bottom: PreferredSize(
            child: Container(
              height: 1,
              color: Colors.indigoAccent,
            ),
            preferredSize: Size(double.infinity, 2)),
        elevation: 0,
        backgroundColor: Colors.white,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Colors.indigoAccent,
          ),
          onPressed: () => Navigator.pop(context),
        ),
        title: Text(
          "Create Post",
          style: TextStyle(
              color: Colors.indigoAccent, fontWeight: FontWeight.w400),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: [
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: AssetImage("assets/images/profile.jpg")),
                        shape: BoxShape.circle,
                        color: Colors.blue),
                  ),
                  SizedBox(width: 10),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Jhon Doe",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 18),
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Text(
                            "Teacher",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                                fontSize: 14),
                          ),
                          SizedBox(width: 10),
                          Text(
                            "14 june, 2021",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.grey,
                                fontSize: 10),
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Container(
              height: 1,
              color: Colors.grey,
            ),
            SizedBox(height: 20),
            Container(
              height: 200,
              width: double.infinity,
              child: Column(
                children: [
                  Image.network(
                    "https://image.freepik.com/free-photo/brainstorm-meeting_1098-15871.jpg",
                    height: 200,
                    width: double.infinity,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
