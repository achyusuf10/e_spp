import 'dart:io';
import 'dart:ui' as ui;

import 'package:auto_route/annotations.dart';
import 'package:e_spp/app/features/transaction/domain/models/trx_model.dart';
import 'package:e_spp/app/features/transaction/presentation/widgets/custom_expandable_card.dart';
import 'package:e_spp/app/features/transaction/presentation/widgets/status_trx_widget.dart';
import 'package:e_spp/app/widgets/appbar_widget.dart';
import 'package:e_spp/app/widgets/main_button.dart';
import 'package:e_spp/config/themes/app_colors.dart';
import 'package:e_spp/constant/core/img_assets_const.dart';
import 'package:e_spp/utils/extensions/num_x.dart';
import 'package:e_spp/utils/extensions/string_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:path_provider/path_provider.dart';
import 'package:share_plus/share_plus.dart';

@RoutePage()
class DetailPaymentPage extends StatelessWidget {
  final TrxModel trxModel;
  DetailPaymentPage({
    Key? key,
    required this.trxModel,
  }) : super(key: key);

  var renderKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.grayBackground,
      appBar: const AppBarWidget.green(
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
                  RepaintBoundary(
                    key: renderKey,
                    child: Container(
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
                            (trxModel.spp?.nominal ?? 0).toRupiah(),
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
                            trxModel.spp?.bulan ?? '',
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
                          detailReference(),
                          detailPayment(context),
                          SizedBox(
                            height: 15.h,
                          ),
                          Row(
                            children: [
                              Text(
                                'Total',
                                style: TextStyle(
                                  color: AppColors.graySecondary,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              const Spacer(),
                              Text(
                                ((trxModel.spp?.nominal ?? 0) + 0).toRupiah(),
                                style: TextStyle(
                                  color: AppColors.blackSecondary,
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
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
                      onTap: _onTapShare,
                      text: 'Bagikan Bukti Transaksi',
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

  Widget getStatusWidget() {
    Widget res = const SizedBox();
    switch (trxModel.statusPembayaran) {
      case '2':
        res = Text(
          'Sukses',
          textAlign: TextAlign.end,
          style: TextStyle(
            color: AppColors.greenPrimary,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
          ),
          textScaleFactor: 1.0,
        );

        break;
      case '1':
        res = Text(
          'Tertunda',
          textAlign: TextAlign.end,
          style: TextStyle(
            color: Colors.orange,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
          ),
          textScaleFactor: 1.0,
        );

        break;
      case '3':
        res = Text(
          'Kadaluarsa',
          textAlign: TextAlign.end,
          style: TextStyle(
            color: AppColors.redPrimary,
            fontSize: 14.sp,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.5,
          ),
          textScaleFactor: 1.0,
        );

        break;
      default:
    }
    return res;
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
              status: trxModel.statusPembayaran,
            ),
          ],
        ),
        SizedBox(
          height: 12.h,
        ),
        _field(
            title: 'Tangggal Transaksi',
            body: (trxModel.time ?? '').extToCustomFormattedDate(
                originFormatDate: "yyyy-MM-dd hh:mm:ss",
                outputDateFormat: 'dd MMMM yyyy hh:mm')),
        SizedBox(
          height: 12.h,
        ),
        _field(title: 'NISN', body: (trxModel.user?.nisn ?? 0).toString()),
        SizedBox(
          height: 12.h,
        ),
        _field(title: 'Nama Siswa', body: trxModel.user?.name ?? '-'),
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

  Widget detailReference() {
    return CustomExpandableCard(
      border: ExpandedBorder.bottom,
      isDottedBorder: true,
      header: Text(
        'Rincian Referensi',
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
              'Kode Pembayaran',
              style: TextStyle(
                color: AppColors.graySecondary,
                fontSize: 16.sp,
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(
              width: 20.w,
            ),
            Expanded(
              child: Text(
                trxModel.kodePembayaran ?? '-',
                style: TextStyle(
                  color: AppColors.blackSecondary,
                  fontSize: 16.sp,
                  fontWeight: FontWeight.w500,
                ),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
                textAlign: TextAlign.right,
              ),
            ),
            SizedBox(
              width: 10.w,
            ),
            GestureDetector(
              onTap: () async {
                await Clipboard.setData(
                  const ClipboardData(text: 'ola'),
                );
                _showToastSuccessCopy(prefix: '');
              },
              child: Icon(
                Icons.copy_outlined,
                color: AppColors.greenSecondary,
                size: 21.h,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 28.h,
        ),
      ],
    );
  }

  Widget detailPayment(BuildContext context) {
    return CustomExpandableCard(
      border: ExpandedBorder.bottom,
      isDottedBorder: true,
      header: Text(
        'Rincian Pembayaran',
        style: TextStyle(
          color: AppColors.blackSecondary,
          fontWeight: FontWeight.w600,
          fontSize: 18.sp,
        ),
      ),
      children: [
        // _field(title: 'Metode Pembayaran', body: 'BRI (Bank Transfer)'),
        // SizedBox(
        //   height: 12.h,
        // ),
        _field(
            title: 'Total Tagihan',
            body: (trxModel.spp?.nominal ?? 0).toRupiah()),
        SizedBox(
          height: 12.h,
        ),
        _field(title: 'Biaya Admin', body: 0.toRupiah()),
        SizedBox(
          height: 28.h,
        ),
      ],
    );
  }

  void _showToastSuccessCopy({required String prefix}) {
    Fluttertoast.showToast(
      msg: '$prefix berhasil disalin',
      toastLength: Toast.LENGTH_SHORT,
      gravity: ToastGravity.BOTTOM,
      timeInSecForIosWeb: 1,
      backgroundColor: AppColors.blackPrimary,
      textColor: Colors.white,
      fontSize: 16.sp,
    );
  }

  Future<File> _captureWidget({required GlobalKey key}) async {
    Uint8List? sharedImageList;

    try {
      var boundary =
          key.currentContext?.findRenderObject() as RenderRepaintBoundary;
      ui.Image image = await boundary.toImage(pixelRatio: 3.0);
      ByteData? pngByteData =
          await image.toByteData(format: ui.ImageByteFormat.png);
      sharedImageList = pngByteData?.buffer.asUint8List();

      // Save to tmp folder
      final appDir = await getTemporaryDirectory();
      String path = '${appDir.path}/${DateTime.now().millisecond}.png';
      File file = File(path);
      await file.writeAsBytes(sharedImageList!.toList());
      return file;
    } catch (e) {
      rethrow;
    }
  }

  void _onTapShare() async {
    var fileSS = await _captureWidget(key: renderKey);
    Share.shareXFiles([
      XFile(fileSS.path),
    ], text: '');
  }
}
