import 'dart:developer';

import 'package:sqflite/sqflite.dart';

import 'addmeal.dart';

class DbHelper {
  DbHelper._();
  static DbHelper dbHelper = DbHelper._();
  late Database database;
  initDatabase() async {
    String appPath = await getDatabasesPath();
    String dbPath = appPath + '/Restaurant.db';
    database = await openDatabase(dbPath, version: 2, onCreate: (db, v) {
      db.execute(
          'CREATE TABLE Meals (id INTEGER PRIMARY KEY AUTOINCREMENT, name TEXT, cost REAL)');
    });
  }

  insertNewStudent(Meal student) async {
    try {
      int rowNumber = await database.insert('Meals', student.toMap());
      log(rowNumber.toString());
    } catch (e) {
      log("row has not been inserted");
    }
  }

  Future<List<Meal>> getAllStudents() async {
    await Future.delayed(const Duration(seconds: 3));
    List<Map> results = await database.query('Meals');
    List<Meal> students = results.map((e) => Meal.fromMap(e)).toList();
    return students;
  }

  Future<Meal> getStudentById(int id) async {
    List<Map> results = await database.query('Meals', where: 'id=$id');
    return Meal.fromMap(results.first);
  }

  deleteStudent(int id) async {
    await database.delete('Meals', where: 'id=$id');
  }

  updateStudent(Meal student) async {
    await database.update('Meals', student.toMap(), where: 'id=${student.id}');
  }
}
