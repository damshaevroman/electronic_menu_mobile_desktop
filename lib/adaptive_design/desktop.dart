import 'package:flutter/material.dart';

// ignore: camel_case_types
class desktop extends StatelessWidget {
  const desktop({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[200],
      appBar: AppBar(
        title: const Text('Desktop'),
      ),
      body: Row(
        children: [
          Expanded(
            child: Row(children: [
              Flexible(
                flex: 1,
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    color: Colors.amberAccent,
                    child: Column(children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 0.2),
                        child: TextButton.icon(
                          onPressed: (() => {}),
                          icon: const Icon(Icons.network_check),
                          label: const Text('VPN clients'),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 0.2),
                        child: TextButton.icon(
                          onPressed: (() => {}),
                          icon: const Icon(Icons.lan),
                          label: const Text('News'),
                        ),
                      ),
                      TextButton(
                          onPressed: (() => {}),
                          child: const Text('VPN server')),
                    ]),
                  ),
                ),
              ),
              Flexible(
                flex: 5,
                fit: FlexFit.tight,
                child: Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: Container(
                    color: Colors.green[400],
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
