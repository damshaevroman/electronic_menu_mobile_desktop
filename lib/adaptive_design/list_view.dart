import 'dart:convert';

import 'package:flutter/material.dart';

class MainListMenu extends StatelessWidget {
  final List<String> events = [
    "http://192.168.31.142:8090/main_1.jpg",
    "http://192.168.31.142:8090/main_2.jpg",
    "http://192.168.31.142:8090/main_3.jpg",
    "http://192.168.31.142:8090/main_4.jpg",
    "http://192.168.31.142:8090/main_5.jpg",
    "http://192.168.31.142:8090/main_6.jpg",
  ];

  final List myJson = [
    {"url": "http://192.168.31.142:8090/main_1.jpg", "food": "Наборы еды"},
    {"url": "http://192.168.31.142:8090/main_2.jpg", "food": "Фрукты"},
    {"url": "http://192.168.31.142:8090/main_3.jpg", "food": "Салаты"},
    {
      "url": "http://192.168.31.142:8090/main_4.jpg",
      "food": "Вегетарианская кухня"
    },
    {"url": "http://192.168.31.142:8090/main_5.jpg", "food": "Бургеры"},
    {
      "url": "http://192.168.31.142:8090/main_6.jpg",
      "food": "Приготовление по выбору"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          color: Colors.grey,
          child: ListView.separated(
            physics: const BouncingScrollPhysics(),
            // padding: const EdgeInsets.all(15),
            itemCount: myJson.length,
            itemBuilder: (_, index) => MainMenuItem(myJson[index]),

            // Text(
            //   events[index],
            //   style: const TextStyle(fontSize: 60),

            // ),
            separatorBuilder: (_, __) => const Divider(
              color: Colors.grey,
              thickness: 2,
            ),
          ),
        ),
      ),
    );
  }
}

class MainMenuItem extends StatelessWidget {
  late Map<String, String> infodata;

  MainMenuItem(Map<String, String> mainMenuJson, {Key? key}) : super(key: key) {
    infodata = mainMenuJson;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10.0),
      child: Stack(
        children: [
          Image.network(infodata["url"].toString()),
          Container(
              padding: EdgeInsets.all(5.0),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.7),
                  borderRadius:
                      BorderRadius.only(bottomRight: Radius.circular(10.0))),
              // alignment: Alignment.topLeft,

              child: Text(
                infodata['food'].toString(),
                style: TextStyle(color: Colors.white, fontSize: 16),
              ))
        ],
      ),
    );
  }
}
