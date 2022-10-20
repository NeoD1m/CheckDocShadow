import 'package:checkdoc/widgets/document_info.dart';
import 'package:flutter/material.dart';

class DocUploadStatus extends StatefulWidget {
  const DocUploadStatus({Key? key, required this.progressPercent, required this.fileName}) : super(key: key);

  final double progressPercent;
  final String fileName;

  @override
  State<DocUploadStatus> createState() => DocUploadStatusState();
}

class DocUploadStatusState extends State<DocUploadStatus> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        DocumentInfo(
          name: widget.fileName,
          date: '',
        ),
        Container(
          margin: const EdgeInsets.only(left: 28, top: 46 + 15),
          width: 234,
          height: 4,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: const Color(0xFFF4F5F6),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            clipBehavior: Clip.hardEdge,
            child: Align(
              alignment: Alignment.centerLeft,
              child: Container(
                width: widget.progressPercent * 2.34,
                height: 4,
                color: const Color(0xFF3272C0),
              ),
            ),
          ),
        ),
        Container(
          margin: const EdgeInsets.only(left: 0 + 309, top: 0),
          width: 24,
          height: 24,
          child: IconButton(
            padding: EdgeInsets.zero,
            icon: const Icon(Icons.close),
            color: Theme.of(context).primaryColor,
            onPressed: () {}, // TODO Удаление из очереди загрузки
          ),
        ),
      ],
    );
  }
}
