import 'package:flutter/material.dart';
import 'package:in_driver_clone/src/presentacion/pages/auth/login/LoginContent.dart';

class RegisterContent extends StatelessWidget {
  const RegisterContent({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              SizedBox(),
              RotatedBox(
                quarterTurns: 1,
                child: Text(
                  "Log in",
                  style: TextStyle(
                    fontSize: 25,
                    color: Colors.white,
                  ),
                ),
              ),
              RotatedBox(
                quarterTurns: 1,
                child: GlobalText(
                  size: 20,
                  text: "Sign up",
                  color: Colors.white,
                  fontweight: FontWeight.bold,
                ),
              ),
              SizedBox(
                height: 100,
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
            margin: EdgeInsets.only(
              right: 25,
              left: 25,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  margin: EdgeInsets.only(top: 50),
                  alignment: Alignment.bottomRight,
                  child: GestureDetector(
                    child: IconButton(
                        onPressed: () {
                          Navigator.pop(context);
                        },
                        icon: Icon(Icons.close)),
                  ),
                ),
                Container(
                    margin: EdgeInsets.only(top: 20),
                    alignment: Alignment.bottomCenter,
                    child: Image.asset(
                      "assets/img/delivery.png",
                      width: 150,
                      height: 150,
                    )),
                Spacer(),
                Container(
                  alignment: Alignment.center,
                  child: TextForm(
                    hintText: "Name",
                    prefixIcon: Icon(Icons.person_2_outlined),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextForm(
                    hintText: "Last name",
                    prefixIcon: Icon(Icons.person_2_outlined),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextForm(
                    hintText: "Email",
                    prefixIcon: Icon(Icons.email_outlined),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextForm(
                    hintText: "Telefono",
                    prefixIcon: Icon(Icons.phone_android_outlined),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextForm(
                    hintText: "Password",
                    prefixIcon: Icon(Icons.password_outlined),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Container(
                  alignment: Alignment.center,
                  child: TextForm(
                    hintText: "Confirmed password",
                    prefixIcon: Icon(Icons.password_outlined),
                  ),
                ),
                Spacer(),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(32),
                    color: Colors.white,
                  ),
                  alignment: Alignment.center,
                  margin: EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                  child: TextButton(
                    onPressed: () {},
                    child: Text(
                      "CREATE ACCOUNT",
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      color: Colors.white,
                      width: 20,
                      height: 1,
                    ),
                    Text(
                      "OR",
                      style: TextStyle(color: Colors.white),
                    ),
                    Container(
                      color: Colors.white,
                      width: 20,
                      height: 1,
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Are you have an account?",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    TextButton(
                      style: ButtonStyle(),
                      onPressed: () {
                        Navigator.pushNamed(context, 'login');
                      },
                      child: Text(
                        "Log in",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ],
    ));
  }
}
