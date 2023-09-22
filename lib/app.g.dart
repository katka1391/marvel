// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.dart';

// **************************************************************************
// RealmObjectGenerator
// **************************************************************************

class Hero extends _Hero with RealmEntity, RealmObjectBase, RealmObject {
  Hero(
    String thumbnailUrl,
    String name, {
    Iterable<String> listOfComics = const [],
  }) {
    RealmObjectBase.set(this, 'thumbnailUrl', thumbnailUrl);
    RealmObjectBase.set(this, 'name', name);
    RealmObjectBase.set<RealmList<String>>(
        this, 'listOfComics', RealmList<String>(listOfComics));
  }

  Hero._();

  @override
  String get thumbnailUrl =>
      RealmObjectBase.get<String>(this, 'thumbnailUrl') as String;
  @override
  set thumbnailUrl(String value) =>
      RealmObjectBase.set(this, 'thumbnailUrl', value);

  @override
  String get name => RealmObjectBase.get<String>(this, 'name') as String;
  @override
  set name(String value) => RealmObjectBase.set(this, 'name', value);

  @override
  RealmList<String> get listOfComics =>
      RealmObjectBase.get<String>(this, 'listOfComics') as RealmList<String>;
  @override
  set listOfComics(covariant RealmList<String> value) =>
      throw RealmUnsupportedSetError();

  @override
  Stream<RealmObjectChanges<Hero>> get changes =>
      RealmObjectBase.getChanges<Hero>(this);

  @override
  Hero freeze() => RealmObjectBase.freezeObject<Hero>(this);

  static SchemaObject get schema => _schema ??= _initSchema();
  static SchemaObject? _schema;
  static SchemaObject _initSchema() {
    RealmObjectBase.registerFactory(Hero._);
    return const SchemaObject(ObjectType.realmObject, Hero, 'Hero', [
      SchemaProperty('thumbnailUrl', RealmPropertyType.string),
      SchemaProperty('name', RealmPropertyType.string),
      SchemaProperty('listOfComics', RealmPropertyType.string,
          collectionType: RealmCollectionType.list),
    ]);
  }
}
