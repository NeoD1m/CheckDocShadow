import 'dart:convert';
import 'dart:developer' as developer;
import 'package:http/http.dart' as http;

import '../constant.dart';

// TODO пофиксить проблемы с CORS
Future<dynamic> createTaskOnBackend() async {
  developer.log("[BACKEND] Task created");

  return await http.post(
    Uri.parse('$apiUrl/tasks'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{}),
  );
}

Future<dynamic> uploadFileToBackend() async {
  developer.log("[BACKEND] File uploaded");

  return await http.post(
    Uri.parse('$apiUrl/bodyContents/upload-file'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{}),
  );
}