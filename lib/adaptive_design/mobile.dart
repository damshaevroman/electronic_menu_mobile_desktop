import 'package:flutter/material.dart';

import 'list_view.dart';

class Mobile extends StatelessWidget {
  const Mobile({Key? key}) : super(key: key);

  void backButton() {
    print('Button back');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Row(
        children: [
          Expanded(
            child: Column(children: [
              Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: MainListMenu(),
                ),
              ),
              Container(
                height: 70,
                color: Colors.grey,
                child: Container(
                  margin:
                      const EdgeInsets.only(left: 10, right: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.amberAccent,
                      borderRadius: BorderRadius.all(Radius.circular(10.0))),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                          onPressed: () {
                            print('News');
                          },
                          icon: const Icon(Icons.home)),
                      TextButton(
                          onPressed: () {
                            print('Order');
                          },
                          child: const Text(
                            'Order',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16.0,
                            ),
                          )),
                      Container(
                        decoration: const BoxDecoration(
                            color: const Color.fromARGB(255, 230, 214, 75),
                            borderRadius:
                                BorderRadius.all(Radius.circular(5.0))),
                        // color: const Color.fromARGB(255, 230, 214, 75),
                        // padding: const EdgeInsets.all(8.0),
                        child:
                            const Text('1000', style: TextStyle(fontSize: 14)),
                      )
                    ],
                  ),
                ),
              ),
            ]),
          ),
        ],
      ),
    );
  }
}
