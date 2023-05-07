import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:match_remainder/pages/HomePage.dart';
import 'package:match_remainder/pages/Maintenance/Demande.dart';
import 'package:match_remainder/pages/Maintenance/reservation.dart';
import 'package:match_remainder/pages/equipe/DemandeEquipe.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: 16),
                  child: Text(
                    "Admin Dashboard",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Image.asset(
                  "assets/images/admin.png",
                  width: MediaQuery.of(context).size.width / 3,
                  height: MediaQuery.of(context).size.height / 7.5,
                )
              ],
            ),
            const SizedBox(
              height: 40,
            ),
            Expanded(
              flex: 4,
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                children: [
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const homePage()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3.5,
                      decoration: const BoxDecoration(
                          color: Colors.amberAccent,
                          border: Border.fromBorderSide(BorderSide(
                              width: 8,
                              color: Color.fromARGB(164, 0, 125, 4)))),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/calender.png",
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.height / 7.5,
                            color: Colors.black,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "Show Planning ",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DemandeEquipe()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3.5,
                      decoration: const BoxDecoration(
                          color: Colors.amberAccent,
                          border: Border.fromBorderSide(BorderSide(
                              width: 8,
                              color: Color.fromARGB(164, 0, 125, 4)))),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/player.png",
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.height / 7.5,
                            color: Colors.black,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "les Demandes Des Reservations",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const DemandeMantenance()));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 3.5,
                      decoration: const BoxDecoration(
                          color: Colors.amberAccent,
                          border: Border.fromBorderSide(BorderSide(
                              width: 8,
                              color: Color.fromARGB(164, 0, 125, 4)))),
                      child: Column(
                        children: [
                          Image.asset(
                            "assets/images/maintenance.png",
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.height / 7.5,
                            color: Colors.black,
                          ),
                          const Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              "les Demandes De Maintenances",
                              style:
                                  TextStyle(color: Colors.black, fontSize: 18),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: MediaQuery.of(context).size.height / 3.5,
                    decoration: const BoxDecoration(
                        color: Colors.amberAccent,
                        border: Border.fromBorderSide(BorderSide(
                            width: 8, color: Color.fromARGB(164, 0, 125, 4)))),
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/images/stats.png",
                          width: MediaQuery.of(context).size.width / 3,
                          height: MediaQuery.of(context).size.height / 7.5,
                          color: Colors.black,
                        ),
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            "Statistique",
                            style: TextStyle(color: Colors.black, fontSize: 18),
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
