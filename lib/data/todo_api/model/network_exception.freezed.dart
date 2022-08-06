// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'network_exception.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$NetworkException {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) error,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
    required TResult Function() notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkExceptionError value) error,
    required TResult Function(_NetworkExceptionUnauthorized value) unauthorized,
    required TResult Function(_NetworkExceptionUnknown value) unknown,
    required TResult Function(_NetworkExceptionNotFound value) notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkExceptionError value)? error,
    TResult Function(_NetworkExceptionUnauthorized value)? unauthorized,
    TResult Function(_NetworkExceptionUnknown value)? unknown,
    TResult Function(_NetworkExceptionNotFound value)? notFound,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkExceptionError value)? error,
    TResult Function(_NetworkExceptionUnauthorized value)? unauthorized,
    TResult Function(_NetworkExceptionUnknown value)? unknown,
    TResult Function(_NetworkExceptionNotFound value)? notFound,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkExceptionCopyWith<$Res> {
  factory $NetworkExceptionCopyWith(
          NetworkException value, $Res Function(NetworkException) then) =
      _$NetworkExceptionCopyWithImpl<$Res>;
}

/// @nodoc
class _$NetworkExceptionCopyWithImpl<$Res>
    implements $NetworkExceptionCopyWith<$Res> {
  _$NetworkExceptionCopyWithImpl(this._value, this._then);

  final NetworkException _value;
  // ignore: unused_field
  final $Res Function(NetworkException) _then;
}

/// @nodoc
abstract class _$$_NetworkExceptionErrorCopyWith<$Res> {
  factory _$$_NetworkExceptionErrorCopyWith(_$_NetworkExceptionError value,
          $Res Function(_$_NetworkExceptionError) then) =
      __$$_NetworkExceptionErrorCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class __$$_NetworkExceptionErrorCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$_NetworkExceptionErrorCopyWith<$Res> {
  __$$_NetworkExceptionErrorCopyWithImpl(_$_NetworkExceptionError _value,
      $Res Function(_$_NetworkExceptionError) _then)
      : super(_value, (v) => _then(v as _$_NetworkExceptionError));

  @override
  _$_NetworkExceptionError get _value =>
      super._value as _$_NetworkExceptionError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_$_NetworkExceptionError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_NetworkExceptionError
    with DiagnosticableTreeMixin
    implements _NetworkExceptionError {
  const _$_NetworkExceptionError(this.message);

  @override
  final String? message;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkException.error(message: $message)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'NetworkException.error'))
      ..add(DiagnosticsProperty('message', message));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkExceptionError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  _$$_NetworkExceptionErrorCopyWith<_$_NetworkExceptionError> get copyWith =>
      __$$_NetworkExceptionErrorCopyWithImpl<_$_NetworkExceptionError>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) error,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
    required TResult Function() notFound,
  }) {
    return error(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? notFound,
  }) {
    return error?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkExceptionError value) error,
    required TResult Function(_NetworkExceptionUnauthorized value) unauthorized,
    required TResult Function(_NetworkExceptionUnknown value) unknown,
    required TResult Function(_NetworkExceptionNotFound value) notFound,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkExceptionError value)? error,
    TResult Function(_NetworkExceptionUnauthorized value)? unauthorized,
    TResult Function(_NetworkExceptionUnknown value)? unknown,
    TResult Function(_NetworkExceptionNotFound value)? notFound,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkExceptionError value)? error,
    TResult Function(_NetworkExceptionUnauthorized value)? unauthorized,
    TResult Function(_NetworkExceptionUnknown value)? unknown,
    TResult Function(_NetworkExceptionNotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _NetworkExceptionError implements NetworkException {
  const factory _NetworkExceptionError(final String? message) =
      _$_NetworkExceptionError;

  String? get message;
  @JsonKey(ignore: true)
  _$$_NetworkExceptionErrorCopyWith<_$_NetworkExceptionError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_NetworkExceptionUnauthorizedCopyWith<$Res> {
  factory _$$_NetworkExceptionUnauthorizedCopyWith(
          _$_NetworkExceptionUnauthorized value,
          $Res Function(_$_NetworkExceptionUnauthorized) then) =
      __$$_NetworkExceptionUnauthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkExceptionUnauthorizedCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$_NetworkExceptionUnauthorizedCopyWith<$Res> {
  __$$_NetworkExceptionUnauthorizedCopyWithImpl(
      _$_NetworkExceptionUnauthorized _value,
      $Res Function(_$_NetworkExceptionUnauthorized) _then)
      : super(_value, (v) => _then(v as _$_NetworkExceptionUnauthorized));

  @override
  _$_NetworkExceptionUnauthorized get _value =>
      super._value as _$_NetworkExceptionUnauthorized;
}

/// @nodoc

class _$_NetworkExceptionUnauthorized
    with DiagnosticableTreeMixin
    implements _NetworkExceptionUnauthorized {
  const _$_NetworkExceptionUnauthorized();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkException.unauthorized()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
        .add(DiagnosticsProperty('type', 'NetworkException.unauthorized'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkExceptionUnauthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) error,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
    required TResult Function() notFound,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? notFound,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkExceptionError value) error,
    required TResult Function(_NetworkExceptionUnauthorized value) unauthorized,
    required TResult Function(_NetworkExceptionUnknown value) unknown,
    required TResult Function(_NetworkExceptionNotFound value) notFound,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkExceptionError value)? error,
    TResult Function(_NetworkExceptionUnauthorized value)? unauthorized,
    TResult Function(_NetworkExceptionUnknown value)? unknown,
    TResult Function(_NetworkExceptionNotFound value)? notFound,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkExceptionError value)? error,
    TResult Function(_NetworkExceptionUnauthorized value)? unauthorized,
    TResult Function(_NetworkExceptionUnknown value)? unknown,
    TResult Function(_NetworkExceptionNotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _NetworkExceptionUnauthorized implements NetworkException {
  const factory _NetworkExceptionUnauthorized() =
      _$_NetworkExceptionUnauthorized;
}

/// @nodoc
abstract class _$$_NetworkExceptionUnknownCopyWith<$Res> {
  factory _$$_NetworkExceptionUnknownCopyWith(_$_NetworkExceptionUnknown value,
          $Res Function(_$_NetworkExceptionUnknown) then) =
      __$$_NetworkExceptionUnknownCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkExceptionUnknownCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$_NetworkExceptionUnknownCopyWith<$Res> {
  __$$_NetworkExceptionUnknownCopyWithImpl(_$_NetworkExceptionUnknown _value,
      $Res Function(_$_NetworkExceptionUnknown) _then)
      : super(_value, (v) => _then(v as _$_NetworkExceptionUnknown));

  @override
  _$_NetworkExceptionUnknown get _value =>
      super._value as _$_NetworkExceptionUnknown;
}

/// @nodoc

class _$_NetworkExceptionUnknown
    with DiagnosticableTreeMixin
    implements _NetworkExceptionUnknown {
  const _$_NetworkExceptionUnknown();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkException.unknown()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'NetworkException.unknown'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkExceptionUnknown);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) error,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
    required TResult Function() notFound,
  }) {
    return unknown();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? notFound,
  }) {
    return unknown?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkExceptionError value) error,
    required TResult Function(_NetworkExceptionUnauthorized value) unauthorized,
    required TResult Function(_NetworkExceptionUnknown value) unknown,
    required TResult Function(_NetworkExceptionNotFound value) notFound,
  }) {
    return unknown(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkExceptionError value)? error,
    TResult Function(_NetworkExceptionUnauthorized value)? unauthorized,
    TResult Function(_NetworkExceptionUnknown value)? unknown,
    TResult Function(_NetworkExceptionNotFound value)? notFound,
  }) {
    return unknown?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkExceptionError value)? error,
    TResult Function(_NetworkExceptionUnauthorized value)? unauthorized,
    TResult Function(_NetworkExceptionUnknown value)? unknown,
    TResult Function(_NetworkExceptionNotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (unknown != null) {
      return unknown(this);
    }
    return orElse();
  }
}

