import 'package:flutter/material.dart';
import 'package:sqlyze/presentation/core/constants/strings.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class ErrorPage extends StatefulWidget {
  final String? message;
  const ErrorPage({super.key, this.message});

  @override
  State<ErrorPage> createState() => _ErrorPageState();
}

class _ErrorPageState extends State<ErrorPage> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(
      hasBack: false,
      appBarTitle: 'SQLyze',
      child: Center(
        child: Text(widget.message ?? AppStrings.errorMessageGeneral),
      ),
    );
  }
}
