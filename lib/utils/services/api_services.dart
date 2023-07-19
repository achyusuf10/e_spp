import 'package:auto_route/auto_route.dart';
import 'package:dio/dio.dart';
import 'package:e_spp/app/features/auth/domain/repositories/auth_local_repository.dart';
import 'package:e_spp/config/routes/app_router.dart';
import 'package:e_spp/constant/common/app_const.dart';
import 'package:e_spp/core/injection/di.dart';
import 'package:e_spp/utils/functions/get_context_func.dart';
import 'package:injectable/injectable.dart';

@lazySingleton
class ApiServices {
  final AuthLocalRepository _localRepository;
  ApiServices(this._localRepository);

  Dio get call {
    Dio dio = Dio(
      BaseOptions(
        baseUrl: AppConst.baseURL,
        connectTimeout: const Duration(seconds: 10),
        sendTimeout: const Duration(seconds: 10),
        receiveTimeout: const Duration(seconds: 10),
        contentType: "application/json",
        responseType: ResponseType.json,
        headers: {
          'Authorization': 'Bearer ${_localRepository.getToken()}',
        },
      ),
    );
    dio.interceptors.add(AppInterceptor());
    return dio;
  }
}

class AppInterceptor extends Interceptor {
  @override
  void onError(DioException err, ErrorInterceptorHandler handler) async {
    /// * Jika Response bukan 401
    if (err.response?.statusCode != 401) return handler.next(err);
    if ((err.response?.data['message'] ?? '')
        .toString()
        .toLowerCase()
        .contains('expired')) {
      di.get<GetContextFunc>().exec.router.replaceAll(
        [
          const LoginRoute(),
        ],
      );
      return;
    }
    return handler.next(err);
  }
}
