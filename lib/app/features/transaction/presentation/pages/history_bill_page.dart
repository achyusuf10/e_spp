import 'package:auto_route/auto_route.dart';
import 'package:dotted_decoration/dotted_decoration.dart';
import 'package:e_spp/app/features/transaction/presentation/cubit/history_bill_cubit.dart';
import 'package:e_spp/app/features/transaction/presentation/widgets/button_filter.dart';
import 'package:e_spp/app/features/transaction/presentation/widgets/trx_card.dart';
import 'package:e_spp/app/widgets/appbar_widget.dart';
import 'package:e_spp/app/widgets/general_empty_error_widget.dart';
import 'package:e_spp/app/widgets/shimmer_widget.dart';
import 'package:e_spp/utils/enum/view_state.dart';
import 'package:e_spp/utils/extensions/num_x.dart';
import 'package:e_spp/utils/extensions/string_x.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_conditional_rendering/flutter_conditional_rendering.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

@RoutePage()
class HistoryBillPage extends StatelessWidget {
  const HistoryBillPage({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    context.read<HistoryBillCubit>().onInit();
    List<String> tabTransaksi = [
      'Semua',
      'Menunggu',
      'Sukses',
      'Kadaluarsa',
    ];
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarWidget.white(
        title: 'Data Tagihan',
        elevation: 2,
      ),
      body: Column(
        children: [
          SizedBox(
            height: 16.h,
          ),
          BlocBuilder<HistoryBillCubit, HistoryBillState>(
            builder: (context, state) {
              return ConditionalSwitch.single(
                context: context,
                valueBuilder: (context) => state.viewState,
                caseBuilders: {
                  ViewState.success: (context) => SizedBox(
                        height: 40.h,
                        child: ListView.separated(
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (context, index) => Padding(
                            padding: EdgeInsets.only(
                              left: (index == 0) ? 16.w : 0,
                              right:
                                  (index == tabTransaksi.length - 1) ? 16.w : 0,
                            ),
                            child: ButtonFilter(
                              onTap: () {
                                context
                                    .read<HistoryBillCubit>()
                                    .onTapFilter(index);
                              },
                              text: tabTransaksi[index],
                              isSelected: state.selectedFilter == index,
                              padding: EdgeInsets.symmetric(
                                horizontal: 24.w,
                                vertical: 0.h,
                              ),
                            ),
                          ),
                          separatorBuilder: (context, index) => SizedBox(
                            width: 10.h,
                          ),
                          itemCount: tabTransaksi.length,
                        ),
                      ),
                },
                fallbackBuilder: (context) => const SizedBox(),
              );
            },
          ),
          SizedBox(
            height: 16.h,
          ),
          const Divider(height: 1, color: Colors.grey),
          // Container(
          //   width: double.infinity,
          //   color: const Color(0xffFAFAFA),
          //   padding: EdgeInsets.symmetric(
          //     horizontal: 16.w,
          //     vertical: 8.h,
          //   ),
          //   child: Row(
          //     children: [
          //       Text(
          //         'Urutkan',
          //         style: TextStyle(
          //           color: AppColors.blackSecondary,
          //           fontSize: 16.sp,
          //           fontWeight: FontWeight.w600,
          //         ),
          //       ),
          //       const Spacer(),
          //       GestureDetector(
          //         onTap: () {},
          //         child: const Icon(
          //           Icons.filter_alt_outlined,
          //         ),
          //       )
          //     ],
          //   ),
          // ),
          BlocBuilder<HistoryBillCubit, HistoryBillState>(
            builder: (context, state) {
              return Expanded(
                child: ConditionalSwitch.single(
                  context: context,
                  valueBuilder: (context) => state.viewState,
                  caseBuilders: {
                    ViewState.loading: (context) => const ShimmerWidget.list(
                          length: 5,
                        ),
                    ViewState.empty: (context) => GeneralEmptyErrorWidget(
                          onRefresh:
                              context.read<HistoryBillCubit>().onGetDatas,
                        ),
                    ViewState.error: (context) => GeneralEmptyErrorWidget(
                          onRefresh:
                              context.read<HistoryBillCubit>().onGetDatas,
                          titleText: 'Upss Ada Masalah',
                          descText:
                              'Terjadi kesalahan, silahkan\nrefresh halaman ini',
                        ),
                    ViewState.success: (context) {
                      if (state.listDatas.isEmpty) {
                        return GeneralEmptyErrorWidget(
                          onRefresh:
                              context.read<HistoryBillCubit>().onGetDatas,
                        );
                      }
                      return RefreshIndicator(
                        onRefresh: context.read<HistoryBillCubit>().onGetDatas,
                        child: ListView.separated(
                          itemBuilder: (context, index) {
                            var data = state.listDatas[index];
                            return Container(
                              decoration: DottedDecoration(),
                              margin: EdgeInsets.only(
                                bottom: 10.h,
                                left: 16.w,
                                right: 16.w,
                              ),
                              child: TrxCard(
                                onTap: () {
                                  context
                                      .read<HistoryBillCubit>()
                                      .onTapItemCard(data);
                                },
                                nominal: (data.spp?.nominal ?? 0).toRupiah(),
                                status: data.statusPembayaran ?? '0',
                                time: (data.time ?? '')
                                    .extToCustomFormattedDate(
                                        originFormatDate: "yyyy-MM-dd hh:mm:ss",
                                        outputDateFormat: 'dd MMMM yyyy hh:mm'),
                                titleMonth: data.spp?.bulan ?? '',
                              ),
                            );
                          },
                          separatorBuilder: (context, index) =>
                              const SizedBox(),
                          itemCount: state.listDatas.length,
                        ),
                      );
                    },
                  },
                  fallbackBuilder: (context) => const SizedBox(),
                ),
              );
            },
          ),
        ],
      ),
    );
  }
}
