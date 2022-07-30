import 'package:flutter/material.dart';
import 'package:flutter_quiz/todo/widgets/top_bar.dart';
import 'package:provider/provider.dart';

import '../models/widgets/provider_dat.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        children: [
          TopBar(),
          Text(context.watch<ProvderData>().getData),
          Myfield(),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {},
        elevation: 5,
        tooltip: 'Add task',
      ),
    );
  }
}

class Myfield extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Text(context.read<ProvderData>().result),
        TextField(
          onChanged: (newdata) =>
              context.read<ProvderData>().changeData(newdata),
        ),
        NameField(),
      ],
    );
  }
}

class NameField extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Text(context.read<ProvderData>().nameData);
  }
}
