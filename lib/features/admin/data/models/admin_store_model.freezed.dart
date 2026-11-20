// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_store_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminStoreOwnerModel {

 String get id; String get name; String get email;
/// Create a copy of AdminStoreOwnerModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStoreOwnerModelCopyWith<AdminStoreOwnerModel> get copyWith => _$AdminStoreOwnerModelCopyWithImpl<AdminStoreOwnerModel>(this as AdminStoreOwnerModel, _$identity);

  /// Serializes this AdminStoreOwnerModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStoreOwnerModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStoreOwnerModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.email, _this.email) || other.email == _this.email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStoreOwnerModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.email);
}

@override
String toString() {
  final _this = this as AdminStoreOwnerModel;
  return 'AdminStoreOwnerModel(id: ${_this.id}, name: ${_this.name}, email: ${_this.email})';
}


}

/// @nodoc
abstract mixin class $AdminStoreOwnerModelCopyWith<$Res>  {
  factory $AdminStoreOwnerModelCopyWith(AdminStoreOwnerModel value, $Res Function(AdminStoreOwnerModel) _then) = _$AdminStoreOwnerModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String email
});




}
/// @nodoc
class _$AdminStoreOwnerModelCopyWithImpl<$Res>
    implements $AdminStoreOwnerModelCopyWith<$Res> {
  _$AdminStoreOwnerModelCopyWithImpl(this._self, this._then);

  final AdminStoreOwnerModel _self;
  final $Res Function(AdminStoreOwnerModel) _then;

/// Create a copy of AdminStoreOwnerModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? email = null,}) {
  return _then(AdminStoreOwnerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStoreOwnerModel].
extension AdminStoreOwnerModelPatterns on AdminStoreOwnerModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStoreOwnerModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStoreOwnerModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStoreOwnerModel value)  $default,){
final _that = this;
switch (_that) {
case _AdminStoreOwnerModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStoreOwnerModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStoreOwnerModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String email)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStoreOwnerModel() when $default != null:
return $default(_that.id,_that.name,_that.email);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String email)  $default,) {final _that = this;
switch (_that) {
case _AdminStoreOwnerModel():
return $default(_that.id,_that.name,_that.email);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String email)?  $default,) {final _that = this;
switch (_that) {
case _AdminStoreOwnerModel() when $default != null:
return $default(_that.id,_that.name,_that.email);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStoreOwnerModel implements AdminStoreOwnerModel {
  const _AdminStoreOwnerModel({required this.id, required this.name, required this.email});
  factory _AdminStoreOwnerModel.fromJson(Map<String, dynamic> json) => _$AdminStoreOwnerModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String email;

/// Create a copy of AdminStoreOwnerModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStoreOwnerModelCopyWith<_AdminStoreOwnerModel> get copyWith => __$AdminStoreOwnerModelCopyWithImpl<_AdminStoreOwnerModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStoreOwnerModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStoreOwnerModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.email, email) || other.email == email));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,email);
}

@override
String toString() {
    return 'AdminStoreOwnerModel(id: $id, name: $name, email: $email)';
}


}

/// @nodoc
abstract mixin class _$AdminStoreOwnerModelCopyWith<$Res> implements $AdminStoreOwnerModelCopyWith<$Res> {
  factory _$AdminStoreOwnerModelCopyWith(_AdminStoreOwnerModel value, $Res Function(_AdminStoreOwnerModel) _then) = __$AdminStoreOwnerModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String email
});




}
/// @nodoc
class __$AdminStoreOwnerModelCopyWithImpl<$Res>
    implements _$AdminStoreOwnerModelCopyWith<$Res> {
  __$AdminStoreOwnerModelCopyWithImpl(this._self, this._then);

  final _AdminStoreOwnerModel _self;
  final $Res Function(_AdminStoreOwnerModel) _then;

/// Create a copy of AdminStoreOwnerModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? email = null,}) {
  return _then(_AdminStoreOwnerModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,email: null == email ? _self.email : email // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}


/// @nodoc
mixin _$AdminStoreItemModel {

 String get id; String get name; String get status;@JsonKey(name: 'status_reason') String? get statusReason; String get address; String? get phone;@JsonKey(name: 'rating_avg') double get ratingAvg;@JsonKey(name: 'rating_count') int get ratingCount;@JsonKey(name: 'cover_url') String? get coverUrl; AdminStoreOwnerModel? get owner;@JsonKey(name: 'created_at') String? get createdAt;
/// Create a copy of AdminStoreItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStoreItemModelCopyWith<AdminStoreItemModel> get copyWith => _$AdminStoreItemModelCopyWithImpl<AdminStoreItemModel>(this as AdminStoreItemModel, _$identity);

  /// Serializes this AdminStoreItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminStoreItemModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStoreItemModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.statusReason, _this.statusReason) || other.statusReason == _this.statusReason)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.ratingAvg, _this.ratingAvg) || other.ratingAvg == _this.ratingAvg)&&(identical(other.ratingCount, _this.ratingCount) || other.ratingCount == _this.ratingCount)&&(identical(other.coverUrl, _this.coverUrl) || other.coverUrl == _this.coverUrl)&&(identical(other.owner, _this.owner) || other.owner == _this.owner)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminStoreItemModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.status,_this.statusReason,_this.address,_this.phone,_this.ratingAvg,_this.ratingCount,_this.coverUrl,_this.owner,_this.createdAt);
}

@override
String toString() {
  final _this = this as AdminStoreItemModel;
  return 'AdminStoreItemModel(id: ${_this.id}, name: ${_this.name}, status: ${_this.status}, statusReason: ${_this.statusReason}, address: ${_this.address}, phone: ${_this.phone}, ratingAvg: ${_this.ratingAvg}, ratingCount: ${_this.ratingCount}, coverUrl: ${_this.coverUrl}, owner: ${_this.owner}, createdAt: ${_this.createdAt})';
}


}

/// @nodoc
abstract mixin class $AdminStoreItemModelCopyWith<$Res>  {
  factory $AdminStoreItemModelCopyWith(AdminStoreItemModel value, $Res Function(AdminStoreItemModel) _then) = _$AdminStoreItemModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String status,@JsonKey(name: 'status_reason') String? statusReason, String address, String? phone,@JsonKey(name: 'rating_avg') double ratingAvg,@JsonKey(name: 'rating_count') int ratingCount,@JsonKey(name: 'cover_url') String? coverUrl, AdminStoreOwnerModel? owner,@JsonKey(name: 'created_at') String? createdAt
});


