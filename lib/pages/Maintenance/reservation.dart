import 'package:flutter/material.dart';
import 'package:match_remainder/pages/Maintenance/statistique.dart';

class Reservation extends StatefulWidget {
  const Reservation({super.key});

  @override
  State<Reservation> createState() => _ReservationState();
}

class _ReservationState extends State<Reservation> {
  late DateTime _selectedDate = new DateTime.now();

  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1881),
      lastDate: DateTime(2100),
    );

    if (picked != null && picked != _selectedDate) {
      setState(() {
        _selectedDate = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(164, 0, 125, 4),
        body: SingleChildScrollView(
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => const Stats()));
                  },
                  child: Image.asset(
                    "assets/images/icon-gren.png",
                    color: Colors.white,
                    width: MediaQuery.of(context).size.width / 3,
                    height: MediaQuery.of(context).size.height / 7.5,
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(right: 12),
                  child: Text(
                    "Match Mainder",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: "Lobster",
                        fontSize: 30),
                  ),
                )
              ],
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
                        Stack(
                          children: [
                            TextFormField(
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(111, 37, 37, 37),
                                label: Text(
                                  "Date Debut",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 20,
                              top: 8,
                              child: IconButton(
                                onPressed: () {
                                  _selectDate(context);
                                  debugPrint("date selected:  + $_selectDate");
                                },
                                icon: const Icon(
                                  Icons.calendar_month_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        Stack(
                          children: [
                            TextFormField(
                              style: const TextStyle(
                                  color: Colors.white, fontSize: 20),
                              decoration: const InputDecoration(
                                filled: true,
                                fillColor: Color.fromARGB(111, 37, 37, 37),
                                label: Text(
                                  "Date Fin ",
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.white),
                                ),
                              ),
                            ),
                            Positioned(
                              right: 20,
                              top: 8,
                              child: IconButton(
                                onPressed: () {
                                  _selectDate(context);
                                  debugPrint("date selected:  + $_selectDate");
                                },
                                icon: const Icon(
                                  Icons.calendar_month_outlined,
                                  size: 30,
                                  color: Colors.white,
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(111, 37, 37, 37),
                            label: Text(
                              "Description .... ",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        TextFormField(
                          style: const TextStyle(
                              color: Colors.white, fontSize: 20),
                          decoration: const InputDecoration(
                            filled: true,
                            fillColor: Color.fromARGB(111, 37, 37, 37),
                            label: Text(
                              "Status",
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        ),
                        GestureDetector(
                          onTap: () {},
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
                                  Icons.send,
                                  color: Colors.green,
                                  size: 20,
                                ),
                                SizedBox(
                                  width: 10,
                                ),
                                Text(
                                  "Envoyer Demande",
                                  style: TextStyle(
                                      color: Colors.green, fontSize: 20),
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
