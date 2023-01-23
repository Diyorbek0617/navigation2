import 'package:flutter/material.dart';

class Action2 extends StatefulWidget {
  static const valueKey = ValueKey('UserDetailsView');
  final String user;
  const Action2({required this.user});

  @override
  State<Action2> createState() => _Action2State();
}

class _Action2State extends State<Action2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Action 2"),
      ),
        body: Center(child: Text('Hello, ${widget.user}')),
    );
  }
}
