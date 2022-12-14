import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  TopBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        height: 300,
        padding: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: Image.asset('assets/images/3.png').image,
                fit: BoxFit.contain),
            gradient: LinearGradient(
              colors: [
                Colors.red,
                Colors.white,
              ],
              begin: Alignment.topCenter,
              end: Alignment.bottomCenter,
            )),
        child: SafeArea(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              CircleAvatar(
                backgroundColor: Color.fromRGBO(255, 0, 0, 0.3),
                child: IconButton(
                  icon: Icon(Icons.dehaze),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
              CircleAvatar(
                backgroundColor: Color.fromRGBO(255, 0, 0, 0.3),
                child: IconButton(
                  icon: Icon(Icons.calendar_today),
                  color: Colors.white,
                  onPressed: () {},
                ),
              ),
            ]),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  alignment: Alignment.centerLeft,
                  height: 50.0,
                  width: 150,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: [],
                  ),
                ),
                Chip(
                  backgroundColor: Color.fromRGBO(255, 0, 0, 0.5),
                  label: Text(
                    '02.06.2020',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                CircleAvatar(
                  backgroundColor: Color.fromRGBO(255, 0, 0, 0.3),
                  child: IconButton(
                    icon: Icon(Icons.calendar_today),
                    color: Colors.white,
                    tooltip: '???????????????? ????????????',
                    onPressed: () {},
                  ),
                ),
              ],
            )
          ],
        )));
  }
}
