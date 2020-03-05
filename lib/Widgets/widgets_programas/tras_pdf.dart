import 'dart:io';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:path_provider/path_provider.dart';

import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';



Future<String> myPDF(
  String nofi,
  String nombre,
  String edad,
  String causa,
  String lugarmuerte,
  String lugarorigen,
  String nombreparmex,
  String telparmex,
  String nombrepareu,
  String telpareu,
  String nombrefune,
  String telfune,
  String correofune,
  String parmex,
  String pareu,
  String extra,
  String situ,
  String time,
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
                    Expanded(child:  Container(
                      decoration: BoxDecoration(
                        //image: decodeImage(File('test.webp').readAsBytesSync());
                        //image: PdfImage(image: null, width: null, height: null)
                      ),
                      alignment: Alignment.centerLeft,
                      //child: PdfImage(pdf, image: null,)
                    child: Text('<image:logo.png>', textScaleFactor: 1),
                  ),),
                  Expanded(
                    flex: 2,
                    child: Container(
                      alignment: Alignment.center,
                    child: Text('SOLICITUD DE TRASLADO', textScaleFactor: 1),
                  ),),
                  Expanded(child: Container(
                    alignment: Alignment.centerRight,
                    child: Text('Ofi.No. $nofi', textScaleFactor: 1),
                  ),),
                ])),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            //mainAxisAlignment: MainAxisAlignment.en,
            children: <Widget>[
              Expanded(
                flex: 2,
                child: Column(children: <Widget>[
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text('FECHA DEL DECESO:',
                        style: TextStyle(fontSize: 10.0)),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text('FECHA DE NOTIFICACIÓN:',
                        style: TextStyle(fontSize: 10.0)),
                  ),
                  Container(
                    alignment: Alignment.centerRight,
                    child: Text('FECHA DE LLEGADA:',
                        style: TextStyle(fontSize: 10.0)),
                  ),
                ]),
              ),
              Expanded(
                flex: 1,
                child: Column(children: <Widget>[
                  Container(
                    decoration: const BoxDecoration(
                        border: BoxBorder(
                            bottom: true, width: 0.5, color: PdfColors.grey)),
                    alignment: Alignment.center,
                    child: Text(' $diaf - $mesf - $anof ',
                        style: TextStyle(fontSize: 10.0)),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: BoxBorder(
                            bottom: true, width: 0.5, color: PdfColors.grey)),
                    alignment: Alignment.center,
                     child: Text('  -',
                        style: TextStyle(fontSize: 10.0, color: PdfColors.white)),
                  ),
                  Container(
                    decoration: const BoxDecoration(
                        border: BoxBorder(
                            bottom: true, width: 0.5, color: PdfColors.grey)),
                    alignment: Alignment.center,
                    child: Text(' - ',
                        style: TextStyle(fontSize: 10.0, color: PdfColors.white)),
                  ),
                ]),
              ),
            ],
          ),
        ),

        Header(
            level: 3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Datos del Fallecido:',
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
                child: Center(
                  child: Text('NOMBRE DEL FALLECIDO:  ',
                      style: TextStyle(fontSize: 12.0)),
                ),
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
                child: Text('EDAD: ', style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Expanded(
              flex: 1,
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                      border: BoxBorder(
                          bottom: true, width: 0.5, color: PdfColors.grey)),
                  alignment: Alignment.center,
                  child: Text(
                    '$edad AÑOS',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
            Expanded(
              flex: 3,
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
                child: Text(' $dian   $mesn    $anon',
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
                child: Text('CAUSA DE LA MUERTE: ',
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
                    '$causa',
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
                child: Text('LUGAR DEL DECESO:  ',
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
                    '$lugarmuerte',
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
                child: Text('LUGAR DE ORIGEN:  ',
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
                    '$lugarorigen',
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
                child: Text('SITUACIÓN MIGRATORIA:  ',
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
                    '$situ',
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
                child: Text('TIEMPO EN ESTADOS UNIDOS:',
                    style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Expanded(
              flex: 3,
              child: Center(
                child: Container(
                  decoration: const BoxDecoration(
                      border: BoxBorder(
                          bottom: true, width: 0.5, color: PdfColors.grey)),
                  alignment: Alignment.center,
                  child: Text(
                    '$time',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
        //#######################################################################################
        //#######################################################################################
        Header(
            level: 3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Datos  de Familiar en México:',
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
                child: Text('NOMBRE COMPLETO:  ',
                    style: TextStyle(fontSize: 12.0)),
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
                    '$nombreparmex',
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
                    '$telparmex',
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
                    '$parmex',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
////////////////////////////////////////////////////////////////////////////////////////////////////////////////
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        Header(
            level: 3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Datos  de Familiar en Estados Unidos:',
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
                child: Text('NOMBRE COMPLETO:  ',
                    style: TextStyle(fontSize: 12.0)),
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
                    '$nombrepareu',
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
                    '$telpareu',
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
                    '$pareu',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),
///////////////////////////////////////////////////////////////////////////////////////////////////////////////////
        Header(
            level: 3,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    'Datos  de Funeraria en Estados Unidos:',
                    textScaleFactor: 1,
                    style: TextStyle(color: PdfColors.blue),
                  ),
                ])),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.centerLeft,
                child: Text('NOMBRE DE LA FUNERARIA:  ',
                    style: TextStyle(fontSize: 12.0)),
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
                    '$nombrefune',
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
                    '$telfune',
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
                child: Text('EMAIL:  ', style: TextStyle(fontSize: 12.0)),
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
                    '$correofune',
                    style: TextStyle(
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ),
            ),
          ]),
        ),

        if (!extra.isEmpty)
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
        if (!extra.isEmpty)
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Row(children: <Widget>[
              Expanded(
                flex: 3,
                child: Container(
                  alignment: Alignment.centerLeft,
                  child: Text('ANOTACIONES EXTRAS:  ',
                      style: TextStyle(fontSize: 12.0)),
                ),
              ),
              Expanded(
                flex: 6,
                child: Center(
                  child: Container(
                    decoration: const BoxDecoration(
                        border: BoxBorder(
                            bottom: true, width: 0.5, color: PdfColors.grey)),
                    alignment: Alignment.center,
                    child: Text(
                      '$extra',
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
  final file = File("${output.path}/solici_test.pdf");
  await file.writeAsBytes(pdf.save());
  final Email email = Email(
    body: 'Generado desde Sezamo Digital Movil',
    subject: 'Solcititud de Traslado',
    recipients: ['sezami.prueba22@gmail.com'],
    cc:['eduardo.rios@zacatecas.gob.mx'],
    attachmentPath: "${output.path}/solici_test.pdf",
    isHTML: false,
  );
  await FlutterEmailSender.send(email);
}
