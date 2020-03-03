import 'dart:async';
import 'dart:io';
import 'dart:typed_data';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:pdf_viewer_plugin/pdf_viewer_plugin.dart';
//

class PDF extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<PDF> {
  String path;
  @override
  initState() {
    loadPdf();
    super.initState();
  }

  Future<String> get _localPath async {
    try {
      final directory = await getApplicationDocumentsDirectory();

      return directory.path;
    } catch (e) {
      print('localpath $e');
      path = 'DESCARGA EL PDF';
    }
  }

  Future<File> get _localFile async {
    try {
      final path = await _localPath;
      return File('$path/opera.pdf');
    } catch (e) {
      print('localfile $e');
      path = 'DESCARGA EL PDF';
    }
  }

  Future<File> writeCounter(Uint8List stream) async {
    try {
      final file = await _localFile;

      return file.writeAsBytes(stream);
    } catch (e) {
      print('WriteCounter $e');
      path = 'DESCARGA EL PDF';
    }
  }

  Future<Uint8List> fetchPost() async {
    try {
      final response = await http.get('http://sezami.zacatecas.gob.mx/docs');
      final responseJson = response.bodyBytes;

      return responseJson;
    } catch (e) {
      print('FetchPost $e');
      path = 'DESCARGA EL PDF';
    }
  }

  loadPdf() async {
    try {
      writeCounter(await fetchPost());

      path = (await _localFile).path;

      if (!mounted) return;

      setState(() {});
    } catch (e) {
      print('¿Hola $e');
      path = 'DESCARGA EL PDF';
    }
  }

  @override
  Widget build(BuildContext context) {
    if (path != null) {
      return Center(
        //child: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: ((MediaQuery.of(context).size.height) * 3),
              width: (MediaQuery.of(context).size.width),
              child: PdfViewer(
                filePath: path,
              ),
            ),
          ],
        ),
        //),
      );
    } else {
      try {
        return Padding(
          padding: const EdgeInsets.all(8.0),
          child: Center(
            child: CircularProgressIndicator(),
          ),
        );
      } catch (e) {
        print('Error $e');
        path = ('error al cargar');
        path = 'DESCARGA EL PDF';
      }
    }
  }
}
