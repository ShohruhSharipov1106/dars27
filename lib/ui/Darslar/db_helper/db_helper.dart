// STEP - 1
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path/path.dart';
import 'package:dars27/ui/Darslar/student_model.dart';

class DatabaseHelper {
  static DatabaseHelper? databaseHelper;
  static Database? database;

  factory DatabaseHelper() {
    if (databaseHelper == null) {
      databaseHelper = DatabaseHelper.internal();
      print("DB HELPER NULL EDI. KIRITILMOQDA !");
      return databaseHelper!;
    } else {
      print("DB HELPER BOR EDI. ESKISI ISHLATILMOQDA !");
      return databaseHelper!;
    }
  }

  DatabaseHelper.internal();

  Future<Database> _getDataBase() async {
    if (database == null) {
      print("DB KIRITILMOQDA");
      database = await initDatabase();
      return database!;
    } else {
      print("BOR DB OCHILDI !");
      return database!;
    }
  }

  initDatabase() async {
    Directory folder = await getApplicationDocumentsDirectory();
    String dbPath = join(folder.path, "student.db");
    print("DB PATH: ${dbPath}");
    var studentDb =
        await openDatabase(dbPath, version: 1, onCreate: _createTableDb);
    return studentDb;
  }

  Future<void> _createTableDb(Database db, int version) async {
    print("TABLE KIRITILMOQDA....");
    await db.execute(
        "CREATE TABLE students (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, aktivmi INTEGER");
  }

  Future<int> addStudent(Student st) async {
    var db = await _getDataBase();
    var result = db.insert("student", st.ToMapToDb());
    return result;
  }

  Future<List<Map<String, dynamic>>> getAllStudents() async {
    var db = await _getDataBase();
    var result = db.query('students');
    return result;
  }
}
