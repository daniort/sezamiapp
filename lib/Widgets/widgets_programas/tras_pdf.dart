import 'dart:io';
import 'package:flutter_email_sender/flutter_email_sender.dart';
import 'package:image/image.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf/pdf.dart';
import 'package:pdf/widgets.dart';

Future<String> myPDF(String nombre ,String edad) async {
  final Document pdf = Document();

  pdf.addPage(
    MultiPage(
      pageFormat:
          PdfPageFormat.letter.copyWith(marginBottom: 1.5 * PdfPageFormat.cm),
      crossAxisAlignment: CrossAxisAlignment.start,
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
        Container(
          child: Center(
            child: Text('SOLICITUD DE TRASLADO',
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
          ),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('NOMBRE DEL FALLECIDO:',
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              child: Center(
                child: Text('$nombre', style: TextStyle(fontSize: 12.0)),
              ),
            ),
          ]),
        ),
        Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(children: <Widget>[
            Container(
              child: Center(
                child: Text('FECHA DE NACIMIENTO:',
                    style:
                        TextStyle(fontSize: 12.0, fontWeight: FontWeight.bold)),
              ),
            ),
            Container(
              child: Center(
                child: Text('$edad', style: TextStyle(fontSize: 12.0)),
              ),
            ),
          ]),
        ),
      ],
    ),
  );
  //print(data);
  final output =
      await getExternalStorageDirectory(); // use the [path_provider (https://pub.dartlang.org/packages/path_provider) library:
  final file = File("${output.path}/goku.pdf");
  await file.writeAsBytes(pdf.save());
  final Email email = Email(
    body: 'Generado desde Sezamo Digital Movil',
    subject: 'Solcititud de Traslado',
    recipients: ['sezami.prueba22@gmail.com'],
    //cc:['juanjosepelaez84@gmail.com'],
    attachmentPath: "${output.path}/goku.pdf",
    isHTML: false,
  );
  await FlutterEmailSender.send(email);
}
