import 'package:flutter/material.dart';

class AdptiveDesign extends StatefulWidget {
  const AdptiveDesign({Key? key}) : super(key: key);

  @override
  State<AdptiveDesign> createState() => _AdptiveDesignState();
}

class _AdptiveDesignState extends State<AdptiveDesign> {
  @override
  Widget build(BuildContext context) {
    final currentWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        // backgroundColor: currentWidth < 600 ? Colors.amber : Colors.green,
        body: Center(child: Text(currentWidth.toString())));
  }
}
