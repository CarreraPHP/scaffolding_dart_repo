import 'dart:async';

import 'package:aqueduct/aqueduct.dart';   

class Migration6 extends Migration { 
  @override
  Future upgrade() async {
   database.alterColumn("_ScfTable", "schema", (c) {
c.deleteRule = DeleteRule.cascade;
});



  }
  
  @override
  Future downgrade() async {}
  
  @override
  Future seed() async {}
}
    