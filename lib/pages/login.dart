import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:match_remainder/pages/Dashboard.dart';
import 'package:match_remainder/pages/HomePage.dart';

class loginPage extends StatefulWidget {
  const loginPage({super.key});

  @override
  State<loginPage> createState() => _loginPageState();
}

class _loginPageState extends State<loginPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(164, 0, 125, 4),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuery.of(context).size.height / 10),
          child: Column(
            children: [
              SizedBox(
                width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image.asset("assets/images/player2.png",
                        height: MediaQuery.of(context).size.height / 7.5,
                        width: MediaQuery.of(context).size.width / 3),
                    Column(
                      children: const [
                        Text(
                          "Bienvenue",
                          style: TextStyle(fontSize: 22, color: Colors.white),
                        ),
                        Text("   à StadeMinder ",
                            style: TextStyle(fontSize: 22, color: Colors.white))
                      ],
                    )
                  ],
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Form(
                      child: Column(
                        children: [
                          TextFormField(
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(111, 37, 37, 37),
                              label: Text(
                                "Email",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          TextFormField(
                            style: const TextStyle(
                                color: Colors.white, fontSize: 20),
                            obscureText: true,
                            decoration: const InputDecoration(
                              filled: true,
                              fillColor: Color.fromARGB(111, 37, 37, 37),
                              label: Text(
                                "Password",
                                style: TextStyle(
                                    fontSize: 20, color: Colors.white),
                              ),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          Padding(
                            padding: EdgeInsets.only(
                                left: MediaQuery.of(context).size.width / 3),
                            child: const Text(
                              "Reset password",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                          const SizedBox(
                            height: 20,
                          ),
                          GestureDetector(
                            onTap: () {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => const Dashboard()));
                            },
                            child: Container(
                              height: MediaQuery.of(context).size.height / 15,
                              width: MediaQuery.of(context).size.width - 60,
                              decoration: const BoxDecoration(
                                  color: Colors.white,
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(12))),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: const [
                                  Icon(
                                    Icons.lock,
                                    color: Colors.green,
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Connexion",
                                    style: TextStyle(
                                        color: Color.fromARGB(179, 76, 175, 79),
                                        fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Row(
                    textDirection: TextDirection.rtl,
                    children: [
                      Image.asset(
                        "assets/images/R.png",
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 7.5,
                      )
                    ],
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
