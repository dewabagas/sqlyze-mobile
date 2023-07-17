import 'dart:developer';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sqlyze/application/register_bloc/register_bloc.dart';
import 'package:sqlyze/domain/auth/requests/register_request.dart';
import 'package:sqlyze/domain/core/constants/preference_constants.dart';
import 'package:sqlyze/domain/core/helpers/preference_helper.dart';
import 'package:sqlyze/domain/core/helpers/validation_helper.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:sqlyze/presentation/shared/widgets/inputs/input_secondary.dart';
import 'package:sqlyze/presentation/shared/widgets/inputs/input_secured.dart';
import 'package:sqlyze/presentation/shared/widgets/others/show_dialog.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class PageRegister extends StatefulWidget {
  const PageRegister({super.key});

  @override
  State<PageRegister> createState() => _PageRegisterState();
}

class _PageRegisterState extends State<PageRegister> {
  final GlobalKey<FormState> _key = GlobalKey();
  late BuildContext _buildContext;

  String? fullName;
  String? email;
  String? password;
  String? nis;
  String? phoneNumber;
  String? gender;
  bool isSecured = true;

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nisController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();

  bool isFullNameValid = false;
  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isNisValid = false;
  bool isPhoneValid = false;

  bool isFullNameFocused = false;
  bool isEmailFocused = false;
  bool isPasswordFocused = false;
  bool isNisFocused = false;
  bool isPhoneFocused = false;

