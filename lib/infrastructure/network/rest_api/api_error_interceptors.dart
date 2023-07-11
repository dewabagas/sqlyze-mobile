import 'package:dio/dio.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:sqlyze/domain/core/constants/preference_constants.dart';
import 'package:sqlyze/domain/core/helpers/preference_helper.dart';
import 'package:sqlyze/presentation/core/app.dart';
import 'package:sqlyze/presentation/routes/router.gr.dart';

class AppInterceptors extends Interceptor {
  @override
  void onError(DioError err, ErrorInterceptorHandler handler) {
    switch (err.type) {
      case DioErrorType.connectTimeout:
      case DioErrorType.sendTimeout:
      case DioErrorType.receiveTimeout:
        throw DeadlineExceededException(err.requestOptions);
      case DioErrorType.response:
        switch (err.response?.statusCode) {
          case 400:
            throw BadRequestException(err.requestOptions);
          case 401:
            final responseMessage = err.response?.data['message'];
            if (responseMessage == 'Token has expired') {
              clearUserCredentials();
              throw TokenExpiredException(err.requestOptions);
            } else {
              throw UnauthorizedException(err.requestOptions);
            }
          case 404:
            throw NotFoundException(err.requestOptions);
          case 409:
            throw ConflictException(err.requestOptions);
          case 500:
            throw InternalServerErrorException(err.requestOptions);
        }
        break;
      case DioErrorType.cancel:
        break;
      case DioErrorType.other:
        throw NoInternetConnectionException(err.requestOptions);
    }

    return handler.next(err);
  }
}

void clearUserCredentials() async {
  Fluttertoast.showToast(msg: 'Sesi Anda Telah Habis, Silahkan Masuk Kembali');
  await removeValuesPreference(key: PreferenceConstants.accessToken);
  await addBoolToPreference(key: PreferenceConstants.isLoggedIn, value: false);
  await appRouter.replace(RouteGuestDashboard());
}

class BadRequestException extends DioError {
  BadRequestException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Invalid request';
  }
}

class InternalServerErrorException extends DioError {
  InternalServerErrorException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Unknown error occurred, please try again later.';
  }
}

class ConflictException extends DioError {
  ConflictException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'Conflict occurred';
  }
}

class UnauthorizedException extends DioError {
  final String message;
  UnauthorizedException(RequestOptions r, {this.message = 'Access denied'})
      : super(requestOptions: r);

  @override
  String toString() {
    return message;
  }
}

class TokenExpiredException extends UnauthorizedException {
  TokenExpiredException(RequestOptions r)
      : super(r, message: 'Token has expired');
}

class NotFoundException extends DioError {
  NotFoundException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The requested information could not be found';
  }
}

class NoInternetConnectionException extends DioError {
  NoInternetConnectionException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'No internet connection detected, please try again.';
  }
}

class DeadlineExceededException extends DioError {
  DeadlineExceededException(RequestOptions r) : super(requestOptions: r);

  @override
  String toString() {
    return 'The connection has timed out, please try again.';
  }
}
