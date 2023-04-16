import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class IconBottomNavBarItem {
  IconBottomNavBarItem({this.iconActive, this.iconInactive, this.label});

  String? iconActive;
  String? iconInactive;
  String? label;
}

class IconBottomAppNavBar extends StatefulWidget {
  IconBottomAppNavBar({
    Key? key,
    this.items,
    this.centerItemText,
    this.backgroundColor,
    this.notchedShape,
    this.onTabSelected,
    this.initialPage,
  }) : super(key: key) {
    assert(items!.length == 2);
  }

  final List<IconBottomNavBarItem>? items;
  final String? centerItemText;
  final Color? backgroundColor;
  final NotchedShape? notchedShape;
  final ValueChanged<int?>? onTabSelected;
  final int? initialPage;

  @override
  _IconBottomAppNavBarState createState() => _IconBottomAppNavBarState();
}

class _IconBottomAppNavBarState extends State<IconBottomAppNavBar> {
  int? _selectedIndex = 0;

  _updateIndex(int? index) async {
    widget.onTabSelected!(index);

    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    _selectedIndex = widget.initialPage;

    List<Widget> items = List.generate(widget.items!.length, (int index) {
      return _buildTabItem(
        item: widget.items![index],
        index: index,
        onPressed: _updateIndex,
      );
    });

    return Container(
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
            offset: const Offset(0, 0),
            blurRadius: 15,
            spreadRadius: 0,
            color: const Color(0xFF3A3A3A).withOpacity(0.15))
      ]),
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30.r),
          topRight: Radius.circular(30.r),
        ),
        child: BottomAppBar(
          shape: widget.notchedShape,
          color: widget.backgroundColor,
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: items,
          ),
        ),
      ),
    );
  }

  Widget _buildTabItem({
    required IconBottomNavBarItem item,
    int? index,
    ValueChanged<int?>? onPressed,
  }) {
    Color colorText =
        _selectedIndex == index ? AppColors.primary : AppColors.darkGrey2;
    String assets =
        _selectedIndex == index ? item.iconActive! : item.iconInactive!;
    FontWeight fontWeight =
        _selectedIndex == index ? FontWeight.w700 : FontWeight.w600;

    return Expanded(
      child: Container(
        padding: EdgeInsets.only(top: 18.h),
        width: double.infinity,
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            onTap: () => onPressed!(index),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset(
                  assets,
                  height: 25.w,
                  width: 25.w,
                ),
                SizedBox(height: 5.h),
                Text(
                  item.label!,
                  style: TextStyles.headlineSmall.copyWith(
                      fontSize: 10.sp,
                      color: colorText,
                      fontWeight: fontWeight),
                ),
                Container(
                  width: double.infinity,
                  height: 13.01.h,
                  margin: EdgeInsets.only(top: 2.h),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(100.r),
                      topRight: Radius.circular(100.r),
                    ),
                    color: _selectedIndex == index
                        ? AppColors.primary
                        : Colors.transparent,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
