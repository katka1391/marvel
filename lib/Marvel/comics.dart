import 'package:flutter/material.dart';

class Comic extends StatelessWidget {
  final List<String> listOfComics;

  const Comic({super.key, required this.listOfComics});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zoznam Komixov'),
      ),
      body: ListView.builder(
        itemCount: listOfComics.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            title: Text(listOfComics[index]),
          );
        },
      ),
    );
  }
}
