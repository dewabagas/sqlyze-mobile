import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_pdfview/flutter_pdfview.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:sqlyze/domain/lessons/entities/learning_document.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class PDFViewer extends StatefulWidget {
  final LearningDocument learningDocument;

  const PDFViewer({Key? key, required this.learningDocument}) : super(key: key);

  @override
  _PDFViewerState createState() => _PDFViewerState();
}

class _PDFViewerState extends State<PDFViewer> {
  String? _localPath;
  String? _errorMessage;
  PDFViewController? _pdfViewController;
  int _currentPage = 1;
  int _totalPages = 0;
  @override
  void initState() {
    super.initState();
    downloadPDFFile(widget.learningDocument.url!).then((file) {
      setState(() {
        _localPath = file.path;
      });
    }).catchError((error) {
      setState(() {
        _errorMessage = error.toString();
      });
    });
    // getDirectDownloadLink(widget.url).then((directUrl) {
    //   downloadPDFFile(directUrl).then((file) {
    //     setState(() {
    //       _localPath = file.path;
    //     });
    //   }).catchError((error) {
    //     setState(() {
    //       _errorMessage = error.toString();
    //     });
    //   });
    // });
  }

  Future<String> getDirectDownloadLink(String url) async {
    final fileId = url.split('id=')[1];
    final directUrl = 'https://drive.google.com/uc?export=download&id=$fileId';
    return directUrl;
  }

  Future<File> downloadPDFFile(String url) async {
    final response = await http.get(Uri.parse(url));

    if (response.statusCode == 200) {
      final tempDir = await getTemporaryDirectory();
      final file = File('${tempDir.path}/temp.pdf');
      await file.writeAsBytes(response.bodyBytes);
      return file;
    } else {
      throw Exception('Failed to download PDF file');
    }
  }

  Future<void> downloadFile(String url, String filename) async {
    try {
      var dio = Dio();

      var dir = await getApplicationDocumentsDirectory();
      await dio.download(url, "${dir.path}/$filename");

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Downloaded successfully."),
        ),
      );
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text("Download failed."),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    if (_errorMessage != null) {
      return Center(child: Text(_errorMessage!));
    }

    if (_localPath == null) {
      return const Center(child: CircularProgressIndicator());
    }

    return Column(
      children: [
        Expanded(
          child: Container(
            width: double.infinity,
            height: double.infinity,
            child: _localPath == null
                ? const Center(child: CircularProgressIndicator())
                : PDFView(
                    filePath: _localPath!,
                    enableSwipe: true,
                    swipeHorizontal: true,
                    autoSpacing: false,
                    fitEachPage: true,
                    pageFling: true,
                    onRender: (_pages) {
                      setState(() {});
                    },
                    onError: (error) {
                      print(error.toString());
                    },
                    onPageError: (page, error) {
                      print('$page: ${error.toString()}');
                    },
                    onViewCreated: (PDFViewController pdfViewController) {
                      _pdfViewController = pdfViewController;
                    },
                    onPageChanged: (int? page, int? total) {
                      setState(() {
                        _currentPage = page!;
                        _totalPages = total!;
                      });
                      print('page change: $page/$total');
                    },
                  ),
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              MaterialButton(
                color: AppColors.primary, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r), // Border radius
                ),
                onPressed: () {
                  if (_pdfViewController != null && _currentPage > 1) {
                    _pdfViewController!.setPage(_currentPage - 1);
                  }
                },
                child: Text('Prev',
                    style:
                        TextStyles.bodySmall.copyWith(color: AppColors.white)),
              ),
              Text('Page $_currentPage / $_totalPages',
                  style: TextStyles.bodySmall),
              MaterialButton(
                color: AppColors.primary, // Background color
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.r), // Border radius
                ),
                onPressed: () {
                  if (_pdfViewController != null &&
                      _currentPage < _totalPages) {
                    _pdfViewController!.setPage(_currentPage + 1);
                  }
                },
                child: Text('Next',
                    style:
                        TextStyles.bodySmall.copyWith(color: AppColors.white)),
              ),
            ],
          ),
        ),
        SizedBox(height: 10.h),
        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 16.w),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Download PDF', style: TextStyles.bodyMedium),
              IconButton(
                icon: Icon(Icons.file_download),
                onPressed: () {
                  downloadFile(
                    '${widget.learningDocument.url}',
                    '${widget.learningDocument.title ?? 'Document'}.pdf',
                  );
                },
              ),
            ],
          ),
        ),
      ],
    );
  }
}
