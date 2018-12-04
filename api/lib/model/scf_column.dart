import '../scaffolding_api.dart';

class ScfColumn extends ManagedObject<_ScfColumn> implements _ScfColumn {}

class _ScfColumn {
  @Column(autoincrement: true, primaryKey: true, nullable: false)
  int id;

  @Column(unique: true, nullable: false, indexed: true)
  String name;

  @Column(unique: true, nullable: false, indexed: true)
  String aliasName;

  @Column(defaultValue: "''")
  String description;

  String dataType;

  @Relate(#lhsColumns)
  ScfRelationship lhsRelationship;

  @Relate(#columns)
  ScfTable ownerTable;
}
