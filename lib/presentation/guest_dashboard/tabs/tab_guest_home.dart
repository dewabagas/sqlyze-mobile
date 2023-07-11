import 'package:flutter/material.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class TabGuestHome extends StatefulWidget {
  const TabGuestHome({super.key});

  @override
  State<TabGuestHome> createState() => _TabGuestHomeState();
}

class _TabGuestHomeState extends State<TabGuestHome> {
  @override
  Widget build(BuildContext context) {
    return PageDecorationTop(hasBack: false, child: Column());
  }
}
