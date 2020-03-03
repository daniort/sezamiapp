import 'dart:io';
import 'dart:typed_data';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:image/image.dart';

import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';
import 'package:sezamiapp/Widgets/widgets_programas/wid_traslados.dart';

Future<String> myPDF() async {
  final Document pdf = Document();
  String nombref=DataforPDF().nombref;
  String diaf;
  String mesf=DataforPDF().mesf;
  String anof=DataforPDF().anof;
  String dian=DataforPDF().dian;
  String mesn=DataforPDF().mesn;
  String anon=DataforPDF().anon;
  String causa=DataforPDF().causa;
  String ldece=DataforPDF().ldece;
  String lorigen=DataforPDF().lorigen;
  String tiempo=DataforPDF().tiempo;
  String situacion=DataforPDF().situacion;
  String nombremex=DataforPDF().nombremex;
  String telmex=DataforPDF().telmex;
  String parmex=DataforPDF().parmex;
  String nombreeu=DataforPDF().nombreeu;
  String teleu=DataforPDF().teleu;
  String pareu=DataforPDF().pareu;
  String nombrefune=DataforPDF().nombrefune;
  String telfune=DataforPDF().telfune;
  String correofune=DataforPDF().correofune;
  String extra=DataforPDF().extra;

  pdf.addPage(
    MultiPage(
      pageFormat:
          PdfPageFormat.letter.copyWith(marginBottom: 1.5 * PdfPageFormat.cm),
      //crossAxisAlignment: CrossAxisAlignment.start,
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
                  Text('SOLICITUD DE TRASLADO', textScaleFactor: 1.5),
                  Text('Ofi.No. 022-', textScaleFactor: 1),
                ])),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(
            children: <Widget>[
              Container(
                child: Text('FECHA DEL MUERTE: $diaf/$mesf/$anof',
                    style: TextStyle(fontSize: 10.0)),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                //mainAxisAlignment: MainAxisAlignment.en,
                children: <Widget>[
                  Container(
                    child: Center(
                      child: Text('FECHA DE NOTIFICACIÓN: ___/___/______',
                          style: TextStyle(fontSize: 10.0)),
                    ),
                  ),
                  Container(
                    child: Center(
                      child: Text('FECHA DE LLEGADA: ___/___/______',
                          style: TextStyle(fontSize: 10.0)),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
        Header(level: 3, text: 'Datos del Fallecido'),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('NOMBRE DEL FALLECIDO:  ',
                    style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Container(
              alignment: Alignment.centerRight,
              child: Text(
                '$nombref',
                style: TextStyle(
                  fontSize: 12.0,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('EDAD:  ', style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Container(
              child: Center(
                child: Text('%%%%', style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Container(
                child: Center(
                  child: Text('FECHA DE NACIMIENTO:  ',
                      style: TextStyle(fontSize: 12.0)),
                ),
              ),
            ),
            Container(
              child: Center(
                child: Text('%%%%', style: TextStyle(fontSize: 12.0)),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('CAUSA DE LA MUERTE:  ',
                    style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Container(
              child: Center(
                child: Text('$causa',
                    style: TextStyle(
                      fontSize: 12.0,
                      decoration: TextDecoration.underline,
                    )),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('LUGAR DEL DECESO:  ',
                    style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Container(
              child: Center(
                child: Text('$ldece',
                    style: TextStyle(
                      fontSize: 12.0,
                      decoration: TextDecoration.underline,
                    )),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('LUGAR DEL ORIGEN:  ',
                    style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Container(
              child: Center(
                child: Text('$lorigen',
                    style: TextStyle(
                      fontSize: 12.0,
                      decoration: TextDecoration.underline,
                    )),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('SITUACION MIGRATORIA:  ',
                    style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Container(
              child: Center(
                child: Text('&&',
                    style: TextStyle(
                      fontSize: 12.0,
                      decoration: TextDecoration.underline,
                    )),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('TIEMPO EN ESTADOS UNIDOS:  ',
                    style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Container(
              child: Center(
                child: Text('%%%%',
                    style: TextStyle(
                      fontSize: 12.0,
                      decoration: TextDecoration.underline,
                    )),
              ),
            ),
          ]),
        ),
        //#######################################################################################
        //#######################################################################################
        Header(level: 3, text: 'Datos del Familiar en México'),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('NOMBRE COMPLETO:  ',
                    style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Container(
              child: Center(
                child: Text('$nombremex',
                    style: TextStyle(
                        fontSize: 12.0, decoration: TextDecoration.underline)),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('TÉLEFONO:  ',
                    style: TextStyle(
                      fontSize: 12.0,
                    )),
              ),
            ),
            Container(
              child: Center(
                child: Text('$telmex',
                    style: TextStyle(
                        fontSize: 12.0, decoration: TextDecoration.underline)),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('PARENTESCO:  ', style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Container(
              child: Center(
                child: Text('$parmex',
                    style: TextStyle(
                        fontSize: 12.0, decoration: TextDecoration.underline)),
              ),
            ),
          ]),
        ),
        Header(level: 3, text: 'Datos del Familiar en Estados Unidos'),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('NOMBRE COMPLETO:  ',
                    style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Container(
              child: Center(
                child: Text('$nombreeu',
                    style: TextStyle(
                        fontSize: 12.0, decoration: TextDecoration.underline)),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('TÉLEFONO:  ',
                    style: TextStyle(
                      fontSize: 12.0,
                    )),
              ),
            ),
            Container(
              child: Center(
                child: Text('$teleu',
                    style: TextStyle(
                        fontSize: 12.0, decoration: TextDecoration.underline)),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('PARENTESCO:  ', style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Container(
              child: Center(
                child: Text('$pareu',
                    style: TextStyle(
                        fontSize: 12.0, decoration: TextDecoration.underline)),
              ),
            ),
          ]),
        ),
        Header(level: 3, text: 'Datos de la Funeraria en Estados Unidos'),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('NOMBRE DE FUNERARIA:  ',
                    style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Container(
              child: Center(
                child: Text('$nombrefune',
                    style: TextStyle(
                        fontSize: 12.0, decoration: TextDecoration.underline)),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('TÉLEFONO:  ',
                    style: TextStyle(
                      fontSize: 12.0,
                    )),
              ),
            ),
            Container(
              child: Center(
                child: Text('$telfune',
                    style: TextStyle(
                        fontSize: 12.0, decoration: TextDecoration.underline)),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(4.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('EMAIL:  ', style: TextStyle(fontSize: 12.0)),
              ),
            ),
            Container(
              child: Center(
                child: Text('$correofune',
                    style: TextStyle(
                        fontSize: 12.0, decoration: TextDecoration.underline)),
              ),
            ),
          ]),
        ),
        if (!extra.isEmpty)
          Header(level: 3, text: 'Información Extra'),
        if (!extra.isEmpty)
          Padding(
            padding: EdgeInsets.all(4.0),
            child: Row(children: <Widget>[
              Container(
                child: Center(
                  child: Text('ANOTACIONES:', style: TextStyle(fontSize: 12.0)),
                ),
              ),
              Container(
                child: Center(
                  child: Text('$extra',
                      style: TextStyle(
                          fontSize: 12.0,
                          decoration: TextDecoration.underline)),
                ),
              ),
            ]),
          ),
      ],
    ),
  );
  
  final output =
      await getExternalStorageDirectory();
  final file = File("${output.path}/goku.pdf");
  await file.writeAsBytes(pdf.save());
  final Email email = Email(
    body: 'Generado desde Sezamo Digital Movil',
    subject: 'Solcititud de Traslado',
    recipients: ['sezami.prueba22@gmail.com'],
    //cc:['juanjosepelaez84@gmail.com'],
    attachmentPath: "${output.path}/solici.pdf",
    isHTML: false,
  );
  await FlutterEmailSender.send(email);
}
