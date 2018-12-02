import '../server2.dart';

class Schema extends ManagedObject<_Schema> implements _Schema {}

class _Schema {
  @primaryKey
  int id;

  @Column(unique: true)
  String name;

  @Column(unique: true)
  String aliasName;

  String description;

  String rdms;

  DateTime importAt;
}