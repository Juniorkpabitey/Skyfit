import 'package:flutter/material.dart';
import 'package:healthcare/screens/home_screen.dart';
import 'package:healthcare/screens/login_screen.dart';
import 'package:healthcare/screens/sign_up_screen.dart';
import 'package:healthcare/widgets/navbar_roots.dart';

class WelcomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: Colors.pinkAccent, // Add background color here
        ),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          padding: EdgeInsets.all(10),
          child: Column(
            children: [
              SizedBox(
                height: 15,
              ),
              Align(
                alignment: Alignment.centerRight,
                child: TextButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => NavBarRoots(),
                      ),
                    );
                  },
                  child: Text(
                    "SKIP",
                    style: TextStyle(
                      color: Color.fromARGB(255, 240, 238, 238),
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: EdgeInsets.all(20),
                child: Image.asset("images/Logo2.png"),
              ),
              SizedBox(height: 30),
              Text(
                "Skyfit Health",
                style: TextStyle(
                  color: Color.fromARGB(255, 250, 248, 248),
                  fontSize: 45,
                  fontWeight: FontWeight.bold,
                  letterSpacing: 1,
                  wordSpacing: 2,
                ),
              ),
              SizedBox(height: 5),
              Text(
                "Welcome",
                style: TextStyle(
                  color: Color.fromARGB(255, 243, 241, 241),
                  fontSize: 25,
                  fontWeight: FontWeight.w500,
                ),
              ),
              SizedBox(height: 60),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Material(
                    color: Color.fromARGB(255, 248, 246, 247),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => loginScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Text(
                          "Log In",
                          style: TextStyle(
                            color: Color.fromARGB(255, 233, 11, 104),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Material(
                    color: Color.fromARGB(255, 253, 253, 255),
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => SignUpScreen(),
                          ),
                        );
                      },
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 15, horizontal: 40),
                        child: Text(
                          "Sign Up",
                          style: TextStyle(
                            color: Color.fromARGB(255, 231, 7, 93),
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
