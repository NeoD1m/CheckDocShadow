import 'dart:convert';
import 'dart:developer' as developer;
import 'dart:typed_data';
import 'package:http/http.dart' as http;
import 'dart:io';

import '../constant.dart';
import '../pages/upload_page/upload_page.dart';

Future<dynamic> createTaskOnBackend() async {
  developer.log("[createTaskOnBackend] Starting...");

  Future<http.Response> response = http.post(
    Uri.parse('$apiUrl/tasks'),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
      'Accept': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{}),
  );
  response.whenComplete(() => developer.log("[createTaskOnBackend] Finished"));
  return response;
}

// Future<dynamic> uploadFileToBackend(int taskId, FileDataModel file) async {
//   developer.log("[uploadFileToBackend] Starting...");
//
//   Future<http.Response> response = http.post(
//     Uri.parse('$apiUrl/tasks/$taskId/docList'),
//     headers: <String, String>{
//       'Content-Type': 'application/json; charset=UTF-8',
//       'Accept': 'application/json; charset=UTF-8',
//     },
//     body: file,
//   );
//
//   response.whenComplete(() => developer.log("[uploadFileToBackend] Finished"));
//   return response;
// }

Future<dynamic> uploadFileToBackend({required String filename, required int taskId,required Uint8List data}) async {

  var request = http.MultipartRequest('POST', Uri.parse('$apiUrl/tasks/$taskId/docList'));
  request.files.add(
      http.MultipartFile.fromBytes(
          'file',
          data,
          filename: filename
      )
  );
  var res = await request.send();

  developer.log("[uploadFile] $res");
}