$AdminStoreOwnerModelCopyWith<$Res>? get owner;

}
/// @nodoc
class _$AdminStoreItemModelCopyWithImpl<$Res>
    implements $AdminStoreItemModelCopyWith<$Res> {
  _$AdminStoreItemModelCopyWithImpl(this._self, this._then);

  final AdminStoreItemModel _self;
  final $Res Function(AdminStoreItemModel) _then;

/// Create a copy of AdminStoreItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? statusReason = freezed,Object? address = null,Object? phone = freezed,Object? ratingAvg = null,Object? ratingCount = null,Object? coverUrl = freezed,Object? owner = freezed,Object? createdAt = freezed,}) {
  return _then(AdminStoreItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusReason: freezed == statusReason ? _self.statusReason : statusReason // ignore: cast_nullable_to_non_nullable
as String?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,ratingAvg: null == ratingAvg ? _self.ratingAvg : ratingAvg // ignore: cast_nullable_to_non_nullable
as double,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as AdminStoreOwnerModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of AdminStoreItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStoreOwnerModelCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $AdminStoreOwnerModelCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}


/// Adds pattern-matching-related methods to [AdminStoreItemModel].
extension AdminStoreItemModelPatterns on AdminStoreItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStoreItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStoreItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStoreItemModel value)  $default,){
final _that = this;
switch (_that) {
case _AdminStoreItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStoreItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStoreItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String status, @JsonKey(name: 'status_reason')  String? statusReason,  String address,  String? phone, @JsonKey(name: 'rating_avg')  double ratingAvg, @JsonKey(name: 'rating_count')  int ratingCount, @JsonKey(name: 'cover_url')  String? coverUrl,  AdminStoreOwnerModel? owner, @JsonKey(name: 'created_at')  String? createdAt)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStoreItemModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.statusReason,_that.address,_that.phone,_that.ratingAvg,_that.ratingCount,_that.coverUrl,_that.owner,_that.createdAt);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String status, @JsonKey(name: 'status_reason')  String? statusReason,  String address,  String? phone, @JsonKey(name: 'rating_avg')  double ratingAvg, @JsonKey(name: 'rating_count')  int ratingCount, @JsonKey(name: 'cover_url')  String? coverUrl,  AdminStoreOwnerModel? owner, @JsonKey(name: 'created_at')  String? createdAt)  $default,) {final _that = this;
switch (_that) {
case _AdminStoreItemModel():
return $default(_that.id,_that.name,_that.status,_that.statusReason,_that.address,_that.phone,_that.ratingAvg,_that.ratingCount,_that.coverUrl,_that.owner,_that.createdAt);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String status, @JsonKey(name: 'status_reason')  String? statusReason,  String address,  String? phone, @JsonKey(name: 'rating_avg')  double ratingAvg, @JsonKey(name: 'rating_count')  int ratingCount, @JsonKey(name: 'cover_url')  String? coverUrl,  AdminStoreOwnerModel? owner, @JsonKey(name: 'created_at')  String? createdAt)?  $default,) {final _that = this;
switch (_that) {
case _AdminStoreItemModel() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.statusReason,_that.address,_that.phone,_that.ratingAvg,_that.ratingCount,_that.coverUrl,_that.owner,_that.createdAt);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminStoreItemModel implements AdminStoreItemModel {
  const _AdminStoreItemModel({required this.id, required this.name, required this.status, @JsonKey(name: 'status_reason') this.statusReason, required this.address, this.phone, @JsonKey(name: 'rating_avg') this.ratingAvg = 0.0, @JsonKey(name: 'rating_count') this.ratingCount = 0, @JsonKey(name: 'cover_url') this.coverUrl, this.owner, @JsonKey(name: 'created_at') this.createdAt});
  factory _AdminStoreItemModel.fromJson(Map<String, dynamic> json) => _$AdminStoreItemModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String status;
@override@JsonKey(name: 'status_reason') final  String? statusReason;
@override final  String address;
@override final  String? phone;
@override@JsonKey(name: 'rating_avg') final  double ratingAvg;
@override@JsonKey(name: 'rating_count') final  int ratingCount;
@override@JsonKey(name: 'cover_url') final  String? coverUrl;
@override final  AdminStoreOwnerModel? owner;
@override@JsonKey(name: 'created_at') final  String? createdAt;

/// Create a copy of AdminStoreItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStoreItemModelCopyWith<_AdminStoreItemModel> get copyWith => __$AdminStoreItemModelCopyWithImpl<_AdminStoreItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminStoreItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStoreItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusReason, statusReason) || other.statusReason == statusReason)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.ratingAvg, ratingAvg) || other.ratingAvg == ratingAvg)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.owner, owner) || other.owner == owner)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,status,statusReason,address,phone,ratingAvg,ratingCount,coverUrl,owner,createdAt);
}

@override
String toString() {
    return 'AdminStoreItemModel(id: $id, name: $name, status: $status, statusReason: $statusReason, address: $address, phone: $phone, ratingAvg: $ratingAvg, ratingCount: $ratingCount, coverUrl: $coverUrl, owner: $owner, createdAt: $createdAt)';
}


}

