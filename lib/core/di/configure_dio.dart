import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

Future<Dio> configureDio(
  List<Interceptor> interceptors,
  // IAuthRepository Function(Dio) authRepository,
  // ILocalAuthRepository localAuthRepository,
) async {
  // TODO(KiSSEDBYFiR3): update dio init after integraring auth feature
  final Dio dio = Dio();
  const timeout = Duration(seconds: 30);
  dio.options
    // ..baseUrl = MainUrl.url
    ..contentType = Headers.formUrlEncodedContentType
    ..connectTimeout = timeout
    ..sendTimeout = timeout
    ..receiveTimeout = timeout;

  dio.interceptors.add(PrettyDioLogger());
  dio.interceptors.addAll(interceptors);

  // final refreshToken = await localAuthRepository.getRefreshToken();
  // final accessToken = await localAuthRepository.getAccessToken();

  // final authInterceptor = AuthInterceptor(
  //   authRepository: authRepository(dio),
  //   dio: dio,
  //   accessToken: accessToken,
  //   refreshToken: refreshToken,
  //   basicToken: Consts.basicAuthToken,
  // );

  // dio.interceptors.add(authInterceptor);
  // await authInterceptor.init();

  return dio;
}
