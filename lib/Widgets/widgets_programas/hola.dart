import 'package:flutter/material.dart';
import 'package:flutter_plugin_pdf_viewer/flutter_plugin_pdf_viewer.dart';

class Hola extends StatefulWidget {
  @override
  _HolaState createState() => _HolaState();
}

class _HolaState extends State<Hola> {
  bool _isLoading = true;
  PDFDocument document;

  _loadPDF() async {
    document = await PDFDocument.fromURL(
        'http://sezami.zacatecas.gob.mx/docs/rop2019.pdf');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _isLoading
            ? Center(
                child: CircularProgressIndicator(),
              )
            : PDFViewer(
                document: document,
                showPicker: true,
              ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: _loadPDF, child: Text('Presione para cargar PDF')),
    );
  }
}
