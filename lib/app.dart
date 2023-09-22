import 'package:realm/realm.dart'; 

part 'app.g.dart';

@RealmModel() 
class _Hero {

  late String thumbnailUrl;
  late String name;
  late List<String> listOfComics;
}
