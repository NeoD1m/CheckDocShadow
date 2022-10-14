import 'dart:convert';
import 'dart:developer' as developer;
import 'package:http/http.dart' as http;

import '../constant.dart';

Future<http.Response> createTaskOnBackend() {
  developer.log("[TASK-BACKEND] Tried to create a task.");
  return http.post(
    Uri.parse('$apiUrl/tasks'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json; charset=UTF-8',
      'Host': '',
      'Content-Length': ''
    },
    body: jsonEncode(<String, String>{}),
  );
}
