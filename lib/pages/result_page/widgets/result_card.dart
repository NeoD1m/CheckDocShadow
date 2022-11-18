import 'package:checkdoc/pages/result_page/widgets/download_report.dart';
import 'package:checkdoc/pages/result_page/widgets/result_doc_dividers.dart';
import 'package:checkdoc/pages/result_page/widgets/result_doc_status.dart';
import 'package:checkdoc/widgets/document_info.dart';
import 'package:flutter/material.dart';

class ResultCard extends StatefulWidget {
  const ResultCard({Key? key, required this.fileName, required this.fileWeight, required this.fileDate}) : super(key: key);

  final String fileName;
  final String fileWeight;
  final String fileDate;

  @override
  State<ResultCard> createState() => ResultCardState();
}

class ResultCardState extends State<ResultCard> {
  bool _isOpen = false;
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          //padding: const EdgeInsets.only(top: 24, left: 24, right: 24, bottom: 24),
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.black)),
          margin: const EdgeInsets.only(bottom: 129 - 113),
          width: 1292,
          child: Stack(
            children: [
              AnimatedContainer(
                duration: const Duration(milliseconds: 100),
                curve: Curves.easeInOut,
                height: _isOpen ? null : 0,
                child: _isOpen ? buildExpanded() : null,
              ),
              buildCollapsed(),
            ],
          ),
        ),
        // AnimatedContainer(
        //   duration: const Duration(milliseconds: 100),
        //   margin: const EdgeInsets.only(bottom: 129 - 113),
        //   width: 1292,
        //   height: _isOpen ? null : 113,
        //   child: Container(
        //     padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 24),
        //     decoration: BoxDecoration(borderRadius: BorderRadius.circular(8), border: Border.all(color: Colors.black)),
        //     child: Stack(
        //       children: [
        //         DocumentInfo(
        //           name: widget.fileName,
        //           date: '${widget.fileWeight}, ${widget.fileDate}',
        //         ),
        //         ResultDocStatus.valid(quantity: 47),
        //         ResultDocStatus.unknown(quantity: 5),
        //         ResultDocStatus.invalid(quantity: 3),
        //         DownloadReport(),
        //         ResultDocContent(),
        //         ResultDocDividers(),
        //       ],
        //     ),
        //   ),
        // ),
        Container(
          margin: const EdgeInsets.only(left: 1244, top: 16),
          width: 24,
          height: 24,
          child: IconButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              setState(() {
                _isOpen = !_isOpen;
              });
            },
            icon: Icon(
              _isOpen ? Icons.keyboard_arrow_up_rounded : Icons.keyboard_arrow_down_rounded,
              color: Color(0xFF3272C0),
              size: 24,
            ),
          ),
        ),
      ],
    );
  }

  Widget buildExpanded() {
    return Stack(
      children: [
        // DocumentInfo(
        //   name: widget.fileName,
        //   date: '${widget.fileWeight}, ${widget.fileDate}',
        // ),
        // ResultDocStatus.valid(quantity: 47),
        // ResultDocStatus.unknown(quantity: 5),
        // ResultDocStatus.invalid(quantity: 3),
        // DownloadReport(),
        //ResultDocContent(),
        ResultDocDividers(),
      ],
    );
  }

  Widget buildCollapsed() {
    return Stack(
      children: [
        DocumentInfo(
          name: widget.fileName,
          date: '${widget.fileWeight}, ${widget.fileDate}',
        ),
        ResultDocStatus.valid(quantity: 47),
        ResultDocStatus.unknown(quantity: 5),
        ResultDocStatus.invalid(quantity: 3),
        DownloadReport(),
      ],
    );
  }
}
