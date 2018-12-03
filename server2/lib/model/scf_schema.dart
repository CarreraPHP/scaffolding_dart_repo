import '../server2.dart';

class ScfSchema extends ManagedObject<_ScfSchema> implements _ScfSchema {}

class _ScfSchema {
  @Column(autoincrement: true, primaryKey: true, nullable: false)
  int id;

  @Column(unique: true, nullable: false, indexed: true)
  String name;

  @Column(unique: true, nullable: false, indexed: true)
  String aliasName;

  @Column(defaultValue: "''")
  String description;

  String rdms;

  @Column(autoincrement: true, nullable: false)
  DateTime importAt;

  ManagedSet<ScfTable> tables;
}
