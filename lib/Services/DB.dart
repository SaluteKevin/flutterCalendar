
import 'package:calendar_app/Managers/DatabaseInstance.dart';

class DB{
  static var instance;
  DB();

  static getDB(){
    instance ??= DatabaseInstance();

    return instance;
  }
}