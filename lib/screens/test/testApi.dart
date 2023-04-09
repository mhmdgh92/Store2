import 'StudentModel.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class TestApi extends StatefulWidget {
  const TestApi({Key? key}) : super(key: key);

  @override
  _TestApiState createState() => _TestApiState();
}

class _TestApiState extends State<TestApi> {

  late StudentModel studentModel = new StudentModel();

  @override
  void initState() {
    getStudent();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Container(
        alignment: Alignment.center,
        color: Colors.white,
        child: Text(studentModel.name, style: TextStyle(fontSize: 25)),
      ),
    );
  }

  void getStudent() async {
    var httpsUri = Uri.https('gorest.co.in','/public/v2/users/4126');
    final url = httpsUri;
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final jsonStudent = jsonDecode(response.body);
      setState(() {
        studentModel=StudentModel.fromJson(jsonStudent);
      });
    } else {
      throw Exception();
    }
  }
}
