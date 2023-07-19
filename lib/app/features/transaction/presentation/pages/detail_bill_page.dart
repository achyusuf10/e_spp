import 'package:auto_route/annotations.dart';
import 'package:e_spp/app/features/transaction/presentation/widgets/custom_expandable_card.dart';
import 'package:e_spp/app/features/transaction/presentation/widgets/status_trx_widget.dart';
import 'package:e_spp/app/widgets/appbar_widget.dart';
import 'package:e_spp/app/widgets/main_button.dart';
import 'package:e_spp/config/themes/app_colors.dart';
import 'package:e_spp/constant/core/img_assets_const.dart';
import 'package:e_spp/utils/extensions/date_time_x.dart';
import 'package:e_spp/utils/extensions/num_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class DetailBillPage extends StatelessWidget {
  const DetailBillPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBackground,
      appBar: AppBarWidget.green(
        title: 'Detail Pembayaran',
      ),
      body: Stack(
        children: [
          Container(
            width: double.infinity,
            height: 133.h,
            color: AppColors.greenSecondary,
          ),
          SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 16.w),
            child: Container(
              width: double.infinity,
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.vertical(
                  bottom: Radius.circular(8.r),
                  top: Radius.circular(8.r),
                ),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(16.w, 40.h, 16.w, 32.h),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(8.r),
                        top: Radius.circular(8.r),
                      ),
                    ),
                    child: Column(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: AppColors.greenPrimary.withOpacity(0.12),
                          ),
                          padding: EdgeInsets.all(12.h),
                          width: 64.w,
                          height: 64.w,
                          child: Image.asset(
                            ImgAssetsConst.illusMoney,
                            fit: BoxFit.contain,
                          ),
                        ),
                        SizedBox(
                          height: 8.h,
                        ),
                        Text(
                          10000.toRupiah(),
                          style: TextStyle(
                            color: AppColors.blackSecondary,
                            fontSize: 36.sp,
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          'Bulan Januari',
                          style: TextStyle(
                            color: AppColors.blackSecondary,
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w700,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(
                          height: 36.h,
                        ),
                        detailTransaction(context),
                        SizedBox(
                          height: 15.h,
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: double.infinity,
                    padding: EdgeInsets.fromLTRB(16.w, 0, 16.w, 32.h),
                    decoration: BoxDecoration(
                      color: AppColors.white,
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(8.r),
                      ),
                    ),
                    child: MainButton(
                      onTap: () {},
                      text: 'Bayar Sekarang',
                      textColor: AppColors.white,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget detailTransaction(BuildContext context) {
    return CustomExpandableCard(
      isDottedBorder: true,
      header: Text(
        'Rincian Transaksi',
        style: TextStyle(
          color: AppColors.blackSecondary,
          fontWeight: FontWeight.w600,
          fontSize: 18.sp,
        ),
      ),
      children: [
        Row(
          children: [
            Text(
              'Status',
              style: TextStyle(
                color: AppColors.graySecondary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            const Spacer(),
            StatusTrxWidget(
              status: '',
            ),
          ],
        ),
        SizedBox(
          height: 12.h,
        ),
        _field(
            title: 'Tangggal Transaksi',
            body: DateTime.now()
                .extToFormattedString(outputDateFormat: 'dd-MM-yyyy HH:mm')),
        SizedBox(
          height: 12.h,
        ),
        _field(title: 'NISN', body: '31257'),
        SizedBox(
          height: 12.h,
        ),
        _field(title: 'Nama Siswa', body: 'Najwa Shihab'),
        SizedBox(
          height: 12.h,
        ),
        _field(title: 'Kelas', body: 'VA'),
        SizedBox(
          height: 12.h,
        ),
        _field(title: 'Tahun Ajaran', body: '2022/2023'),
        SizedBox(
          height: 12.h,
        ),
        _field(
          title: 'Nominal',
          body: 3000000.toRupiah(),
        ),
        SizedBox(
          height: 28.h,
        ),
      ],
    );
  }

  Widget _field({
    required String title,
    required String body,
  }) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(
            color: AppColors.graySecondary,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        Text(
          body,
          style: TextStyle(
            color: AppColors.blackSecondary,
            fontSize: 16.sp,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
