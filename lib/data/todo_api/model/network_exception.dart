import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'network_exception.freezed.dart';

@freezed
class NetworkException with _$NetworkException {
  const factory NetworkException.error(String? message) =
      _NetworkExceptionError;
  const factory NetworkException.unauthorized() = _NetworkExceptionUnauthorized;
  const factory NetworkException.unknown() = _NetworkExceptionUnknown;
  const factory NetworkException.notFound() = _NetworkExceptionNotFound;
}
