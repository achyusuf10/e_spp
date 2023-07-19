import 'package:auto_route/auto_route.dart';
import 'package:e_spp/app/features/profile/presentation/cubit/profile_cubit.dart';
import 'package:e_spp/app/features/profile/presentation/widgets/photo_profile_widget.dart';
import 'package:e_spp/app/features/profile/presentation/widgets/profile_form_field.dart';
import 'package:e_spp/app/widgets/appbar_widget.dart';
import 'package:e_spp/config/themes/app_colors.dart';
import 'package:e_spp/constant/core/img_assets_const.dart';
import 'package:e_spp/constant/core/svg_assets_const.dart';
import 'package:e_spp/utils/helper/regex_rule.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    context.read<ProfileCubit>().onInit();
    return Scaffold(
      resizeToAvoidBottomInset: true,
      appBar: const AppBarWidget.white(
        title: 'Profile',
        elevation: 2,
      ),
      // bottomSheet: BlocBuilder<ProfileCubit, ProfileState>(
      //   builder: (context, state) {
      //     return (state.selectedImageProfile != null || state.isFormEdited)
      //         ? Padding(
      //             padding: EdgeInsets.all(16.h),
      //             child: MainButton(
      //               text: 'Simpan',
      //               onTap: context.read<ProfileCubit>().onTapSave,
      //             ),
      //           )
      //         : const SizedBox();
      //   },
      // ),
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
                  // onTap: context.read<ProfileCubit>().onTapChangeImage,
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
              controller: context.read<ProfileCubit>().nisnC,
              urlIcon: ImgAssetsConst.icCardProfile,
              onChange: (value) {
                context.read<ProfileCubit>().onChangeFormField();
              },
              readOnly: true,
              hintText: 'Masukkan NISN',
              labelText: 'NISN',
              validation: [
                RegexRule.emptyValidationRule,
              ],
            ),

            ProfileFormField(
              controller: context.read<ProfileCubit>().namaC,
              urlIcon: SvgAssetsConst.icProfile,
              hintText: 'Masukkan Nama',
              labelText: 'Nama',
              readOnly: true,
              validation: [
                RegexRule.emptyValidationRule,
              ],
              onChange: (value) {
                context.read<ProfileCubit>().onChangeFormField();
              },
            ),
            ProfileFormField(
              controller: context.read<ProfileCubit>().addressC,
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
                context.read<ProfileCubit>().onChangeFormField();
              },
            ),
            // ProfileFormField(
            //   controller: context.read<ProfileCubit>().dateC,
            //   urlIcon: SvgAssetsConst.icDate,
            //   hintText: 'Pilih Tahun Ajaran',
            //   labelText: 'Tahun Ajaran',
            //   readOnly: true,
            //   validation: [
            //     RegexRule.emptyValidationRule,
            //   ],
            //   onChange: (value) {
            //     context.read<ProfileCubit>().onChangeFormField();
            //   },
            // ),
            // ProfileFormField(
            //   controller: context.read<ProfileCubit>().classC,
            //   urlIcon: SvgAssetsConst.icClass,
            //   hintText: 'Pilih Kelas',
            //   labelText: 'Kelas',
            //   readOnly: true,
            //   validation: [
            //     RegexRule.emptyValidationRule,
            //   ],
            //   onChange: (value) {
            //     context.read<ProfileCubit>().onChangeFormField();
            //   },
            // ),
            ProfileFormField(
              controller: context.read<ProfileCubit>().noHpC,
              urlIcon: SvgAssetsConst.icPhone,
              hintText: 'Masukkan Nomor HP',
              labelText: 'Nomor HP',
              readOnly: true,
              validation: [
                RegexRule.emptyValidationRule,
              ],
              onChange: (value) {
                context.read<ProfileCubit>().onChangeFormField();
              },
            ),
            ProfileFormField(
              controller: context.read<ProfileCubit>().emailC,
              urlIcon: SvgAssetsConst.icEmail,
              hintText: 'Masukkan Alamat Email',
              labelText: 'Alamat Email',
              readOnly: true,
              validation: [
                RegexRule.emailValidationRule,
                RegexRule.emptyValidationRule,
              ],
              onChange: (value) {
                context.read<ProfileCubit>().onChangeFormField();
              },
            ),
            SizedBox(
              height: 100.h,
            ),
          ],
        ),
      ),
    );
  }
}
