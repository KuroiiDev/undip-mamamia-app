// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'opening_hour_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$OpeningHourModel {

 String get day; String? get open; String? get close;@JsonKey(name: 'is_closed') bool get isClosed;
/// Create a copy of OpeningHourModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$OpeningHourModelCopyWith<OpeningHourModel> get copyWith => _$OpeningHourModelCopyWithImpl<OpeningHourModel>(this as OpeningHourModel, _$identity);

  /// Serializes this OpeningHourModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as OpeningHourModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is OpeningHourModel&&(identical(other.day, _this.day) || other.day == _this.day)&&(identical(other.open, _this.open) || other.open == _this.open)&&(identical(other.close, _this.close) || other.close == _this.close)&&(identical(other.isClosed, _this.isClosed) || other.isClosed == _this.isClosed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as OpeningHourModel;
  return Object.hash(runtimeType,_this.day,_this.open,_this.close,_this.isClosed);
}

@override
String toString() {
  final _this = this as OpeningHourModel;
  return 'OpeningHourModel(day: ${_this.day}, open: ${_this.open}, close: ${_this.close}, isClosed: ${_this.isClosed})';
}


}

/// @nodoc
abstract mixin class $OpeningHourModelCopyWith<$Res>  {
  factory $OpeningHourModelCopyWith(OpeningHourModel value, $Res Function(OpeningHourModel) _then) = _$OpeningHourModelCopyWithImpl;
@useResult
$Res call({
 String day, String? open, String? close,@JsonKey(name: 'is_closed') bool isClosed
});




}
/// @nodoc
class _$OpeningHourModelCopyWithImpl<$Res>
    implements $OpeningHourModelCopyWith<$Res> {
  _$OpeningHourModelCopyWithImpl(this._self, this._then);

  final OpeningHourModel _self;
  final $Res Function(OpeningHourModel) _then;

/// Create a copy of OpeningHourModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? day = null,Object? open = freezed,Object? close = freezed,Object? isClosed = null,}) {
  return _then(OpeningHourModel(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,open: freezed == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as String?,close: freezed == close ? _self.close : close // ignore: cast_nullable_to_non_nullable
as String?,isClosed: null == isClosed ? _self.isClosed : isClosed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [OpeningHourModel].
extension OpeningHourModelPatterns on OpeningHourModel {
/// A variant of `map` that fallback to returning `orElse`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _OpeningHourModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _OpeningHourModel() when $default != null:
return $default(_that);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// Callbacks receives the raw object, upcasted.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case final Subclass2 value:
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _OpeningHourModel value)  $default,){
final _that = this;
switch (_that) {
case _OpeningHourModel():
return $default(_that);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `map` that fallback to returning `null`.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case final Subclass value:
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _OpeningHourModel value)?  $default,){
final _that = this;
switch (_that) {
case _OpeningHourModel() when $default != null:
return $default(_that);case _:
  return null;

}
}
/// A variant of `when` that fallback to an `orElse` callback.
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return orElse();
/// }
/// ```

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String day,  String? open,  String? close, @JsonKey(name: 'is_closed')  bool isClosed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _OpeningHourModel() when $default != null:
return $default(_that.day,_that.open,_that.close,_that.isClosed);case _:
  return orElse();

}
}
/// A `switch`-like method, using callbacks.
///
/// As opposed to `map`, this offers destructuring.
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case Subclass2(:final field2):
///     return ...;
/// }
/// ```

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String day,  String? open,  String? close, @JsonKey(name: 'is_closed')  bool isClosed)  $default,) {final _that = this;
switch (_that) {
case _OpeningHourModel():
return $default(_that.day,_that.open,_that.close,_that.isClosed);case _:
  throw StateError('Unexpected subclass');

}
}
/// A variant of `when` that fallback to returning `null`
///
/// It is equivalent to doing:
/// ```dart
/// switch (sealedClass) {
///   case Subclass(:final field):
///     return ...;
///   case _:
///     return null;
/// }
/// ```

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String day,  String? open,  String? close, @JsonKey(name: 'is_closed')  bool isClosed)?  $default,) {final _that = this;
switch (_that) {
case _OpeningHourModel() when $default != null:
return $default(_that.day,_that.open,_that.close,_that.isClosed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _OpeningHourModel implements OpeningHourModel {
  const _OpeningHourModel({required this.day, this.open, this.close, @JsonKey(name: 'is_closed') required this.isClosed});
  factory _OpeningHourModel.fromJson(Map<String, dynamic> json) => _$OpeningHourModelFromJson(json);

@override final  String day;
@override final  String? open;
@override final  String? close;
@override@JsonKey(name: 'is_closed') final  bool isClosed;

/// Create a copy of OpeningHourModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$OpeningHourModelCopyWith<_OpeningHourModel> get copyWith => __$OpeningHourModelCopyWithImpl<_OpeningHourModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$OpeningHourModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _OpeningHourModel&&(identical(other.day, day) || other.day == day)&&(identical(other.open, open) || other.open == open)&&(identical(other.close, close) || other.close == close)&&(identical(other.isClosed, isClosed) || other.isClosed == isClosed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,day,open,close,isClosed);
}

@override
String toString() {
    return 'OpeningHourModel(day: $day, open: $open, close: $close, isClosed: $isClosed)';
}


}

/// @nodoc
abstract mixin class _$OpeningHourModelCopyWith<$Res> implements $OpeningHourModelCopyWith<$Res> {
  factory _$OpeningHourModelCopyWith(_OpeningHourModel value, $Res Function(_OpeningHourModel) _then) = __$OpeningHourModelCopyWithImpl;
@override @useResult
$Res call({
 String day, String? open, String? close,@JsonKey(name: 'is_closed') bool isClosed
});




}
/// @nodoc
class __$OpeningHourModelCopyWithImpl<$Res>
    implements _$OpeningHourModelCopyWith<$Res> {
  __$OpeningHourModelCopyWithImpl(this._self, this._then);

  final _OpeningHourModel _self;
  final $Res Function(_OpeningHourModel) _then;

/// Create a copy of OpeningHourModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? day = null,Object? open = freezed,Object? close = freezed,Object? isClosed = null,}) {
  return _then(_OpeningHourModel(
day: null == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String,open: freezed == open ? _self.open : open // ignore: cast_nullable_to_non_nullable
as String?,close: freezed == close ? _self.close : close // ignore: cast_nullable_to_non_nullable
as String?,isClosed: null == isClosed ? _self.isClosed : isClosed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
