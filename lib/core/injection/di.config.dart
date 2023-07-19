// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../app/features/auth/domain/repositories/auth_local_repository.dart'
    as _i8;
import '../../app/features/auth/domain/repositories/auth_remote_repository.dart'
    as _i15;
import '../../app/features/auth/domain/usecases/get_user_profile_usecase.dart'
    as _i19;
import '../../app/features/auth/domain/usecases/login_usecase.dart' as _i21;
import '../../app/features/auth/domain/usecases/update_user_profile_usecase.dart'
    as _i13;
import '../../app/features/auth/presentation/cubit/login_cubit.dart' as _i30;
import '../../app/features/auth/presentation/cubit/splash_cubit.dart' as _i24;
import '../../app/features/home/domain/usecases/logout_usecase.dart' as _i11;
import '../../app/features/home/presentation/cubit/home_cubit.dart' as _i20;
import '../../app/features/profile/domain/repositories/profile_remote_repository.dart'
    as _i23;
import '../../app/features/profile/presentation/cubit/profile_cubit.dart'
    as _i22;
import '../../app/features/transaction/domain/repositories/bill_remote_repository.dart'
    as _i16;
import '../../app/features/transaction/domain/repositories/transaction_remote_repository.dart'
    as _i25;
import '../../app/features/transaction/domain/usecases/get_bill_datas_usecase.dart'
    as _i17;
import '../../app/features/transaction/domain/usecases/get_detail_bill_usecase.dart'
    as _i18;
import '../../app/features/transaction/domain/usecases/get_detail_transaction_usecase.dart'
    as _i26;
import '../../app/features/transaction/domain/usecases/get_transaction_datas_usecase.dart'
    as _i27;
import '../../app/features/transaction/presentation/cubit/history_bill_cubit.dart'
    as _i28;
import '../../app/features/transaction/presentation/cubit/history_payment_cubit.dart'
    as _i29;
import '../../config/routes/app_router.dart' as _i3;
import '../../utils/functions/get_context_func.dart' as _i4;
import '../../utils/services/api_services.dart' as _i14;
import '../../utils/services/date_picker_service.dart' as _i9;
import '../../utils/services/dialog_service.dart' as _i10;
import '../../utils/services/hive_services.dart' as _i5;
import '../../utils/services/image_picker_service.dart' as _i6;
import '../../utils/services/modal_bottom_sheet_service.dart' as _i12;
import '../../utils/services/snackbar_service.dart' as _i7;
import 'di_module.dart' as _i31;

