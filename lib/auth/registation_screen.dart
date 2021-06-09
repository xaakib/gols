import 'package:flutter/material.dart';
import 'package:gols/screens/home_screen.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.white,
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: 50),
              Container(
                height: 200,
                decoration: BoxDecoration(
                    image: DecorationImage(
                  image: AssetImage("assets/images/Study2@2x.png"),
                )),
              ),
              SizedBox(height: 30),
              Column(
                children: [
                  Container(
                    height: 35,
                    child: Text("Register",
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
                        Text("Already have an account ?",
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                color: Colors.black,
                                fontSize: 18)),
                        InkWell(
                          child: Text(" Login!",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.indigoAccent[700],
                                  fontSize: 18)),
                          onTap: () {},
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 30),
              Container(
                height: 250,
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 40),
                  child: Column(
                    children: [
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.person,
                              color: Colors.indigoAccent[700],
                            ),
                            border: UnderlineInputBorder(),
                            hintText: 'Username'),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                            prefixIcon: Icon(
                              Icons.call,
                              color: Colors.indigoAccent[700],
                            ),
                            border: UnderlineInputBorder(),
                            hintText: 'Phone Number'),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.lock_open_outlined,
                              color: Colors.indigoAccent[700],
                            ),
                            hintText: 'Password'),
                      ),
                      SizedBox(height: 20),
                      TextFormField(
                        decoration: InputDecoration(
                            border: UnderlineInputBorder(),
                            prefixIcon: Icon(
                              Icons.lock_open_outlined,
                              color: Colors.indigoAccent[700],
                            ),
                            hintText: 'Confirm Passowrd'),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              GestureDetector(
                child: Container(
                  height: 40,
                  width: 150,
                  decoration: BoxDecoration(
                    color: Colors.indigoAccent,
                    borderRadius: BorderRadius.circular(25),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.grey.withOpacity(0.5),
                        spreadRadius: 3,
                        blurRadius: 7,
                        offset: Offset(0, 3), // changes position of shadow
                      )
                    ],
                  ),
                  child: Center(
                      child: Text(
                    "Register",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                        letterSpacing: 2),
                  )),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                        transitionDuration: Duration(milliseconds: 400),
                        transitionsBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation,
                            Widget child) {
                          animation = CurvedAnimation(
                              parent: animation, curve: Curves.easeOutQuint);
                          return ScaleTransition(
                            alignment: Alignment.center,
                            scale: animation,
                            child: child,
                          );
                        },
                        pageBuilder: (BuildContext context,
                            Animation<double> animation,
                            Animation<double> secAnimation) {
                          return HomeScreen();
                        },
                      ));
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
