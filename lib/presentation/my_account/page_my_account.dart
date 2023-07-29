import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sqlyze/domain/core/helpers/validation_helper.dart';
import 'package:sqlyze/domain/user/entities/user_profile.dart';
import 'package:sqlyze/presentation/core/constants/assets.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/buttons/button_gradient.dart';
import 'package:sqlyze/presentation/shared/widgets/images/image_circle.dart';
import 'package:sqlyze/presentation/shared/widgets/inputs/input_secondary.dart';
import 'package:sqlyze/presentation/shared/widgets/inputs/input_secured.dart';
import 'package:sqlyze/presentation/shared/widgets/pages/page_decoration_top.dart';

class PageMyAccount extends StatefulWidget {
  final UserProfile userProfile;
  const PageMyAccount({super.key, required this.userProfile});

  @override
  State<PageMyAccount> createState() => _PageMyAccountState();
}

class _PageMyAccountState extends State<PageMyAccount> {
  final GlobalKey<FormState> _key = GlobalKey();
  late BuildContext _buildContext;

  String? newProfileImage;
  final ImagePicker _picker = ImagePicker();

  String? fullName;
  String? email;
  String? password;
  String? nis;
  String? phoneNumber;
  String? gender;
  String? birthdate;
  bool isSecured = true;

  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController nisController = TextEditingController();
  final TextEditingController phoneController = TextEditingController();
  final TextEditingController birthdateController = TextEditingController();

  bool isFullNameValid = false;
  bool isEmailValid = false;
  bool isPasswordValid = false;
  bool isNisValid = false;
  bool isPhoneValid = false;
  bool isBirthdateValid = false;

  bool isFullNameFocused = false;
  bool isEmailFocused = false;
  bool isPasswordFocused = false;
  bool isNisFocused = false;
  bool isPhoneFocused = false;
  bool isBirthdateFocused = false;

  @override
  void initState() {
    emailController.text = '${widget.userProfile.email}';
    phoneController.text = '${widget.userProfile.msisdn}';
    fullNameController.text = '${widget.userProfile.fullName}';
    nisController.text = '${widget.userProfile.nis}';
    emailController.addListener(() {
      isEmailValid = emailController.text.isNotEmpty;
    });
    phoneController.addListener(() {
      isPhoneValid = phoneController.text.isNotEmpty;
    });
    fullNameController.addListener(() {
      isFullNameValid = fullNameController.text.isNotEmpty;
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    debugPrint('${widget.userProfile.profileImageUrl}');
    return PageDecorationTop(
        appBarTitle: 'Akunku',
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: Form(
                key: _key,
                autovalidateMode: AutovalidateMode.onUserInteraction,
                child: ListView(
                  children: [
                    SizedBox(height: 16.h),
                    _containerUploadImage(newProfileImage,
                        '${widget.userProfile.profileImageUrl}'),
                    SizedBox(height: 16.h),
                    StatefulBuilder(builder: (context, localSetState) {
                      return InputSecondary(
                        controller: fullNameController,
                        label: 'Nama Lengkap',
                        hintText: 'Isi Nama Lengkap Kamu',
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
                    InputSecondary(
                      label: 'NIS (Opsional)',
                      hintText: 'Isi NIS Kamu Jika Ada',
                      keyboardType: TextInputType.phone,
                      onChanged: (String? val) {
                        setState(() {
                          nis = val;
                        });
                      },
                      onFocusChange: (hasFocus) {},
                      onClear: () {},
                    ),
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
                  onPressed: () {},
                  title: 'Ubah Profil',
                ),
              ),
            )
          ],
        ));
  }

  Future<void> _navigateAndDisplaySelection(BuildContext context) async {
    final pickedFile = await _picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedFile != null) {
        newProfileImage = pickedFile.path;
      } else {
        print('No image selected.');
      }
    });
  }

  Future<void> uploadImage(String imagePath) async {
    var url = 'http://your-server.com/upload'; // URL for your server
  
  }

  Widget _containerUploadImage(String? capturedImagePath, String? placeholder) {
    final ImagePicker _picker = ImagePicker();

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          height: 250.r,
          child: ClipRRect(
            borderRadius: BorderRadius.all(
              Radius.circular(30.r),
            ),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image(
                  image: (capturedImagePath != null
                      ? FileImage(File(capturedImagePath!))
                      : NetworkImage(placeholder!)) as ImageProvider<Object>,
                  fit: BoxFit.cover,
                ),
                Visibility(
                  visible: capturedImagePath == null,
                  child: Container(
                    color: Colors.black.withOpacity(0.32),
                  ),
                ),
                Visibility(
                  visible: capturedImagePath == null,
                  child: Positioned.fill(
                    child: Material(
                      color: Colors.transparent,
                      child: InkWell(
                        onTap: () {
                          _navigateAndDisplaySelection(context);
                        },
                      ),
                    ),
                  ),
                ),
                Visibility(
                  visible: capturedImagePath == null,
                  child: Container(
                    margin: const EdgeInsets.only(bottom: 16),
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Icon(
                          Icons.camera,
                          color: Colors.white,
                        ),
                        const SizedBox(width: 12),
                        Text(
                          'Tap to take or add photo',
                          style: TextStyles.bodySmall
                              .copyWith(color: Colors.white),
                        )
                      ],
                    ),
                  ),
                ),
                Visibility(
                  visible: capturedImagePath != null,
                  child: Container(
                    alignment: Alignment.topRight,
                    margin: const EdgeInsets.only(top: 10, right: 10),
                    child: Stack(
                      children: [
                        SvgPicture.asset('assets/images/ic_replace_photo.svg'),
                        Positioned.fill(
                          child: Material(
                            color: Colors.transparent,
                            child: InkWell(
                              onTap: () {
                                _navigateAndDisplaySelection(context);
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
