import 'dart:io';
import 'package:path/path.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';


class DBProvider {
  static final dbname = "myDatabase.db";
  //crear el constructor
  DBProvider._privateConstructor();

  static final DBProvider db = DBProvider._privateConstructor();
  static Database? _database;

   Future<Database?> get database async {
    if (_database != null) return _database;
    // lazily instantiate the db the first time it is accessed
    _database = await initiateDatabase();
    return _database;
  }
/*
  Future<Database?> _initDatabase() async{
      // path donde almacenamos la bd
      Directory documentDirectory = await getApplicationDocumentsDirectory();
      final path = join(documentDirectory.path, 'ScansDB.db');
      print(path);

      return await openDatabase(
        path,
        version: 1,
        onOpen: (db){},
        onCreate: (Database db, int version) async {
            await db.execute('''
              CREATE TABLE Scans (
                id INTEGER PRIMARY KEY,
                Tipo TEXT,
                valor TEXT
              )
            ''');
        }
      );
  }
  */
  initiateDatabase() async {
    Directory directory = await getApplicationDocumentsDirectory();
    String path = join(directory.path,dbname );
    print(path);
    return await openDatabase(path, version: 1, onCreate: onCreate);
  }
    Future onCreate(Database db, int dbversion) async {
    return await db.execute('''
         CREATE TABLE Scans (
                id INTEGER PRIMARY KEY,
                Tipo TEXT,
                valor TEXT
              )
      ''');
  }



}