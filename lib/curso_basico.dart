import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:http/http.dart' as http;

class CursoBasicoPage extends StatefulWidget {
  const CursoBasicoPage({super.key});

  @override
  State<CursoBasicoPage> createState() => _CursoBasicoPageState();
}

class _CursoBasicoPageState extends State<CursoBasicoPage> {
  List<dynamic> data = [];
  Future<void> fetcData() async {
    final response =
        await http.get(Uri.parse("https://www.yanditv.com/api/curso_basico"));
    if (response.statusCode == 200) {
      setState(() {
        data = json.decode(response.body);
      });
    } else {
      throw Exception("Failed to load data");
    }
  }

  @override
  void initState() {
    super.initState();
    fetcData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (BuildContext context, index) {
              return Container(
                width: MediaQuery.of(context).size.width,
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.all(20),
                height: 195,
                decoration: BoxDecoration(
                  color: (data[index]['carrera'] == "")
                      ? Colors.blue
                      : HexColor("#FF0000"),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CircleAvatar(
                          child: Text(data[index]['nombre'][0]),
                        ),
                        Text(
                          data[index]['nombre'],
                          style: const TextStyle(
                              fontWeight: FontWeight.w700,
                              fontSize: 17,
                              color: Colors.white),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Text(
                            data[index]['cedula'],
                            style: const TextStyle(
                                fontSize: 15, color: Colors.white70),
                          ),
                        ),
                        Text(
                          data[index]['correo'],
                          style: const TextStyle(
                              fontSize: 15, color: Colors.white70),
                        ),
                        Text(
                          data[index]['celular'],
                          style: const TextStyle(
                              fontSize: 15, color: Colors.white70),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              (data[index]['carrera'] == "")
                                  ? "EXTERNO"
                                  : data[index]['carrera'],
                              style: const TextStyle(
                                  fontSize: 15, color: Colors.white70),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              );
            }),
      ),
    );
  }
}
