import 'package:mysql_client/mysql_client.dart';

Future<void> main(List<String> arguments) async {
  print("Connecting to MySQL server...");

final conn = await MySQLConnection.createConnection(
  host: "localhost",
  port: 3306,
  userName: "root",
  password: "root",
  databaseName: "projet", 
);

await conn.connect();
print('hello');

var stmt = await conn.prepare(
  "INSERT INTO dispose (id_acces, id_bien) VALUES (?, ?, ?)",
);

await stmt.execute([1, 18]);
await stmt.execute([2, 18]);
await stmt.deallocate();
}