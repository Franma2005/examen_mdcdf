import 'package:flutter/material.dart';

class PistasScreen extends StatelessWidget {
  const PistasScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Pistas")),
        body: const Card(
          child: Column(children: [
            NetworkImage("https://eeze47eafj4.exactdn.com/es/wp/wp-content/uploads/2022/11/todos-tipos-pistas-de-padel.jpg?v=1.0.32//eeze47eafj4.exactdn.com/es/wp/wp-content/uploads/2022/11/todos-tipos-pistas-de-padel.jpg?v=1.0.32"),
            Text("Non commodo pariatur aliqua officia incididunt. Esse incididunt minim eu proident sunt. Dolor veniam eiusmod proident ex.")
          ]),
        ));
  }
}
