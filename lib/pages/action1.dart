import 'package:flutter/material.dart';

class Action1 extends StatefulWidget {
   final ValueChanged didSelectedUser;
   const Action1({required this.didSelectedUser});

  @override
  State<Action1> createState() => _Action1State();
}

class _Action1State extends State<Action1> {
  final _users = ["Kyle", "Adriana", "Andrew", "Xavier", "Mya"];
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Action 1"),
      ),
      body: ListView.builder(
          itemCount: _users.length,
          itemBuilder: (context, index) {
            final user = _users[index];
            return Card(
                child: ListTile(
                  title: Text(user),
                  onTap: () => widget.didSelectedUser(user),
                ));
          }),
    );
  }
}
