import 'package:flutter/material.dart';
import 'package:match_remainder/pages/Maintenance/reservation.dart';

class homePage extends StatefulWidget {
  const homePage({super.key});

  @override
  State<homePage> createState() => _homePageState();
}

class _homePageState extends State<homePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color.fromARGB(255, 252, 246, 246),
        body: Stack(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(right: 12),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        "assets/images/icon-gren.png",
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 7.5,
                      ),
                      Image.asset(
                        "assets/images/admin.png",
                        width: MediaQuery.of(context).size.width / 3,
                        height: MediaQuery.of(context).size.height / 7.5,
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 40),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Form(
                    child: Column(
                      children: [
                        Stack(children: [
                          TextFormField(
                            decoration: const InputDecoration(
                                hintText: "Rechercher ...",
                                filled: true,
                                fillColor: Color.fromARGB(249, 255, 238, 238)),
                          ),
                          Positioned(
                            right: 20,
                            top: 8,
                            child: IconButton(
                              onPressed: () {},
                              icon: const Icon(
                                Icons.search,
                                color: Colors.green,
                                size: 30,
                              ),
                            ),
                          )
                        ])
                      ],
                    ),
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Reservation()));
                    },
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 3,
                        itemBuilder: (context, index) {
                          return Column(
                            children: [
                              Image.network(
                                "https://th.bing.com/th/id/R.e1b61646e61bccf4768b82e70266b056?rik=bQ%2bcMDxyPQrEVQ&riu=http%3a%2f%2fwww.gnet.tn%2fimages%2fstories%2frsport%2f201510%2fstadesousse.jpg&ehk=2kJKTKi0GqiqetcItTF2NO2tgbwhd29zlRP%2bYe3gdAY%3d&risl=&pid=ImgRaw&r=0",
                                height: 350,
                                width: 350,
                              ),
                              const Text(
                                "Stade Olympique de Sousse ",
                                style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.black,
                                    fontFamily: "Oswald"),
                              )
                            ],
                          );
                        }),
                  ),
                )
              ],
            ),
            Positioned(
              right: 0,
              bottom: 0,
              child: Row(
                children: [
                  Image.asset(
                    "assets/images/grass.png",
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height / 5.5,
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
