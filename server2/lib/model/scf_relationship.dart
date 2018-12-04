import '../server2.dart';

class ScfRelationship extends ManagedObject<_ScfRelationship>
    implements _ScfRelationship {}

class _ScfRelationship {
  @Column(autoincrement: true, primaryKey: true, nullable: false)
  int id;

  /// Constraint name
  @Column(unique: true, nullable: false, indexed: true)
  String name;

  @Column(unique: true, nullable: false, indexed: true)
  String aliasName;

  @Column(defaultValue: "''")
  String description;

  @Relate(#relationships, onDelete: DeleteRule.cascade)
  ScfTable lhsTable;

  ManagedSet<ScfColumn> lhsColumns;

  ScfRhsRelationship rhsRelationship;
}
