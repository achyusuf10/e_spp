import 'package:auto_route/auto_route.dart';
import 'package:e_spp/app/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:e_spp/app/features/profile/presentation/widgets/photo_profile_widget.dart';
import 'package:e_spp/app/features/profile/presentation/widgets/profile_form_field.dart';
import 'package:e_spp/app/widgets/appbar_widget.dart';
import 'package:e_spp/app/widgets/main_button.dart';
import 'package:e_spp/config/themes/app_colors.dart';
import 'package:e_spp/constant/core/img_assets_const.dart';
import 'package:e_spp/constant/core/svg_assets_const.dart';
import 'package:e_spp/core/injection/di.dart';
import 'package:e_spp/utils/helper/regex_rule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  late final ProfileCubit _profileCubit;
  @override
  void initState() {
    _profileCubit = di.get<ProfileCubit>();
    _profileCubit.onInit();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider.value(
      value: _profileCubit,
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        // extendBody: true,
        appBar: const AppBarWidget.white(
          title: 'Profile',
          elevation: 2,
        ),
        bottomNavigationBar: BlocBuilder<ProfileCubit, ProfileState>(
          builder: (context, state) {
            return (state.isFormEdited)
                ? Padding(
                    padding: EdgeInsets.all(16.h),
                    child: MainButton(
                      text: 'Simpan',
                      onTap: _profileCubit.onTapSave,
                    ),
                  )
                : const SizedBox();
          },
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 36.h,
              ),
              BlocBuilder<ProfileCubit, ProfileState>(
                builder: (context, state) {
                  return PhotoProfileWidget(
                    // onTap: _profileCubit.onTapChangeImage,
                    file: state.selectedImageProfile,
                  );
                },
              ),
              SizedBox(
                height: 28.h,
              ),
              Container(
                width: double.infinity,
                padding: EdgeInsets.symmetric(
                  horizontal: 16.h,
                  vertical: 10.h,
                ),
                color: AppColors.grayBackground,
                child: Text(
                  'AKUN',
                  style: TextStyle(
                    color: AppColors.grayPrimary,
                    fontWeight: FontWeight.w600,
                    fontSize: 12.sp,
                  ),
                ),
              ),
              ProfileFormField(
                controller: _profileCubit.nisnC,
                urlIcon: ImgAssetsConst.icCardProfile,
                onChange: (value) {
                  _profileCubit.onChangeFormField();
                },
                readOnly: true,
                hintText: 'Masukkan NISN',
                labelText: 'NISN',
                validation: [
                  RegexRule.emptyValidationRule,
                ],
              ),

              ProfileFormField(
                controller: _profileCubit.namaC,
                urlIcon: SvgAssetsConst.icProfile,
                hintText: 'Masukkan Nama',
                labelText: 'Nama',
                readOnly: true,
                validation: [
                  RegexRule.emptyValidationRule,
                ],
                onChange: (value) {
                  _profileCubit.onChangeFormField();
                },
              ),
              ProfileFormField(
                controller: _profileCubit.addressC,
                urlIcon: '',
                customIconWidget: Icon(
                  Icons.location_city_rounded,
                  color: Colors.teal,
                  size: 24.h,
                ),
                hintText: 'Masukkan Alamat',
                labelText: 'Alamat',
                readOnly: true,
                validation: [
                  RegexRule.emptyValidationRule,
                ],
                onChange: (value) {
                  _profileCubit.onChangeFormField();
                },
              ),
              // ProfileFormField(
              //   controller: _profileCubit.dateC,
              //   urlIcon: SvgAssetsConst.icDate,
              //   hintText: 'Pilih Tahun Ajaran',
              //   labelText: 'Tahun Ajaran',
              //   readOnly: true,
              //   validation: [
              //     RegexRule.emptyValidationRule,
              //   ],
              //   onChange: (value) {
              //     _profileCubit.onChangeFormField();
              //   },
              // ),
              // ProfileFormField(
              //   controller: _profileCubit.classC,
              //   urlIcon: SvgAssetsConst.icClass,
              //   hintText: 'Pilih Kelas',
              //   labelText: 'Kelas',
              //   readOnly: true,
              //   validation: [
              //     RegexRule.emptyValidationRule,
              //   ],
              //   onChange: (value) {
              //     _profileCubit.onChangeFormField();
              //   },
              // ),
              ProfileFormField(
                controller: _profileCubit.noHpC,
                urlIcon: SvgAssetsConst.icPhone,
                hintText: 'Masukkan Nomor HP',
                labelText: 'Nomor HP',
                readOnly: true,
                validation: [
                  RegexRule.emptyValidationRule,
                ],
                onChange: (value) {
                  _profileCubit.onChangeFormField();
                },
              ),
              ProfileFormField(
                controller: _profileCubit.emailC,
                urlIcon: SvgAssetsConst.icEmail,
                hintText: 'Masukkan Alamat Email',
                labelText: 'Alamat Email',
                readOnly: true,
                validation: [
                  RegexRule.emailValidationRule,
                  RegexRule.emptyValidationRule,
                ],
                onChange: (value) {
                  _profileCubit.onChangeFormField();
                },
              ),
              ProfileFormField(
                controller: _profileCubit.passwordC,
                urlIcon: '',
                customIconWidget: Icon(
                  Icons.password,
                  color: Colors.teal,
                  size: 24.h,
                ),
                hintText: 'Masukkan Password yang Baru',
                labelText: 'Password',
                // readOnly: true,
                // validation: [
                //   RegexRule.emptyValidationRule,
                // ],
                onChange: (value) {
                  _profileCubit.onChangeFormField();
                },
              ),
              SizedBox(
                height: MediaQuery.of(context).viewInsets.bottom + 50.h,
              )
              // KeyboardVisibilityBuilder(builder: (context, isKeyboardVisible) {
              //   return SizedBox(
              //     height: isKeyboardVisible ? 350.h : 100.h,
              //   );
              // }),
            ],
          ),
        ),
      ),
    );
  }
}
