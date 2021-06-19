import 'package:sqflite/sqflite.dart';

class StudentDAO {
  static const _databaseName = "database.db";
  static const _tableName = "students";
  static const _table =
      "CREATE TABLE $_tableName(registration INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, email TEXT)";
  static late Database db;

  static Future<Database> _getConnection() async {
    String databasesPath = await getDatabasesPath();
    String path = "$databasesPath $_databaseName";
    Database database =
        await openDatabase(
          path,
          version: 1,
          onCreate: (Database db, int version) {
      db.execute(_table);
    });
    return database;
  }

  static Future<int> insertRecord(Map<String, dynamic> data) async {
    db = await _getConnection();
    return await db.insert(_tableName, data);
  }
}