/// @nodoc
abstract mixin class _$AdminStoreItemModelCopyWith<$Res> implements $AdminStoreItemModelCopyWith<$Res> {
  factory _$AdminStoreItemModelCopyWith(_AdminStoreItemModel value, $Res Function(_AdminStoreItemModel) _then) = __$AdminStoreItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String status,@JsonKey(name: 'status_reason') String? statusReason, String address, String? phone,@JsonKey(name: 'rating_avg') double ratingAvg,@JsonKey(name: 'rating_count') int ratingCount,@JsonKey(name: 'cover_url') String? coverUrl, AdminStoreOwnerModel? owner,@JsonKey(name: 'created_at') String? createdAt
});


@override $AdminStoreOwnerModelCopyWith<$Res>? get owner;

}
/// @nodoc
class __$AdminStoreItemModelCopyWithImpl<$Res>
    implements _$AdminStoreItemModelCopyWith<$Res> {
  __$AdminStoreItemModelCopyWithImpl(this._self, this._then);

  final _AdminStoreItemModel _self;
  final $Res Function(_AdminStoreItemModel) _then;

/// Create a copy of AdminStoreItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? statusReason = freezed,Object? address = null,Object? phone = freezed,Object? ratingAvg = null,Object? ratingCount = null,Object? coverUrl = freezed,Object? owner = freezed,Object? createdAt = freezed,}) {
  return _then(_AdminStoreItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusReason: freezed == statusReason ? _self.statusReason : statusReason // ignore: cast_nullable_to_non_nullable
as String?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,ratingAvg: null == ratingAvg ? _self.ratingAvg : ratingAvg // ignore: cast_nullable_to_non_nullable
as double,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,owner: freezed == owner ? _self.owner : owner // ignore: cast_nullable_to_non_nullable
as AdminStoreOwnerModel?,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of AdminStoreItemModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$AdminStoreOwnerModelCopyWith<$Res>? get owner {
    if (_self.owner == null) {
    return null;
  }

  return $AdminStoreOwnerModelCopyWith<$Res>(_self.owner!, (value) {
    return _then(_self.copyWith(owner: value));
  });
}
}

// dart format on