// ignore_for_file: unnecessary_lambdas
// ignore_for_file: lines_longer_than_80_chars
// initializes the registration of main-scope dependencies inside of GetIt
Future<_i1.GetIt> $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) async {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  final dIModules = _$DIModules();
  gh.lazySingleton<_i3.AppRouter>(() => _i3.AppRouter());
  gh.lazySingleton<_i4.GetContextFunc>(
      () => _i4.GetContextFunc(gh<_i3.AppRouter>()));
  await gh.lazySingletonAsync<_i5.HiveService>(
    () => dIModules.box,
    preResolve: true,
  );
  gh.lazySingleton<_i6.ImagePickerService>(() => _i6.ImagePickerService());
  gh.lazySingleton<_i7.SnackbarService>(
      () => _i7.SnackbarService(gh<_i4.GetContextFunc>()));
  gh.lazySingleton<_i8.AuthLocalRepository>(
      () => _i8.AuthLocalRepository(gh<_i5.HiveService>()));
  gh.lazySingleton<_i9.DatePickerService>(
      () => _i9.DatePickerService(gh<_i4.GetContextFunc>()));
  gh.lazySingleton<_i10.DialogService>(
      () => _i10.DialogService(gh<_i4.GetContextFunc>()));
  gh.lazySingleton<_i11.LogoutUseCase>(
      () => _i11.LogoutUseCase(gh<_i8.AuthLocalRepository>()));
  gh.lazySingleton<_i12.ModalBottomSheetService>(
      () => _i12.ModalBottomSheetService(
            gh<_i4.GetContextFunc>(),
            gh<_i6.ImagePickerService>(),
            gh<_i10.DialogService>(),
          ));
  gh.lazySingleton<_i13.UpdateUserProfileUseCase>(
      () => _i13.UpdateUserProfileUseCase(gh<_i8.AuthLocalRepository>()));
  gh.lazySingleton<_i14.ApiServices>(
      () => _i14.ApiServices(gh<_i8.AuthLocalRepository>()));
  gh.lazySingleton<_i15.AuthRemoteRepository>(() => _i15.AuthRemoteRepository(
        gh<_i14.ApiServices>(),
        gh<_i8.AuthLocalRepository>(),
      ));
  gh.lazySingleton<_i16.BillRemoteRepository>(
      () => _i16.BillRemoteRepository(gh<_i14.ApiServices>()));
  gh.lazySingleton<_i17.GetBillDatasUseCase>(
      () => _i17.GetBillDatasUseCase(gh<_i16.BillRemoteRepository>()));
  gh.lazySingleton<_i18.GetDetailBillUseCase>(
      () => _i18.GetDetailBillUseCase(gh<_i16.BillRemoteRepository>()));
  gh.lazySingleton<_i19.GetUserProfileUseCase>(() => _i19.GetUserProfileUseCase(
        gh<_i15.AuthRemoteRepository>(),
        gh<_i8.AuthLocalRepository>(),
      ));
  gh.lazySingleton<_i20.HomeCubit>(() => _i20.HomeCubit(
        gh<_i4.GetContextFunc>(),
        gh<_i10.DialogService>(),
        gh<_i19.GetUserProfileUseCase>(),
        gh<_i11.LogoutUseCase>(),
      ));
  gh.lazySingleton<_i21.LoginUseCase>(
      () => _i21.LoginUseCase(gh<_i15.AuthRemoteRepository>()));
  gh.lazySingleton<_i22.ProfileCubit>(() => _i22.ProfileCubit(
        gh<_i4.GetContextFunc>(),
        gh<_i10.DialogService>(),
        gh<_i12.ModalBottomSheetService>(),
        gh<_i19.GetUserProfileUseCase>(),
      ));
  gh.lazySingleton<_i23.ProfileRemoteRepository>(
      () => _i23.ProfileRemoteRepository(gh<_i14.ApiServices>()));
  gh.lazySingleton<_i24.SplashCubit>(() => _i24.SplashCubit(
        gh<_i4.GetContextFunc>(),
        gh<_i19.GetUserProfileUseCase>(),
      ));
  gh.lazySingleton<_i25.TransactionRemoteRepository>(
      () => _i25.TransactionRemoteRepository(gh<_i14.ApiServices>()));
  gh.lazySingleton<_i26.GetDetailTransactionUseCase>(() =>
      _i26.GetDetailTransactionUseCase(gh<_i25.TransactionRemoteRepository>()));
  gh.lazySingleton<_i27.GetTransactionDatasUseCase>(() =>
      _i27.GetTransactionDatasUseCase(gh<_i25.TransactionRemoteRepository>()));
  gh.lazySingleton<_i28.HistoryBillCubit>(() => _i28.HistoryBillCubit(
        gh<_i4.GetContextFunc>(),
        gh<_i10.DialogService>(),
        gh<_i27.GetTransactionDatasUseCase>(),
        gh<_i18.GetDetailBillUseCase>(),
      ));
  gh.lazySingleton<_i29.HistoryPaymentCubit>(() => _i29.HistoryPaymentCubit(
        gh<_i4.GetContextFunc>(),
        gh<_i10.DialogService>(),
        gh<_i27.GetTransactionDatasUseCase>(),
        gh<_i26.GetDetailTransactionUseCase>(),
      ));
  gh.lazySingleton<_i30.LoginCubit>(() => _i30.LoginCubit(
        gh<_i4.GetContextFunc>(),
        gh<_i21.LoginUseCase>(),
        gh<_i10.DialogService>(),
        gh<_i13.UpdateUserProfileUseCase>(),
        gh<_i19.GetUserProfileUseCase>(),
      ));
  return getIt;
}

class _$DIModules extends _i31.DIModules {}
