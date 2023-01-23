import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // variable null safety
   String? _selectedUser;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Navigator(
        pages:  [
          MaterialPage(child: Action1(
            didSelectedUser: (user){
              setState(()=>_selectedUser=user,
              );
            },
          )),
          if (_selectedUser != null)
            MaterialPage(
                child: Action2(user: _selectedUser!),
                key: Action2.valueKey)
        ],
        onPopPage: (route,result){
          final page = route.settings as MaterialPage;

          if (page.key == Action2.valueKey) {
            _selectedUser = null;
          }
          return route.didPop(result);
        },
      ),
    );
  }
}

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

