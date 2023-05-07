import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Stats extends StatefulWidget {
  const Stats({super.key});

  @override
  State<Stats> createState() => _StatsState();
}

class _StatsState extends State<Stats> {
  final List<String> items = ['Item 1', 'Item 2', 'Item 3', 'Item 4', 'Item 5'];
  RangeValues _currentRangeValues = const RangeValues(0, 100);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(children: [
          Row(
            children: [
              Image.asset(
                "assets/images/icon-gren.png",
                width: MediaQuery.of(context).size.width / 3,
                height: MediaQuery.of(context).size.height / 7.5,
              ),
              const Text(
                "Statistique de Maintenances",
                style: TextStyle(
                    color: Colors.green,
                    fontSize: 20,
                    fontFamily: "Helvetica",
                    fontWeight: FontWeight.bold),
              )
            ],
          ),
          Expanded(
            flex: 2,
            child: GridView.builder(
                scrollDirection: Axis.vertical,
                itemCount: 10,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisSpacing: 16.0,
                  crossAxisSpacing: 16.0,
                ),
                itemBuilder: (BuildContext context, int index) {
                  return ListView(
                    scrollDirection: Axis.vertical,
                    children: [
                      Column(
                        children: [
                          Image.network(
                            "https://th.bing.com/th/id/R.e1b61646e61bccf4768b82e70266b056?rik=bQ%2bcMDxyPQrEVQ&riu=http%3a%2f%2fwww.gnet.tn%2fimages%2fstories%2frsport%2f201510%2fstadesousse.jpg&ehk=2kJKTKi0GqiqetcItTF2NO2tgbwhd29zlRP%2bYe3gdAY%3d&risl=&pid=ImgRaw&r=0",
                            width: MediaQuery.of(context).size.width / 3,
                            height: MediaQuery.of(context).size.height / 5.5,
                          ),
                          const Text(
                            "Stade Opylpic de sousse ",
                            style: TextStyle(fontSize: 15),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 10),
                            child: RangeSlider(
                              values: _currentRangeValues,
                              min: 0,
                              max: 100,
                              divisions: 10,
                              labels: RangeLabels(
                                _currentRangeValues.start.round().toString(),
                                _currentRangeValues.end.round().toString(),
                              ),
                              onChanged: (RangeValues values) {
                                setState(() {
                                  _currentRangeValues = values;
                                });
                              },
                            ),
                          ),
                        ],
                      ),
                    ],
                  );
                }),
          )
        ]),
      ),
    );
  }
}
