import 'package:flutter/material.dart';


class Action3 extends StatefulWidget {
  const Action3({Key? key}) : super(key: key);

  @override
  State<Action3> createState() => _Action3State();
}

class _Action3State extends State<Action3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Action 3"),
      ),
    );
  }
}
