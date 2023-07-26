import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:sqlyze/application/greetings_bloc/greetings_bloc.dart';
import 'package:sqlyze/domain/user/entities/user_profile.dart';
import 'package:sqlyze/injection.dart';
import 'package:sqlyze/presentation/core/constants/styles.dart';
import 'package:sqlyze/presentation/core/styles/app_colors.dart';
import 'package:sqlyze/presentation/shared/widgets/images/image_circle.dart';

class GreetingsSection extends StatefulWidget {
  final UserProfile userProfile;
  const GreetingsSection({super.key, required this.userProfile});

  @override
  State<GreetingsSection> createState() => _GreetingsSectionState();
}

class _GreetingsSectionState extends State<GreetingsSection> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider<GreetingsBloc>(
      create: (context) =>
          getIt<GreetingsBloc>()..add(const GreetingsEvent.show()),
      child: BlocBuilder<GreetingsBloc, GreetingsState>(
        builder: (context, state) {
          return state.map(
              initial: (value) => const SizedBox.shrink(),
              loadInProgress: (value) => const SizedBox.shrink(),
              loadSuccess: (value) {
                return Padding(
                  padding:
                      EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          ImageCircle(
                            width: 40.w,
                            height: 40.w,
                            image: widget.userProfile.profileImageUrl,
                          ),
                          SizedBox(width: 19.w),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Selamat ${value.greetings},',
                                style: TextStyles.bodySmall.copyWith(
                                    fontWeight: FontWeight.w400,
                                    color: AppColors.white),
                              ),
                              Text(
                                '${widget.userProfile.fullName}',
                                style: TextStyles.bodySmall.copyWith(
                                    fontWeight: FontWeight.w600,
                                    color: AppColors.white),
                              ),
                            ],
                          ),
                        ],
                      ),
                      InkWell(
                        onTap: () {},
                        child: const Icon(
                          Icons.notifications,
                          color: Colors.white,
                        ),
                      ),
                    ],
                  ),
                );
              },
              loadFailure: (value) {
                return Text('${value.greetings}');
              });
        },
      ),
    );
  }
}
