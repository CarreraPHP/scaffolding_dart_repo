import '../../server2.dart';

class ScfRhsRelationship extends ManagedObject<_ScfRhsRelationship>
    implements _ScfRhsRelationship {}

class _ScfRhsRelationship {
  @Column(autoincrement: true, primaryKey: true, nullable: false)
  int id;

  @Relate(#rhsRelationship)
  ScfRelationship lhsRelationship;

  @Relate(#rhsRelationships)
  ScfTable rhsTable;
}
