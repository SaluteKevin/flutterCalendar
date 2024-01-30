import 'package:postgres/postgres.dart';

class DatabaseInstance {

DatabaseInstance(){
}

 getInstance() async {
  var conn = await Connection.open(
  Endpoint(
    host: 'http://localhost',
    port: 5432, // Default PostgreSQL port
    database: 'mydatabase',
    username: 'myuser',
    password: 'mypassword',
  ),);
  return conn;
}

}
