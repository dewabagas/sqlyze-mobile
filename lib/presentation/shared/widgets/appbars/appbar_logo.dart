import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';

class AppbarLogo extends StatelessWidget implements PreferredSizeWidget {
  final AppBar? appBar;
  final Color backgroundColor;
  final Color statusBarColor;
  final bool hasBack;
  final Function()? onBack;

  const AppbarLogo(
      {Key? key,
      this.appBar,
      this.backgroundColor = Colors.transparent,
      this.statusBarColor = AppColors.primary,
      this.onBack,
      this.hasBack = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: backgroundColor,
      elevation: 0,
      systemOverlayStyle: SystemUiOverlayStyle(
        statusBarColor: statusBarColor,
      ),
      title: Image.asset(
        AppLogo.sqlyzeHorizontal,
        height: 30.w,
      ),
      centerTitle: true,
      leading: hasBack
          ? InkWell(
              onTap: onBack ?? () => Navigator.pop(context),
              child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Colors.white),
                  onPressed: onBack),
            )
          : const SizedBox.shrink(),
      actions: [],
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(appBar!.preferredSize.height);
}
