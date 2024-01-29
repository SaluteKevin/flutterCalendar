import 'dart:io';

import 'package:calendar_app/models/CalendarInfo.dart';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sembast/sembast.dart';
import 'package:sembast/sembast_io.dart';

class OrderDB{

  String dbName;

  OrderDB({required this.dbName});

  Future <Database> openDatabase() async{
    Directory appDirectory = await getApplicationDocumentsDirectory();
    String dbLocation = join(appDirectory.path,dbName);

    DatabaseFactory dbFactory = await databaseFactoryIo;
    Database db = await dbFactory.openDatabase(dbLocation);
    return db;
  }

  InsertData(CalendarInfo statement) async{
    var db = await this.openDatabase();
    var store = intMapStoreFactory.store("item");
  }
}