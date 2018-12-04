import 'dart:async';

import 'package:aqueduct/aqueduct.dart';   

class Migration2 extends Migration { 
  @override
  Future upgrade() async {
   database.createTable(SchemaTable("_ScfSchema", [
SchemaColumn("id", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),
SchemaColumn("name", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: true),
SchemaColumn("aliasName", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: true),
SchemaColumn("description", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, defaultValue: "''", isIndexed: false, isNullable: false, isUnique: false),
SchemaColumn("rdms", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: false),
SchemaColumn("importAt", ManagedPropertyType.datetime, isPrimaryKey: false, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),
],
));

database.createTable(SchemaTable("_ScfTable", [
SchemaColumn("id", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),
SchemaColumn("name", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: true),
SchemaColumn("aliasName", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: true),
SchemaColumn("description", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, defaultValue: "''", isIndexed: false, isNullable: false, isUnique: false),
SchemaColumn.relationship("schema", ManagedPropertyType.integer, relatedTableName: "_ScfSchema", relatedColumnName: "id", rule: DeleteRule.cascade, isNullable: true, isUnique: false),
],
));

database.createTable(SchemaTable("_ScfRelationship", [
SchemaColumn("id", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),
SchemaColumn("name", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: true),
SchemaColumn("aliasName", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: true, isNullable: false, isUnique: true),
SchemaColumn("description", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, defaultValue: "''", isIndexed: false, isNullable: false, isUnique: false),
SchemaColumn.relationship("lhsTable", ManagedPropertyType.integer, relatedTableName: "_ScfTable", relatedColumnName: "id", rule: DeleteRule.cascade, isNullable: true, isUnique: false),
],
));

database.createTable(SchemaTable("_ScfRhsRelationship", [
SchemaColumn("id", ManagedPropertyType.integer, isPrimaryKey: true, autoincrement: true, isIndexed: false, isNullable: false, isUnique: false),
SchemaColumn.relationship("lhsRelationship", ManagedPropertyType.integer, relatedTableName: "_ScfRelationship", relatedColumnName: "id", rule: DeleteRule.nullify, isNullable: true, isUnique: true),
SchemaColumn.relationship("rhsTable", ManagedPropertyType.integer, relatedTableName: "_ScfTable", relatedColumnName: "id", rule: DeleteRule.nullify, isNullable: true, isUnique: false),
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
    