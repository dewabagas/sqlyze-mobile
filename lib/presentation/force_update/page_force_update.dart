import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:store_redirect/store_redirect.dart';

class PageForceUpdate extends StatelessWidget {
  static String routeName = '/force_update';

  const PageForceUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    FlutterNativeSplash.remove();

    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      systemNavigationBarColor: AppColors.white,
      statusBarColor: AppColors.primary,
    ));
    return Scaffold(
      backgroundColor: AppColors.primary,
      body: SafeArea(
        child: Center(
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            height: 400,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                SvgPicture.asset('assets/images/ic_klar_small_green.svg'),
                SvgPicture.asset('assets/images/img_update.svg'),
                const Text(
                  'There is an update available!\nPlease update the KLAR Smile app to continue using it.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: AppColors.white),
                ),
                ButtonGradient(
                  title: 'Update Aplikasi',
                  onPressed: () {
                    StoreRedirect.redirect(
                        androidAppId: "com.brilliant.sqlyze",
                        iOSAppId: "1551516443");
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
