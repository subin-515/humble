
 
import 'dart:convert';
import 'package:example/model/unadmitted.dart';
import 'package:http/http.dart' as http;

  Future<List<Unadmitted>> fetchUnadmittedUsers() async {
    final response = await http.get(
      Uri.parse(
          'https://ukproject-dx1c.onrender.com/api/admin/getUnadmittedUsers'),
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> json = jsonDecode(response.body);

      if (json['success'] == true) {
        final List<dynamic> users = json['unadmittedUsers'];

        return users.map((item) => Unadmitted.fromJson(item)).toList();
      } else {
        throw Exception('Failed to fetch users: ${json['message']}');
      }
    } else {
      throw Exception(
          'Failed to load unadmitted users. Status code: ${response.statusCode}');
    }
  }