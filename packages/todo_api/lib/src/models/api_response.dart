import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:todo_api/src/models/network_exception.dart';

part 'api_response.freezed.dart';

@freezed
class ApiResponse<T> with _$ApiResponse<T> {
  const factory ApiResponse.success(T value) = ApiSuccess<T>;
  const factory ApiResponse.error(NetworkException exception) = ApiError;
}
