import '../scaffolding_api.dart';

class ScfTable extends ManagedObject<_ScfTable> implements _ScfTable {}

class _ScfTable {
  
  @Column(autoincrement: true, primaryKey: true, nullable: false)
  int id;

  @Column(unique: true, nullable: false, indexed: true)
  String name;

  @Column(unique: true, nullable: false, indexed: true)
  String aliasName;

  @Column(defaultValue: "''")
  String description;

  @Relate(#tables, onDelete: DeleteRule.cascade)
  ScfSchema schema;

  ManagedSet<ScfColumn> columns;

  ManagedSet<ScfRelationship> relationships;

  ManagedSet<ScfRhsRelationship> rhsRelationships;
}