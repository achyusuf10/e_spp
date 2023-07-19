import 'package:auto_route/auto_route.dart';
import 'package:e_spp/app/features/home/presentation/cubit/home_cubit.dart';
import 'package:e_spp/app/features/home/presentation/widgets/student_card.dart';
import 'package:e_spp/config/themes/app_colors.dart';
import 'package:e_spp/constant/core/img_assets_const.dart';
import 'package:e_spp/utils/extensions/string_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});
  @override
  Widget build(BuildContext context) {
    context.read<HomeCubit>().onInit();
    return Scaffold(
      body: Stack(
        children: [
          Image.asset(
            ImgAssetsConst.bgHome,
            width: double.infinity,
          ),
          SafeArea(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 16.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: Row(
                      children: [
                        Container(
                          width: 40.h,
                          height: 40.h,
                          padding: EdgeInsets.all(8.h),
                          decoration: const BoxDecoration(
                            color: Colors.white,
                            shape: BoxShape.circle,
                          ),
                          child: Image.asset(
                            ImgAssetsConst.logoMI,
                            fit: BoxFit.fitHeight,
                          ),
                        ),
                        SizedBox(
                          width: 10.w,
                        ),
                        BlocBuilder<HomeCubit, HomeState>(
                          builder: (context, state) {
                            return Text(
                              'Halo, ${state.userData.name ?? 'User'}',
                              style: TextStyle(
                                fontSize: 16.sp,
                                fontWeight: FontWeight.w600,
                                color: AppColors.white,
                              ),
                            );
                          },
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 20.h,
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16.w),
                    child: BlocBuilder<HomeCubit, HomeState>(
                      builder: (context, state) {
                        return StudentCard(
                          nameStudent:
                              (state.userData.name ?? 'User').extToTitleCase(),
                          nisn: state.userData.nisn.toString(),
                        );
                      },
                    ),
                  ),
                  SizedBox(
                    height: 30.h,
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(
                      35.w,
                      37.h,
                      35.w,
                      30.h,
                    ),
                    width: double.infinity,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(
                          20.r,
                        ),
                      ),
                    ),
                    child: GridView.count(
                      shrinkWrap: true,
                      primary: false,
                      crossAxisCount: 2,
                      mainAxisSpacing: 30.w,
                      crossAxisSpacing: 30.h,
                      childAspectRatio: 1,
                      children: [
                        _buttonMenu(
                          name: 'Profile',
                          onTap: context.read<HomeCubit>().onTapProfile,
                          urlIcon: ImgAssetsConst.icProfile,
                        ),
                        _buttonMenu(
                          name: 'Data Tagihan',
                          paddingImage: EdgeInsets.all(13.h),
                          onTap: context.read<HomeCubit>().onTapBill,
                          urlIcon: ImgAssetsConst.icMoney,
                        ),
                        _buttonMenu(
                          paddingImage: EdgeInsets.all(13.h),
                          name: 'Riwayat\nPembayaran',
                          onTap: context.read<HomeCubit>().onTapHistoryPayment,
                          urlIcon: ImgAssetsConst.icHistoryPayment,
                        ),
                        _buttonMenu(
                          name: 'Logout',
                          paddingImage: EdgeInsets.only(
                            left: 13.w,
                            right: 6.w,
                            top: 3.h,
                            bottom: 3.h,
                          ),
                          onTap: context.read<HomeCubit>().onTapLogout,
                          urlIcon: ImgAssetsConst.icLogout,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _buttonMenu({
    required String name,
    required String urlIcon,
    required Function()? onTap,
    EdgeInsets? paddingImage,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 5,
        fixedSize: Size(140.h, 140.h),
        padding: EdgeInsets.zero,
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(
            16.r,
          ),
        ),
        backgroundColor: Colors.white,
        foregroundColor: AppColors.greenSecondary,
      ),
      onPressed: onTap,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 12.h,
          ),
          Container(
            width: 60.h,
            height: 60.h,
            padding: paddingImage,
            decoration: BoxDecoration(
              color: AppColors.greenPrimary.withOpacity(0.15),
              shape: BoxShape.circle,
            ),
            child: Image.asset(urlIcon),
          ),
          SizedBox(
            height: 11.h,
          ),
          Text(
            name,
            style: TextStyle(
              fontSize: 14.sp,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
