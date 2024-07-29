import 'package:flutter/foundation.dart';
import 'package:sqflite/sqflite.dart';

late Database _db;

Future<void> initialisedb() async {
  _db = await openDatabase("loginDetails", version: 1,
      onCreate: (Database db, int version) async {
    // When creating the db, create the table
    await db.execute(
      'CREATE TABLE userinfo (id INTEGER PRIMARY KEY, email TEXT, password TEXT)',
    );
  });
  debugPrint('DB CREATED');
}

List<String> convertToList(List<Map<String, dynamic>> data) {
  return data.map((item) => item['email'] as String).toList();
}

Future<List<String>> getUserDetails() async {
  final _userdata = await _db.rawQuery('SELECT email FROM userinfo');

  print(" DATA FROM DB: \n $_userdata");

  // Convert the retrieved data to a list of emails
  List<String> emails = convertToList(_userdata);

  return emails;
}

Future<int> inserUserDetails(String email, String password) async {
  final insertvalue = await _db.rawInsert(
    'INSERT INTO userinfo(email,password)VALUES(?,?)',
    [email, password],
  );
  print(" DATA INSERTED: \n $insertvalue");

  return insertvalue;
}