  @override
  void initState() {
    gender = 'Male';
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider<RegisterBloc>(
      create: (context) => getIt<RegisterBloc>(),
      child: BlocListener<RegisterBloc, RegisterState>(
        listener: (context, state) {
          state.map(
              initial: (value) => const SizedBox.shrink(),
              loadInProgress: (value) => EasyLoading.show(status: 'loading...'),
              loadSuccess: (value) async {
                EasyLoading.dismiss();
                log('register success');
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
        child: Builder(builder: (context) {
          _buildContext = context;
          return PageDecorationTop(
              resizeToAvoidBottomInset: false,
              appBarTitle: 'Daftar',
              child: Stack(
                children: [
                  Container(
                    margin: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Form(
                      key: _key,
                      autovalidateMode: AutovalidateMode.onUserInteraction,
                      child: ListView(
                        children: [
                          SizedBox(height: 15.h),
                          StatefulBuilder(builder: (context, localSetState) {
                            return InputSecondary(
                              controller: fullNameController,
                              label: 'Nama Lengkap',
                              hintText: 'Isi Nama Lengkap Kamu',
                              keyboardType: TextInputType.emailAddress,
                              validator: validationName,
                              onChanged: (String? val) {
                                localSetState(() {
                                  isFullNameValid = validationName(val) == null;
                                  fullName = val;
                                });
                              },
                              onFocusChange: (hasFocus) {
                                localSetState(() {
                                  isFullNameFocused = hasFocus;
                                });
                              },
                              onClear: () {
                                fullNameController.clear();
                                isFullNameValid = false;
                              },
                              isValidated: isFullNameValid,
                              isFocused: isFullNameFocused,
                            );
                          }),
                          StatefulBuilder(builder: (context, localSetState) {
                            return InputSecondary(
                              controller: emailController,
                              label: 'Email Aktif',
                              hintText: 'Isi Email Aktif Kamu',
                              keyboardType: TextInputType.emailAddress,
                              validator: validationEmail,
                              onChanged: (String? val) {
                                localSetState(() {
                                  isEmailValid = validationEmail(val) == null;
                                  email = val;
                                });
                              },
                              onFocusChange: (hasFocus) {
                                localSetState(() {
                                  isEmailFocused = hasFocus;
                                });
                              },
                              onClear: () {
                                emailController.clear();
                                isEmailValid = false;
                              },
                              isValidated: isEmailValid,
                              isFocused: isEmailFocused,
                            );
                          }),
                          InputSecured(
                              label: 'Password',
                              hintText: 'Isi Password Kamu',
                              keyboardType: TextInputType.visiblePassword,
                              onChanged: (String? val) {
                                setState(() {
                                  password = val;
                                });
                              },
                              onFocusChange: (hasFocus) {},
                              onClear: () {},
                              fillColor: AppColors.lightGrey4,
                              borderColor: AppColors.lightGrey4,
                              obscureText: isSecured,
                              suffixIcon: isSecured
                                  ? GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isSecured = !isSecured;
                                        });
                                      },
                                      child: SvgPicture.asset(
                                          AppIcons.icEyeOnGrey,
                                          height: 12.8.h,
                                          width: 16.w,
                                          fit: BoxFit.scaleDown))
                                  : GestureDetector(
                                      onTap: () {
                                        setState(() {
                                          isSecured = !isSecured;
                                        });
                                      },
                                      child: SvgPicture.asset(
                                          AppIcons.icEyeOffGrey,
                                          height: 12.8.h,
                                          width: 16.w,
                                          fit: BoxFit.scaleDown))),
                          InputSecondary(
                            label: 'NIS (Opsional)',
                            hintText: 'Isi NIS Kamu Jika Ada',
                            onChanged: (String? val) {},
                            onFocusChange: (hasFocus) {},
                            onClear: () {},
                          ),
                          StatefulBuilder(builder: (context, localSetState) {
                            return InputSecondary(
                              label: 'Nomor Handphone',
                              hintText: 'Isi Nomor Kamu',
                              onFocusChange: (hasFocus) {},
                              isDense: true,
                              onClear: () {},
                              maxLength: 13,
                              maxLines: 1,
                              keyboardType: TextInputType.phone,
                              inputFormatters: <TextInputFormatter>[
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[0-9]')),
                                FilteringTextInputFormatter.deny(
                                  RegExp(r'^0+'),
                                ),
                              ],
                              validator: validationPhone,
                              onChanged: (String? val) {
                                localSetState(() {
                                  isPhoneValid = validationPhone(val) == null;
                                  phoneNumber = val;
                                });
                              },
                              isValidated: isPhoneValid,
                            );
                          }),
                          Padding(
                            padding: EdgeInsets.only(top: 24.h, bottom: 12.h),
                            child: Text(
                              'Jenis Kelamin',
                              style: TextStyles.labelMedium
                                  .copyWith(color: AppColors.charcoal),
                            ),
                          ),
                          Theme(
                            data: ThemeData(
                              unselectedWidgetColor: AppColors.charcoal,
                            ),
                            child: Row(
                              children: <Widget>[
                                Row(
                                  children: <Widget>[
                                    Radio(
                                      value: 'male',
                                      groupValue: gender,
                                      activeColor: AppColors.primary,
                                      onChanged: (value) {
                                        setState(() {
                                          gender = value;
                                        });
                                      },
                                    ),
                                    Text('Pria',
                                        style: TextStyles.labelLarge.copyWith(
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                                SizedBox(width: 40.w),
                                Row(
                                  children: <Widget>[
                                    Radio(
                                      value: 'female',
                                      groupValue: gender,
                                      activeColor: AppColors.primary,
                                      onChanged: (value) {
                                        setState(() {
                                          gender = value;
                                        });
                                      },
                                    ),
                                    Text('Wanita',
                                        style: TextStyles.labelLarge.copyWith(
                                            fontWeight: FontWeight.w400)),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 170.h)
                        ],
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      padding: EdgeInsets.only(
                          bottom: 20.h, top: 18.h, left: 20.w, right: 20.w),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              offset: const Offset(0, 4),
                              blurRadius: 8,
                              color: Colors.grey.shade200)
                        ],
                        border: Border.all(color: Colors.grey.shade200),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30.r),
                          topRight: Radius.circular(30.r),
                        ),
                      ),
                      child: ButtonGradient(
                        onPressed: () {
                          _buildContext
                              .read<RegisterBloc>()
                              .add(RegisterEvent.register(RegisterRequest(
                                fullName: fullName,
                                email: email,
                                password: password,
                                nis: nis,
                                msisdn: phoneNumber,
                                gender: gender,
                              )));
                        },
                        title: 'Daftar',
                      ),
                    ),
                  )
                ],
              ));
        }),
      ),
    );
  }
}
