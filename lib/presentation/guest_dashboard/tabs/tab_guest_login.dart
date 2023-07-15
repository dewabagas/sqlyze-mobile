import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/application/auth_bloc/auth_bloc.dart';
import 'package:sqlyze/domain/auth/requests/auth_request.dart';
import 'package:sqlyze/domain/core/constants/preference_constants.dart';
import 'package:sqlyze/domain/core/helpers/preference_helper.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_primary.dart';
import 'package:sqlyze/presentation/shared/widgets/inputs/input_secondary.dart';
import 'package:sqlyze/presentation/shared/widgets/others/show_dialog.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class TabGuestLogin extends StatefulWidget {
  const TabGuestLogin({super.key});

  @override
  State<TabGuestLogin> createState() => _TabGuestLoginState();
}

class _TabGuestLoginState extends State<TabGuestLogin> {
  String? email, password;
  bool? isSecured;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<AuthBloc>(
      create: (context) => getIt<AuthBloc>(),
      child: BlocConsumer<AuthBloc, AuthState>(
        listener: (context, state) {
          state.map(
              initial: (value) => const SizedBox.shrink(),
              loadInProgress: (value) => EasyLoading.show(status: 'loading...'),
              loadSuccess: (value) async {
                EasyLoading.dismiss();
                await addBoolToPreference(
                    key: PreferenceConstants.isLoggedIn, value: true);
                await addIntToPreference(
                    key: PreferenceConstants.userId, value: value.user!.id!);
                AutoRouter.of(context).pushAndPopUntil(
                    const RouteStudentDashboard(),
                    predicate: (route) => false);
              },
              loadFailure: (value) {
                EasyLoading.dismiss();
                showErrorDialog(context: context, message: value.message);
              });
        },
        builder: (context, state) {
          return PageDecorationTop(
              appBarTitle: 'SQLyze',
              hasBack: false,
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: 16.w),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        SizedBox(height: 10.h),
                        InputSecondary(
                          label: 'Email',
                          hintText: 'Enter Your Email',
                          keyboardType: TextInputType.emailAddress,
                          onChanged: (String? val) {
                            setState(() {
                              email = val;
                            });
                          },
                          onFocusChange: (hasFocus) {},
                          onClear: () {},
                        ),
                        InputSecondary(
                          label: 'Password',
                          hintText: 'Enter Your Password',
                          keyboardType: TextInputType.visiblePassword,
                          onChanged: (String? val) {
                            setState(() {
                              password = val;
                            });
                          },
                          onFocusChange: (hasFocus) {},
                          onClear: () {},
                          suffixIcon: isSecured == true
                              ? Icon(Icons.remove_red_eye_outlined)
                              : Icon(Icons.remove_red_eye_rounded),
                        ),
                        SizedBox(height: 30.h),
                        Align(
                          alignment: Alignment.centerRight,
                          child: InkWell(
                            child: Text(
                              'Forgot Password?',
                              textAlign: TextAlign.right,
                              style: TextStyles.labelMedium
                                  .copyWith(color: AppColors.primary),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Padding(
                      padding: EdgeInsets.only(bottom: 30.h),
                      child: Column(
                        children: [
                          ButtonGradient(
                              title: 'Login',
                              onPressed: () {
                                context.read<AuthBloc>().add(AuthEvent.login(
                                    AuthRequest(
                                        email: email, password: password)));
                              }),
                          SizedBox(height: 20.w),
                          Row(
                            children: [
                              Expanded(
                                  child: Divider(
                                thickness: 0.5.h,
                                color: AppColors.dividerColor,
                              )),
                              SizedBox(width: 7.w),
                              Text('OR',
                                  style: TextStyles.bodySmall
                                      .copyWith(color: AppColors.dividerColor)),
                              SizedBox(width: 7.w),
                              Expanded(
                                  child: Divider(
                                thickness: 0.5.h,
                                color: AppColors.dividerColor,
                              )),
                            ],
                          ),
                          SizedBox(height: 20.w),
                          ButtonPrimary(
                            title: 'Register',
                            onPressed: () {
                              AutoRouter.of(context)
                                  .push(const RouteRegister());
                            },
                            color: AppColors.lightGrey3,
                            textStyle: TextStyles.labelLarge.copyWith(
                                color: AppColors.primary,
                                fontWeight: FontWeight.w700),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ));
        },
      ),
    );
  }
}
