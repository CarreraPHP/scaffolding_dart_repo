import 'dart:async';

import 'package:aqueduct/aqueduct.dart';   

class Migration7 extends Migration { 
  @override
  Future upgrade() async {
   database.createTable(SchemaTable("_ScfRelationship", [
SchemaColumn("id", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),
SchemaColumn("name", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: true),
SchemaColumn("aliasName", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: true),
SchemaColumn("description", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, defaultValue: "''", isIndexed: false, isNullable: false, isUnique: false),
SchemaColumn.relationship("lhsTable", ManagedPropertyType.integer, relatedTableName: "_ScfTable", relatedColumnName: "id", rule: DeleteRule.cascade, isNullable: true, isUnique: false),
],
));

database.createTable(SchemaTable("_ScfColumn", [
SchemaColumn("id", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),
SchemaColumn("name", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: true),
SchemaColumn("aliasName", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: true),
SchemaColumn("description", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, defaultValue: "''", isIndexed: false, isNullable: false, isUnique: false),
SchemaColumn("dataType", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),
SchemaColumn.relationship("lhsRelationship", ManagedPropertyType.integer, relatedTableName: "_ScfRelationship", relatedColumnName: "id", rule: DeleteRule.nullify, isNullable: true, isUnique: false),
SchemaColumn.relationship("ownerTable", ManagedPropertyType.integer, relatedTableName: "_ScfTable", relatedColumnName: "id", rule: DeleteRule.nullify, isNullable: true, isUnique: false),
],
));


  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    