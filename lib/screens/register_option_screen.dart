import 'package:flutter/material.dart';
import 'package:gols/screens/registation_screen.dart';

class RegisterOptionScreen extends StatelessWidget {
  const RegisterOptionScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        color: Colors.indigoAccent[700],
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 100),
            Text(
              "Register as",
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  fontSize: 30),
            ),
            SizedBox(height: 80),
            InkWell(
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
                        return RegisterScreen();
                      },
                    ));
              },
              child: Container(
                child: AsRegisterContainerWidgets(
                  image: "assets/images/undraw_teaching_f1cm@2x.png",
                  name: "Teacher",
                ),
              ),
            ),
            SizedBox(height: 25),
            Container(
              child: AsRegisterContainerWidgets(
                image: "assets/images/student@2x.png",
                name: "Student",
              ),
            ),
            SizedBox(height: 25),
            Container(
              child: AsRegisterContainerWidgets(
                image: "assets/images/others image@2x.png",
                name: "Others",
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class AsRegisterContainerWidgets extends StatelessWidget {
  final String image, name;

  const AsRegisterContainerWidgets(
      {Key? key, required this.image, required this.name})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      width: 200,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(15),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 3,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          )
        ],
      ),
      child: Column(
        children: [
          Image.asset(
            image,
            height: 100,
            width: 150,
          ),
          SizedBox(height: 10),
          Text(
            name,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.indigoAccent,
                fontSize: 20),
          )
        ],
      ),
    );
  }
}
