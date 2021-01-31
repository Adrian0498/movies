import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';

class DataBaseHelper {
  static final _nombreDB = "MOVIESDB";
  static final _version = 1;

  static Database _database;
  Future<Database> get database async {
    if (_database != null) return _database;
    _database = await _initDatabase();
    return _database;
  }

  _initDatabase() async {
    Directory carpeta = await getApplicationDocumentsDirectory();
    String rutaDB = join(carpeta.path, _nombreDB);
    return openDatabase(
      rutaDB, 
      version: _version, 
      onCreate: _crearTablas()
      );
  }
  _crearTablas()async{
    _database.execute("")
  }
}

//CREATE TABLE tbl_movies(id_movie INTEGER PRIMARY KEY,title varchar(20),backdrop_path varchar(100),

