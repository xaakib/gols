import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      height: double.infinity,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 50),
          Container(
            height: 200,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: AssetImage("assets/images/reference-groups.jpg"),
            )),
          ),
          SizedBox(height: 30),
          Column(
            children: [
              Container(
                height: 35,
                child: Text("Log In",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.black,
                        fontSize: 30)),
              ),
              SizedBox(height: 10),
              Container(
                height: 35,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Not a memeber yet ?",
                        style: TextStyle(
                            fontWeight: FontWeight.normal,
                            color: Colors.black,
                            fontSize: 18)),
                    Text(" Register!",
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.indigoAccent[700],
                            fontSize: 18)),
                  ],
                ),
              ),
            ],
          ),
          SizedBox(height: 30),
          Container(
            height: 200,
            color: Colors.blue,
            
          ),
        ],
      ),
    ));
  }
}
