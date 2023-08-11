import 'package:auto_route/auto_route.dart';
import 'package:e_spp/app/features/auth/presentation/cubit/login_cubit.dart';
import 'package:e_spp/app/widgets/main_button.dart';
import 'package:e_spp/app/widgets/main_text_form_field.dart';
import 'package:e_spp/config/themes/app_colors.dart';
import 'package:e_spp/constant/core/img_assets_const.dart';
import 'package:e_spp/utils/helper/regex_rule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

@RoutePage()
class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  void initState() {
    context.read<LoginCubit>().onInit();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        body: SafeArea(
          child: SingleChildScrollView(
            physics: ClampingScrollPhysics(),
            padding: EdgeInsets.symmetric(
              horizontal: 16.w,
            ),
            child: Form(
              key: context.read<LoginCubit>().formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Row(
                    children: [
                      Image.asset(
                        ImgAssetsConst.logoMI,
                        height: 40.h,
                        fit: BoxFit.fitHeight,
                      ),
                      SizedBox(
                        width: 10.w,
                      ),
                      Text(
                        'E-SPP',
                        style: GoogleFonts.montserrat(
                          fontWeight: FontWeight.w700,
                          fontSize: 28.sp,
                          color: AppColors.greenSecondary,
                        ),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Center(
                    child: Image.asset(
                      ImgAssetsConst.illusPayment,
                      height: 150.h,
                      fit: BoxFit.fitHeight,
                    ),
                  ),
                  SizedBox(
                    height: 24.h,
                  ),
                  Text(
                    'Hello There!',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w600,
                      fontSize: 40.sp,
                      color: AppColors.greenSecondary,
                    ),
                  ),
                  SizedBox(
                    height: 6.h,
                  ),
                  Text(
                    'Masuk dengan akun kamu',
                    style: GoogleFonts.montserrat(
                      fontWeight: FontWeight.w500,
                      fontSize: 18.sp,
                      color: AppColors.blackPrimary,
                    ),
                  ),
                  SizedBox(
                    height: 38.h,
                  ),
                  Text(
                    'Username',
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                  MainTextFormField(
                    controller: context.read<LoginCubit>().usernameC,
                    hintText: 'Masukkan username anda',
                    validation: [
                      RegexRule.emptyValidationRule,
                    ],
                  ),
                  SizedBox(
                    height: 18.h,
                  ),
                  Text(
                    'Password',
                    style: TextStyle(
                      fontSize: 14.sp,
                    ),
                  ),
                  Builder(
                    builder: (context) {
                      ValueNotifier<bool> isObsecureText =
                          ValueNotifier<bool>(true);
                      return ValueListenableBuilder(
                        builder: (context, value, child) {
                          return MainTextFormField(
                            controller: context.read<LoginCubit>().passwordC,
                            hintText: 'Masukkan password anda',
                            obscureText: isObsecureText.value,
                            validation: [
                              RegexRule.emptyValidationRule,
                            ],
                            suffixIcon: GestureDetector(
                              onTap: () {
                                isObsecureText.value = !isObsecureText.value;
                              },
                              child: Icon(
                                isObsecureText.value
                                    ? Icons.visibility
                                    : Icons.visibility_off,
                                size: 20.h,
                              ),
                            ),
                          );
                        },
                        valueListenable: isObsecureText,
                      );
                    },
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  // Row(
                  //   children: [
                  //     BlocBuilder<LoginCubit, LoginState>(
                  //       builder: (context, state) {
                  //         return Checkbox(
                  //           value: state.isRememberMe,
                  //           checkColor: Colors.white,
                  //           activeColor: AppColors.greenSecondary,
                  //           shape: const CircleBorder(),
                  //           materialTapTargetSize:
                  //               MaterialTapTargetSize.shrinkWrap,
                  //           visualDensity: const VisualDensity(
                  //             vertical: -4,
                  //             horizontal: -4,
                  //           ),
                  //           onChanged: (bool? value) {
                  //             context
                  //                 .read<LoginCubit>()
                  //                 .toogleRememberMe(value ?? false);
                  //           },
                  //         );
                  //       },
                  //     ),
                  //     SizedBox(
                  //       width: 12.h,
                  //     ),
                  //     Text(
                  //       'Ingat Saya',
                  //       style: TextStyle(
                  //         fontSize: 14.sp,
                  //       ),
                  //     ),
                  //     const Spacer(),
                  //   ],
                  // ),
                  // SizedBox(
                  //   height: 24.h,
                  // ),
                  MainButton(
                    text: 'Masuk',
                    onTap: context.read<LoginCubit>().onTapSignIn,
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
