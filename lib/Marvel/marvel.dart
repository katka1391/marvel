import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:marvel/Marvel/comics.dart';
import 'package:realm/realm.dart'; 

//@RealmModel() 
class ListItem {
  final String thumbnailUrl;
  final String name;
  final List<String> listOfComics;

  ListItem({required this.thumbnailUrl, required this.name, required this.listOfComics});
}

List<ListItem> items = [
  ListItem(
      thumbnailUrl:
          'https://upload.wikimedia.org/wikipedia/en/4/47/Iron_Man_%28circa_2018%29.png',
      name: 'Iron Man',
      listOfComics: [
        'Extremis',
        'Demon in a Bottle',
        'Iron Man - Fatal Frontier',
      ]),
  ListItem(
    thumbnailUrl:
        'https://upload.wikimedia.org/wikipedia/en/b/bf/CaptainAmericaHughes.jpg',
    name: 'Captain America',
    listOfComics: [
        'Captain America: Sentinel of Liberty',
        'Captain America by Ed Brubaker - Volume 1',
        'Captain America: The Man with No Face',
      ]
  ),
  ListItem(
    thumbnailUrl:
        'https://upload.wikimedia.org/wikipedia/en/3/3c/Chris_Hemsworth_as_Thor.jpg',
    name: 'Thor',
    listOfComics: [
        'King Thor',
        'Steve Rogers: Super Soldier',
        'Iron Man - Fatal Frontier',
      ]
  ),
  ListItem(
    thumbnailUrl:
        'https://upload.wikimedia.org/wikipedia/en/0/0f/Tom_Holland_as_Spider-Man.jpg',
    name: 'Spider Man',
    listOfComics: [
        'Spider-Man: Big Time',
        'Demon in a Bottle',
        'Amazing Fantasy #15',
      ]
  ),
];

class Marvel extends StatelessWidget {
  const Marvel({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zoznam Marvel Hrdinov'),
      ),
      body: ListView.builder(
        itemCount: items.length,
        itemBuilder: (BuildContext context, int index) {
          return ListTile(
            contentPadding:
                const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
            leading: ClipOval(
              child: CachedNetworkImage(
                imageUrl: items[index].thumbnailUrl,
                width: 40,
                height: 40,
                placeholder: (context, url) => const CircularProgressIndicator(),
                errorWidget: (context, url, error) => const Icon(Icons.error),
              ),
            ),
            title: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Comic(listOfComics: items[index].listOfComics),
                  ),
                );
              },
              child: Text(items[index].name),
            ),
          );
        },
      ),
    );
  }
}
