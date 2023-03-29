import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        backgroundColor: const Color.fromARGB(255, 239, 239, 239),
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: Center(
            child: ListView(
          reverse: true,
          children: [
            listElement(),
            listElement(),
            listElement(),
            listElement(),
            listElement(),
            listElement(),
            listElement(),
            listElement(),
            listElement(),
            listElement(),
            listElement(),
            const Text("Hello"),
            ElevatedButton(onPressed: () {}, child: const Text("Button"))
          ],
        )),
      ),
    );
  }

  SingleChildScrollView singleChildScrollView() {
    return SingleChildScrollView(
      child: Column(
        children: [
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
          listElement(),
        ],
      ),
    );
  }

  Column listElement() {
    return Column(
      children: const [
        Card(
          child: ListTile(
            leading: CircleAvatar(
              child: Icon(Icons.account_circle),
            ),
            title: Text("Title"),
            subtitle: Text("Sub Title"),
            trailing: Icon(Icons.call),
          ),
        ),
        Divider(
          color: Colors.grey,
          indent: 5,
          thickness: 3,
          endIndent: 5,
        ),
      ],
    );
  }
}
