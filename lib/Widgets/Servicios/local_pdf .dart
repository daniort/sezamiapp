import 'dart:io';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:path_provider/path_provider.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

Future<String> myiPDF(
  String nofi,
  String nombre,
  String direccion,
  String direccionu,
  String nombresoli,
  String telsoli,
  String parsoli,
  String dian,
  String mesn,
  String anon,
  String diaf,
  String mesf,
  String anof,
) async {
  final Document pdf = Document();

  pdf.addPage(
    MultiPage(
      pageFormat:
          PdfPageFormat.letter.copyWith(marginBottom: 1.5 * PdfPageFormat.cm),
      header: (Context context) {
        if (context.pageNumber == 1) {
          return null;
        }
        return Container(
            alignment: Alignment.centerRight,
            margin: const EdgeInsets.only(bottom: 3.0 * PdfPageFormat.mm),
            padding: const EdgeInsets.only(bottom: 3.0 * PdfPageFormat.mm),
            decoration: const BoxDecoration(
                border:
                    BoxBorder(bottom: true, width: 0.5, color: PdfColors.grey)),
            child: Text('Portable Document Format',
                style: Theme.of(context)
                    .defaultTextStyle
                    .copyWith(color: PdfColors.grey)));
      },
      footer: (Context context) {
        return Container(
          alignment: Alignment.centerLeft,
          margin: const EdgeInsets.only(top: 1.0 * PdfPageFormat.cm),
          child: Text(
            'cc: sezami.zac@gmail.com',
            style: Theme.of(context)
                .defaultTextStyle
                .copyWith(color: PdfColors.grey),
          ),
        );
      },
      build: (Context context) => <Widget>[
        Header(
            level: 0,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: Text('SOLICITUD DE LOCALIZACIÓN',
                          textScaleFactor: 1.5),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      alignment: Alignment.centerRight,
                      child: Text('Ofi.No. $nofi', textScaleFactor: 1),
                    ),
                  ),
                ])),
        Header(
            level: 3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Datos del Desaparecido:',
                    textScaleFactor: 1,
                    style: TextStyle(color: PdfColors.blue),
                  ),
                ])),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('NOMBRE:  ', style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Expanded(
              flex: 4,
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                      border: BoxBorder(
                          bottom: true, width: 0.5, color: PdfColors.grey)),
                  alignment: Alignment.center,
                  child: Text(
                    '$nombre',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('  FECHA DE NACIMIENTO:  ',
                    style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    border: BoxBorder(
                        bottom: true, width: 0.5, color: PdfColors.grey)),
                child: Text(' $dian  -  $mesn  -  $anon',
                    style: TextStyle(
                      fontSize: 12.0,
                    )),
              ),
            )
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('DIRECCIÓN: ', style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                      border: BoxBorder(
                          bottom: true, width: 0.5, color: PdfColors.grey)),
                  alignment: Alignment.center,
                  child: Text(
                    '$direccion',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
        Header(
            level: 3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Datos del Solicitante:',
                    textScaleFactor: 1,
                    style: TextStyle(color: PdfColors.blue),
                  ),
                ])),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('NOMBRE:  ', style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Expanded(
              flex: 4,
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                      border: BoxBorder(
                          bottom: true, width: 0.5, color: PdfColors.grey)),
                  alignment: Alignment.center,
                  child: Text(
                    '$nombresoli',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('TÉLEFONO:  ', style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Expanded(
              flex: 5,
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                      border: BoxBorder(
                          bottom: true, width: 0.5, color: PdfColors.grey)),
                  alignment: Alignment.center,
                  child: Text(
                    '$telsoli',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('PARENTESCO:  ', style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Expanded(
              flex: 7,
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                      border: BoxBorder(
                          bottom: true, width: 0.5, color: PdfColors.grey)),
                  alignment: Alignment.center,
                  child: Text(
                    '$parsoli',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
        Header(
            level: 3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Información Extra:',
                    textScaleFactor: 1,
                    style: TextStyle(color: PdfColors.blue),
                  ),
                ])),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child:
                    Text('PROCEDIMIENTO:  ', style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                      border: BoxBorder(
                          bottom: true, width: 0.5, color: PdfColors.grey)),
                  alignment: Alignment.center,
                  child: Text(
                    '-',
                    style: TextStyle(fontSize: 12.0, color: PdfColors.white),
                  ),
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('FECHA DE ÚLTIMO CONTACTO:  ',
                    style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.center,
                decoration: const BoxDecoration(
                    border: BoxBorder(
                        bottom: true, width: 0.5, color: PdfColors.grey)),
                child: Text(' $diaf  -  $mesf  -  $anof',
                    style: TextStyle(
                      fontSize: 12.0,
                    )),
              ),
            )
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Expanded(
              flex: 1,
              child: Container(
                child: Text('ÚLTIMA UBICACIÓN CONOCIDA:  ',
                    style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Expanded(
              flex: 2,
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                      border: BoxBorder(
                          bottom: true, width: 0.5, color: PdfColors.grey)),
                  alignment: Alignment.center,
                  child: Text(
                    '$direccionu',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
      ],
    ),
  );

  final output = await getExternalStorageDirectory();
  final file = File("${output.path}/SOLICI_UBICA_$nofi.pdf");
  await file.writeAsBytes(pdf.save());
  final Email email = Email(
    body: 'Generado desde Sezami Digital Móvil',
    subject: 'Solicitud de Localización',
    recipients: ['sezami.prueba22@gmail.com','juanjosepelaez84@gmail.com','dqniort@gmail.com'],
    cc: ['eduardo.rios@zacatecas.gob.mx'],
    
    
    attachmentPath: "${output.path}/SOLICI_UBICA_$nofi.pdf",
    isHTML: false,
  );
  await FlutterEmailSender.send(email);
}
