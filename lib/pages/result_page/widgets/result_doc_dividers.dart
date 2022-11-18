import 'package:checkdoc/pages/result_page/widgets/result_doc_table_status.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ResultDocDividers extends StatelessWidget {
  const ResultDocDividers({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Stack(
        children: [
          Container(
            margin: const EdgeInsets.only(left: 24, top: 113),
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
            width: 422,
            height: 65,
            child: Text(
              'Название документа',
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 24 + 422, top: 113),
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
            width: 200,
            height: 65,
            child: Text(
              'Статус на сегодня',
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 24 + 622, top: 113),
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 0),
            width: 200,
            height: 65,
            child: Text(
              'Изменялся ли с 2021/10/25',
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 24 + 822, top: 113),
            padding: const EdgeInsets.symmetric(horizontal: 0, vertical: 8),
            width: 422,
            height: 65,
            child: Text(
              'Контекст',
              style: GoogleFonts.roboto(
                textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 18, fontWeight: FontWeight.w400),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(left: 12, top: 113 + 52),
            color: Colors.black.withOpacity(0.28),
            width: 1268,
            height: 1,
          ),
          Container(
            margin: const EdgeInsets.only(left: 0, top: 165), //178 + 16

            //margin: const EdgeInsets.only(left: 0, top: 113),
            child: Table(
              border: TableBorder(verticalInside: BorderSide(color: Colors.black.withOpacity(0.28))),
              columnWidths: const <int, TableColumnWidth>{
                0: FixedColumnWidth(422),
                1: FixedColumnWidth(200),
                2: FixedColumnWidth(200),
                3: FixedColumnWidth(422),
              },
              children: <TableRow>[
                TableRow(
                  children: [
                    Container(
                      //margin: const EdgeInsets.only(left: 0, top: 178 + 16),
                      //margin: const EdgeInsets.only(left: 24),
                      padding: const EdgeInsets.all(24),
                      width: 422,
                      //height: 104,
                      child: Text(
                        'Федеральный закон от 28 июня 2022 г. N 212-ФЗ "О внесении изменений в отдельные законодательные акты Российской Федерации"',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    const TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: ResultDocTableStatus.valid(),
                    ),
                    const TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: ResultDocTableStatus.no(),
                    ),
                    Container(
                      //margin: const EdgeInsets.only(left: 0, top: 178 + 16),
                      //margin: const EdgeInsets.only(left: 16, top: 16),
                      padding: const EdgeInsets.all(24),
                      width: 422,
                      //height: 96,
                      child: Text(
                        'Текст колонки Текст колонкиТекст колонкиТекст колонки ... N 127-ФЗ "О несостоятельности (банкротстве)"...иТекст колонкиТекст колонки колонкиТекст колонкиколонкиТекст ',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      //margin: const EdgeInsets.only(left: 0, top: 178 + 16),
                      //margin: const EdgeInsets.only(left: 24),
                      padding: const EdgeInsets.all(24),
                      width: 422,
                      //height: 104,
                      child: Text(
                        'Федеральный закон от 28 июня 2022 г. N 212-ФЗ "О внесении изменений в отдельные законодательные акты Российской Федерации"',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: ResultDocTableStatus.valid(),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: ResultDocTableStatus.no(),
                    ),
                    Container(
                      //margin: const EdgeInsets.only(left: 0, top: 178 + 16),
                      //margin: const EdgeInsets.only(left: 16, top: 16),
                      padding: const EdgeInsets.all(24),
                      width: 422,
                      //height: 96,
                      child: Text(
                        'Текст колонки Текст колонкиТекст колонкиТекст колонки ... N 127-ФЗ "О несостоятельности (банкротстве)"...иТекст колонкиТекст колонки колонкиТекст колонкиколонкиТекст ',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Container(
                      //margin: const EdgeInsets.only(left: 0, top: 178 + 16),
                      //margin: const EdgeInsets.only(left: 24),
                      padding: const EdgeInsets.all(24),
                      width: 422,
                      //height: 104,
                      child: Text(
                        'Федеральный закон от 28 июня 2022 г. N 212-ФЗ "О внесении изменений в отдельные законодательные акты Российской Федерации"',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: ResultDocTableStatus.valid(),
                    ),
                    TableCell(
                      verticalAlignment: TableCellVerticalAlignment.middle,
                      child: ResultDocTableStatus.no(),
                    ),
                    Container(
                      //margin: const EdgeInsets.only(left: 0, top: 178 + 16),
                      //margin: const EdgeInsets.only(left: 16, top: 16),
                      padding: const EdgeInsets.all(24),
                      width: 422,
                      //height: 96,
                      child: Text(
                        'Текст колонки Текст колонкиТекст колонкиТекст колонки ... N 127-ФЗ "О несостоятельности (банкротстве)"...иТекст колонкиТекст колонки колонкиТекст колонкиколонкиТекст ',
                        style: GoogleFonts.roboto(
                          textStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(fontSize: 16, fontWeight: FontWeight.w400),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
