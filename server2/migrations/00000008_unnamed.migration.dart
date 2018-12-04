import 'dart:async';

import 'package:aqueduct/aqueduct.dart';   

class Migration8 extends Migration { 
  @override
  Future upgrade() async {
   database.createTable(SchemaTable("_ScfRhsRelationship", [
SchemaColumn("id", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),
SchemaColumn.relationship("lhsRelationship", ManagedPropertyType.integer, relatedTableName: "_ScfRelationship", relatedColumnName: "id", rule: DeleteRule.nullify, isNullable: true, isUnique: true),
SchemaColumn.relationship("rhsTable", ManagedPropertyType.integer, relatedTableName: "_ScfTable", relatedColumnName: "id", rule: DeleteRule.nullify, isNullable: true, isUnique: false),
],
));


  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    