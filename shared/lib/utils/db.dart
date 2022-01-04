import 'package:postgres/postgres.dart';

Future<PostgreSQLConnection> connectToDb(String host, int port, String username,
    String password, String dbName, int dbVersion) async {
  final connection = PostgreSQLConnection(host, port, dbName,
      username: username, password: password);
  await connection.open();
  // Run migrations
  return connection;
}