abstract class _NetworkExceptionUnknown implements NetworkException {
  const factory _NetworkExceptionUnknown() = _$_NetworkExceptionUnknown;
}

/// @nodoc
abstract class _$$_NetworkExceptionNotFoundCopyWith<$Res> {
  factory _$$_NetworkExceptionNotFoundCopyWith(
          _$_NetworkExceptionNotFound value,
          $Res Function(_$_NetworkExceptionNotFound) then) =
      __$$_NetworkExceptionNotFoundCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_NetworkExceptionNotFoundCopyWithImpl<$Res>
    extends _$NetworkExceptionCopyWithImpl<$Res>
    implements _$$_NetworkExceptionNotFoundCopyWith<$Res> {
  __$$_NetworkExceptionNotFoundCopyWithImpl(_$_NetworkExceptionNotFound _value,
      $Res Function(_$_NetworkExceptionNotFound) _then)
      : super(_value, (v) => _then(v as _$_NetworkExceptionNotFound));

  @override
  _$_NetworkExceptionNotFound get _value =>
      super._value as _$_NetworkExceptionNotFound;
}

/// @nodoc

class _$_NetworkExceptionNotFound
    with DiagnosticableTreeMixin
    implements _NetworkExceptionNotFound {
  const _$_NetworkExceptionNotFound();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'NetworkException.notFound()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(DiagnosticsProperty('type', 'NetworkException.notFound'));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_NetworkExceptionNotFound);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) error,
    required TResult Function() unauthorized,
    required TResult Function() unknown,
    required TResult Function() notFound,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? notFound,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? error,
    TResult Function()? unauthorized,
    TResult Function()? unknown,
    TResult Function()? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_NetworkExceptionError value) error,
    required TResult Function(_NetworkExceptionUnauthorized value) unauthorized,
    required TResult Function(_NetworkExceptionUnknown value) unknown,
    required TResult Function(_NetworkExceptionNotFound value) notFound,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_NetworkExceptionError value)? error,
    TResult Function(_NetworkExceptionUnauthorized value)? unauthorized,
    TResult Function(_NetworkExceptionUnknown value)? unknown,
    TResult Function(_NetworkExceptionNotFound value)? notFound,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_NetworkExceptionError value)? error,
    TResult Function(_NetworkExceptionUnauthorized value)? unauthorized,
    TResult Function(_NetworkExceptionUnknown value)? unknown,
    TResult Function(_NetworkExceptionNotFound value)? notFound,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NetworkExceptionNotFound implements NetworkException {
  const factory _NetworkExceptionNotFound() = _$_NetworkExceptionNotFound;
}
