import 'dart:async';

import 'package:aqueduct/aqueduct.dart';   

class Migration4 extends Migration { 
  @override
  Future upgrade() async {
   database.addColumn("_Schema", SchemaColumn("aliasName", ManagedPropertyType.string, isPrimaryKey: false, autoincrement: false, isIndexed: false, isNullable: false, isUnique: true), unencodedInitialValue: "''");



  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    