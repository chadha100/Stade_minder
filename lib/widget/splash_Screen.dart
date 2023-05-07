import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:lottie/lottie.dart';
import 'package:match_remainder/pages/login.dart';

class Spalshscreen extends StatefulWidget {
  const Spalshscreen({super.key});

  @override
  State<Spalshscreen> createState() => _SpalshscreenState();
}

class _SpalshscreenState extends State<Spalshscreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Future.delayed(const Duration(seconds: 3)).then((value) =>
        Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (context) => const loginPage())));
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: const Color.fromARGB(157, 7, 255, 19),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // ignore: sized_box_for_whitespace
            Container(
              height: size.height / 2,
              width: size.width,
              child: LottieBuilder.asset(
                  "assets/animation/63704-soccer-ball.json"),
            ),
            const SizedBox(),
            const Center(
              child: Text(
                "Match Remainder ",
                textAlign: TextAlign.center,
                style: TextStyle(
                    fontFamily: "DynaPuff",
                    color: Color.fromARGB(255, 250, 250, 250),
                    fontSize: 32),
              ),
            )
          ],
        ),
      ),
    );
  }
}
