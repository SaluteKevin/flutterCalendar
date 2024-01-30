import 'package:postgres/postgres.dart';

Future<void> createTable(Connection conn, String tableName) async {
  await conn.execute(
    """
    CREATE TABLE $tableName (
      id SERIAL PRIMARY KEY,
      name VARCHAR(255) NOT NULL,
      age INTEGER
    )
    """,
  );
}
