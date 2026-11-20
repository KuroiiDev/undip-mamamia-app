// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminUserModel {

 String get id; String get name; String get email; String get role; String get status;@JsonKey(name: 'banned_reason') String? get bannedReason;@JsonKey(name: 'avatar_url') String? get avatarUrl;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of AdminUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminUserModelCopyWith<AdminUserModel> get copyWith => _$AdminUserModelCopyWithImpl<AdminUserModel>(this as AdminUserModel, _$identity);

  /// Serializes this AdminUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminUserModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminUserModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.email, _this.email) || other.email == _this.email)&&(identical(other.role, _this.role) || other.role == _this.role)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.bannedReason, _this.bannedReason) || other.bannedReason == _this.bannedReason)&&(identical(other.avatarUrl, _this.avatarUrl) || other.avatarUrl == _this.avatarUrl)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminUserModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.email,_this.role,_this.status,_this.bannedReason,_this.avatarUrl,_this.createdAt);
}

@override
String toString() {
  final _this = this as AdminUserModel;
  return 'AdminUserModel(id: ${_this.id}, name: ${_this.name}, email: ${_this.email}, role: ${_this.role}, status: ${_this.status}, bannedReason: ${_this.bannedReason}, avatarUrl: ${_this.avatarUrl}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $AdminUserModelCopyWith<$Res>  {
  factory $AdminUserModelCopyWith(AdminUserModel value, $Res Function(AdminUserModel) _then) = _$AdminUserModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String email, String role, String status,@JsonKey(name: 'banned_reason') String? bannedReason,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class _$AdminUserModelCopyWithImpl<$Res>
    implements $AdminUserModelCopyWith<$Res> {
  _$AdminUserModelCopyWithImpl(this._self, this._then);

  final AdminUserModel _self;
  final $Res Function(AdminUserModel) _then;

/// Create a copy of AdminUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,Object? role = null,Object? status = null,Object? bannedReason = freezed,Object? avatarUrl = freezed,Object? createdAt = freezed,}) {
  return _then(AdminUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,bannedReason: freezed == bannedReason ? _self.bannedReason : bannedReason // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminUserModel].
extension AdminUserModelPatterns on AdminUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminUserModel value)  $default,){
final _that = this;
switch (_that) {
case _AdminUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdminUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String role,  String status, @JsonKey(name: 'banned_reason')  String? bannedReason, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminUserModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.role,_that.status,_that.bannedReason,_that.avatarUrl,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String email,  String role,  String status, @JsonKey(name: 'banned_reason')  String? bannedReason, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _AdminUserModel():
return $default(_that.id,_that.name,_that.email,_that.role,_that.status,_that.bannedReason,_that.avatarUrl,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String email,  String role,  String status, @JsonKey(name: 'banned_reason')  String? bannedReason, @JsonKey(name: 'avatar_url')  String? avatarUrl, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AdminUserModel() when $default != null:
return $default(_that.id,_that.name,_that.email,_that.role,_that.status,_that.bannedReason,_that.avatarUrl,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminUserModel implements AdminUserModel {
  const _AdminUserModel({required this.id, required this.name, required this.email, required this.role, required this.status, @JsonKey(name: 'banned_reason') this.bannedReason, @JsonKey(name: 'avatar_url') this.avatarUrl, @JsonKey(name: 'created_at') this.createdAt});
  factory _AdminUserModel.fromJson(Map<String, dynamic> json) => _$AdminUserModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String email;
@override final  String role;
@override final  String status;
@override@JsonKey(name: 'banned_reason') final  String? bannedReason;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of AdminUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminUserModelCopyWith<_AdminUserModel> get copyWith => __$AdminUserModelCopyWithImpl<_AdminUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email)&&(identical(other.role, role) || other.role == role)&&(identical(other.status, status) || other.status == status)&&(identical(other.bannedReason, bannedReason) || other.bannedReason == bannedReason)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,email,role,status,bannedReason,avatarUrl,createdAt);
}

@override
String toString() {
    return 'AdminUserModel(id: $id, name: $name, email: $email, role: $role, status: $status, bannedReason: $bannedReason, avatarUrl: $avatarUrl, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AdminUserModelCopyWith<$Res> implements $AdminUserModelCopyWith<$Res> {
  factory _$AdminUserModelCopyWith(_AdminUserModel value, $Res Function(_AdminUserModel) _then) = __$AdminUserModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String email, String role, String status,@JsonKey(name: 'banned_reason') String? bannedReason,@JsonKey(name: 'avatar_url') String? avatarUrl,@JsonKey(name: 'created_at') String? createdAt
});




}
/// @nodoc
class __$AdminUserModelCopyWithImpl<$Res>
    implements _$AdminUserModelCopyWith<$Res> {
  __$AdminUserModelCopyWithImpl(this._self, this._then);

  final _AdminUserModel _self;
  final $Res Function(_AdminUserModel) _then;

/// Create a copy of AdminUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,Object? role = null,Object? status = null,Object? bannedReason = freezed,Object? avatarUrl = freezed,Object? createdAt = freezed,}) {
  return _then(_AdminUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,role: null == role ? _self.role : role // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,bannedReason: freezed == bannedReason ? _self.bannedReason : bannedReason // ignore: cast_nullable_to_non_nullable
as String?,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
