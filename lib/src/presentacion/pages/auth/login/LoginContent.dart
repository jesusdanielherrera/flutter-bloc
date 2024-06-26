import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Logincontent extends StatelessWidget {
  const Logincontent({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: Color.fromARGB(255, 10, 137, 183),
          padding: EdgeInsets.only(
            left: 15,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "Log in",
                  style: TextStyle(
                      fontSize: 25,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              RotatedBox(
                quarterTurns: 1,
                child: GlobalText(
                  size: 20,
                  text: "Sign up",
                  color: Colors.white,
                ),
              ),
              SizedBox(
                height: 90,
              ),
            ],
          ),
        ),
        Container(
          margin: EdgeInsets.only(left: 60, bottom: 60),
          decoration: BoxDecoration(
            color: Color.fromARGB(255, 72, 169, 255),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(35),
              bottomLeft: Radius.circular(35),
            ),
          ),
          child: Container(
            margin: EdgeInsets.only(right: 25, left: 25),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 50,
                ),
                Text(
                  "Welcome",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Text(
                  "back...",
                  style: TextStyle(
                      fontSize: 28,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
                Container(
                    alignment: Alignment.centerRight,
                    child: Image.asset(
                      "assets/img/car.png",
                      width: 150,
                      height: 150,
                    )),
                Text(
                  "Log in",
                  style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email_outlined),
                    label: Text("Email"),
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.key_outlined),
                    label: Text("Password"),
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(top: 30),
                  child: ElevatedButton(
                    style:
                        ElevatedButton.styleFrom(backgroundColor: Colors.white),
                    onPressed: () {},
                    child: Text(
                      "SIGN IN",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}

class GlobalText extends StatelessWidget {
  const GlobalText({
    required this.text,
    required this.size,
    this.color,
    super.key,
    this.fontweight,
  });
  final String text;
  final double size;
  final Color? color;
  final FontWeight? fontweight;

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontSize: size,
        color: color,
        fontWeight: fontweight,
      ),
    );
  }
}
