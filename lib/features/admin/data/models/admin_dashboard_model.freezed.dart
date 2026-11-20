// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$AdminPendingStoreModel {

 String get id; String get name;@JsonKey(name: 'owner_name') String get ownerName; String get address;@JsonKey(name: 'created_at') String? get createdAt;@JsonKey(name: 'cover_url') String? get coverUrl;
/// Create a copy of AdminPendingStoreModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminPendingStoreModelCopyWith<AdminPendingStoreModel> get copyWith => _$AdminPendingStoreModelCopyWithImpl<AdminPendingStoreModel>(this as AdminPendingStoreModel, _$identity);

  /// Serializes this AdminPendingStoreModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminPendingStoreModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminPendingStoreModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.ownerName, _this.ownerName) || other.ownerName == _this.ownerName)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.createdAt, _this.createdAt) || other.createdAt == _this.createdAt)&&(identical(other.coverUrl, _this.coverUrl) || other.coverUrl == _this.coverUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminPendingStoreModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.ownerName,_this.address,_this.createdAt,_this.coverUrl);
}

@override
String toString() {
  final _this = this as AdminPendingStoreModel;
  return 'AdminPendingStoreModel(id: ${_this.id}, name: ${_this.name}, ownerName: ${_this.ownerName}, address: ${_this.address}, createdAt: ${_this.createdAt}, coverUrl: ${_this.coverUrl})';
}


}

/// @nodoc
abstract mixin class $AdminPendingStoreModelCopyWith<$Res>  {
  factory $AdminPendingStoreModelCopyWith(AdminPendingStoreModel value, $Res Function(AdminPendingStoreModel) _then) = _$AdminPendingStoreModelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'owner_name') String ownerName, String address,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'cover_url') String? coverUrl
});




}
/// @nodoc
class _$AdminPendingStoreModelCopyWithImpl<$Res>
    implements $AdminPendingStoreModelCopyWith<$Res> {
  _$AdminPendingStoreModelCopyWithImpl(this._self, this._then);

  final AdminPendingStoreModel _self;
  final $Res Function(AdminPendingStoreModel) _then;

/// Create a copy of AdminPendingStoreModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? ownerName = null,Object? address = null,Object? createdAt = freezed,Object? coverUrl = freezed,}) {
  return _then(AdminPendingStoreModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminPendingStoreModel].
extension AdminPendingStoreModelPatterns on AdminPendingStoreModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminPendingStoreModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminPendingStoreModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminPendingStoreModel value)  $default,){
final _that = this;
switch (_that) {
case _AdminPendingStoreModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminPendingStoreModel value)?  $default,){
final _that = this;
switch (_that) {
case _AdminPendingStoreModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'owner_name')  String ownerName,  String address, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'cover_url')  String? coverUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminPendingStoreModel() when $default != null:
return $default(_that.id,_that.name,_that.ownerName,_that.address,_that.createdAt,_that.coverUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'owner_name')  String ownerName,  String address, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'cover_url')  String? coverUrl)  $default,) {final _that = this;
switch (_that) {
case _AdminPendingStoreModel():
return $default(_that.id,_that.name,_that.ownerName,_that.address,_that.createdAt,_that.coverUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'owner_name')  String ownerName,  String address, @JsonKey(name: 'created_at')  String? createdAt, @JsonKey(name: 'cover_url')  String? coverUrl)?  $default,) {final _that = this;
switch (_that) {
case _AdminPendingStoreModel() when $default != null:
return $default(_that.id,_that.name,_that.ownerName,_that.address,_that.createdAt,_that.coverUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminPendingStoreModel implements AdminPendingStoreModel {
  const _AdminPendingStoreModel({required this.id, required this.name, @JsonKey(name: 'owner_name') required this.ownerName, required this.address, @JsonKey(name: 'created_at') this.createdAt, @JsonKey(name: 'cover_url') this.coverUrl});
  factory _AdminPendingStoreModel.fromJson(Map<String, dynamic> json) => _$AdminPendingStoreModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(name: 'owner_name') final  String ownerName;
@override final  String address;
@override@JsonKey(name: 'created_at') final  String? createdAt;
@override@JsonKey(name: 'cover_url') final  String? coverUrl;

/// Create a copy of AdminPendingStoreModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminPendingStoreModelCopyWith<_AdminPendingStoreModel> get copyWith => __$AdminPendingStoreModelCopyWithImpl<_AdminPendingStoreModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminPendingStoreModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminPendingStoreModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.ownerName, ownerName) || other.ownerName == ownerName)&&(identical(other.address, address) || other.address == address)&&(identical(other.createdAt, createdAt) || other.createdAt == createdAt)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,ownerName,address,createdAt,coverUrl);
}

@override
String toString() {
    return 'AdminPendingStoreModel(id: $id, name: $name, ownerName: $ownerName, address: $address, createdAt: $createdAt, coverUrl: $coverUrl)';
}


}

/// @nodoc
abstract mixin class _$AdminPendingStoreModelCopyWith<$Res> implements $AdminPendingStoreModelCopyWith<$Res> {
  factory _$AdminPendingStoreModelCopyWith(_AdminPendingStoreModel value, $Res Function(_AdminPendingStoreModel) _then) = __$AdminPendingStoreModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'owner_name') String ownerName, String address,@JsonKey(name: 'created_at') String? createdAt,@JsonKey(name: 'cover_url') String? coverUrl
});




}
/// @nodoc
class __$AdminPendingStoreModelCopyWithImpl<$Res>
    implements _$AdminPendingStoreModelCopyWith<$Res> {
  __$AdminPendingStoreModelCopyWithImpl(this._self, this._then);

  final _AdminPendingStoreModel _self;
  final $Res Function(_AdminPendingStoreModel) _then;

/// Create a copy of AdminPendingStoreModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? ownerName = null,Object? address = null,Object? createdAt = freezed,Object? coverUrl = freezed,}) {
  return _then(_AdminPendingStoreModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,ownerName: null == ownerName ? _self.ownerName : ownerName // ignore: cast_nullable_to_non_nullable
as String,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,createdAt: freezed == createdAt ? _self.createdAt : createdAt // ignore: cast_nullable_to_non_nullable
as String?,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$AdminDashboardResponse {

@JsonKey(name: 'store_count') int get storeCount;@JsonKey(name: 'user_count') int get userCount;@JsonKey(name: 'pending_count') int get pendingCount;@JsonKey(name: 'open_report_count') int get openReportCount;@JsonKey(name: 'pending_stores') List<AdminPendingStoreModel> get pendingStores;
/// Create a copy of AdminDashboardResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminDashboardResponseCopyWith<AdminDashboardResponse> get copyWith => _$AdminDashboardResponseCopyWithImpl<AdminDashboardResponse>(this as AdminDashboardResponse, _$identity);

  /// Serializes this AdminDashboardResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as AdminDashboardResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminDashboardResponse&&(identical(other.storeCount, _this.storeCount) || other.storeCount == _this.storeCount)&&(identical(other.userCount, _this.userCount) || other.userCount == _this.userCount)&&(identical(other.pendingCount, _this.pendingCount) || other.pendingCount == _this.pendingCount)&&(identical(other.openReportCount, _this.openReportCount) || other.openReportCount == _this.openReportCount)&&const DeepCollectionEquality().equals(other.pendingStores, _this.pendingStores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as AdminDashboardResponse;
  return Object.hash(runtimeType,_this.storeCount,_this.userCount,_this.pendingCount,_this.openReportCount,const DeepCollectionEquality().hash(_this.pendingStores));
}

@override
String toString() {
  final _this = this as AdminDashboardResponse;
  return 'AdminDashboardResponse(storeCount: ${_this.storeCount}, userCount: ${_this.userCount}, pendingCount: ${_this.pendingCount}, openReportCount: ${_this.openReportCount}, pendingStores: ${_this.pendingStores})';
}


}

/// @nodoc
abstract mixin class $AdminDashboardResponseCopyWith<$Res>  {
  factory $AdminDashboardResponseCopyWith(AdminDashboardResponse value, $Res Function(AdminDashboardResponse) _then) = _$AdminDashboardResponseCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'store_count') int storeCount,@JsonKey(name: 'user_count') int userCount,@JsonKey(name: 'pending_count') int pendingCount,@JsonKey(name: 'open_report_count') int openReportCount,@JsonKey(name: 'pending_stores') List<AdminPendingStoreModel> pendingStores
});




}
/// @nodoc
class _$AdminDashboardResponseCopyWithImpl<$Res>
    implements $AdminDashboardResponseCopyWith<$Res> {
  _$AdminDashboardResponseCopyWithImpl(this._self, this._then);

  final AdminDashboardResponse _self;
  final $Res Function(AdminDashboardResponse) _then;

/// Create a copy of AdminDashboardResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? storeCount = null,Object? userCount = null,Object? pendingCount = null,Object? openReportCount = null,Object? pendingStores = null,}) {
  return _then(AdminDashboardResponse(
storeCount: null == storeCount ? _self.storeCount : storeCount // ignore: cast_nullable_to_non_nullable
as int,userCount: null == userCount ? _self.userCount : userCount // ignore: cast_nullable_to_non_nullable
as int,pendingCount: null == pendingCount ? _self.pendingCount : pendingCount // ignore: cast_nullable_to_non_nullable
as int,openReportCount: null == openReportCount ? _self.openReportCount : openReportCount // ignore: cast_nullable_to_non_nullable
as int,pendingStores: null == pendingStores ? _self.pendingStores : pendingStores // ignore: cast_nullable_to_non_nullable
as List<AdminPendingStoreModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminDashboardResponse].
extension AdminDashboardResponsePatterns on AdminDashboardResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminDashboardResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminDashboardResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminDashboardResponse value)  $default,){
final _that = this;
switch (_that) {
case _AdminDashboardResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminDashboardResponse value)?  $default,){
final _that = this;
switch (_that) {
case _AdminDashboardResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_count')  int storeCount, @JsonKey(name: 'user_count')  int userCount, @JsonKey(name: 'pending_count')  int pendingCount, @JsonKey(name: 'open_report_count')  int openReportCount, @JsonKey(name: 'pending_stores')  List<AdminPendingStoreModel> pendingStores)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminDashboardResponse() when $default != null:
return $default(_that.storeCount,_that.userCount,_that.pendingCount,_that.openReportCount,_that.pendingStores);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'store_count')  int storeCount, @JsonKey(name: 'user_count')  int userCount, @JsonKey(name: 'pending_count')  int pendingCount, @JsonKey(name: 'open_report_count')  int openReportCount, @JsonKey(name: 'pending_stores')  List<AdminPendingStoreModel> pendingStores)  $default,) {final _that = this;
switch (_that) {
case _AdminDashboardResponse():
return $default(_that.storeCount,_that.userCount,_that.pendingCount,_that.openReportCount,_that.pendingStores);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'store_count')  int storeCount, @JsonKey(name: 'user_count')  int userCount, @JsonKey(name: 'pending_count')  int pendingCount, @JsonKey(name: 'open_report_count')  int openReportCount, @JsonKey(name: 'pending_stores')  List<AdminPendingStoreModel> pendingStores)?  $default,) {final _that = this;
switch (_that) {
case _AdminDashboardResponse() when $default != null:
return $default(_that.storeCount,_that.userCount,_that.pendingCount,_that.openReportCount,_that.pendingStores);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _AdminDashboardResponse implements AdminDashboardResponse {
  const _AdminDashboardResponse({@JsonKey(name: 'store_count') required this.storeCount, @JsonKey(name: 'user_count') required this.userCount, @JsonKey(name: 'pending_count') required this.pendingCount, @JsonKey(name: 'open_report_count') required this.openReportCount, @JsonKey(name: 'pending_stores')  List<AdminPendingStoreModel> pendingStores = const []}): _pendingStores = pendingStores;
  factory _AdminDashboardResponse.fromJson(Map<String, dynamic> json) => _$AdminDashboardResponseFromJson(json);

@override@JsonKey(name: 'store_count') final  int storeCount;
@override@JsonKey(name: 'user_count') final  int userCount;
@override@JsonKey(name: 'pending_count') final  int pendingCount;
@override@JsonKey(name: 'open_report_count') final  int openReportCount;
 final  List<AdminPendingStoreModel> _pendingStores;
@override@JsonKey(name: 'pending_stores') List<AdminPendingStoreModel> get pendingStores {
  if (_pendingStores is EqualUnmodifiableListView) return _pendingStores;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_pendingStores);
}


/// Create a copy of AdminDashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminDashboardResponseCopyWith<_AdminDashboardResponse> get copyWith => __$AdminDashboardResponseCopyWithImpl<_AdminDashboardResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$AdminDashboardResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminDashboardResponse&&(identical(other.storeCount, storeCount) || other.storeCount == storeCount)&&(identical(other.userCount, userCount) || other.userCount == userCount)&&(identical(other.pendingCount, pendingCount) || other.pendingCount == pendingCount)&&(identical(other.openReportCount, openReportCount) || other.openReportCount == openReportCount)&&const DeepCollectionEquality().equals(other.pendingStores, _pendingStores));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,storeCount,userCount,pendingCount,openReportCount,const DeepCollectionEquality().hash(_pendingStores));
}

@override
String toString() {
    return 'AdminDashboardResponse(storeCount: $storeCount, userCount: $userCount, pendingCount: $pendingCount, openReportCount: $openReportCount, pendingStores: $pendingStores)';
}


}

/// @nodoc
abstract mixin class _$AdminDashboardResponseCopyWith<$Res> implements $AdminDashboardResponseCopyWith<$Res> {
  factory _$AdminDashboardResponseCopyWith(_AdminDashboardResponse value, $Res Function(_AdminDashboardResponse) _then) = __$AdminDashboardResponseCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'store_count') int storeCount,@JsonKey(name: 'user_count') int userCount,@JsonKey(name: 'pending_count') int pendingCount,@JsonKey(name: 'open_report_count') int openReportCount,@JsonKey(name: 'pending_stores') List<AdminPendingStoreModel> pendingStores
});




}
/// @nodoc
class __$AdminDashboardResponseCopyWithImpl<$Res>
    implements _$AdminDashboardResponseCopyWith<$Res> {
  __$AdminDashboardResponseCopyWithImpl(this._self, this._then);

  final _AdminDashboardResponse _self;
  final $Res Function(_AdminDashboardResponse) _then;

/// Create a copy of AdminDashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? storeCount = null,Object? userCount = null,Object? pendingCount = null,Object? openReportCount = null,Object? pendingStores = null,}) {
  return _then(_AdminDashboardResponse(
storeCount: null == storeCount ? _self.storeCount : storeCount // ignore: cast_nullable_to_non_nullable
as int,userCount: null == userCount ? _self.userCount : userCount // ignore: cast_nullable_to_non_nullable
as int,pendingCount: null == pendingCount ? _self.pendingCount : pendingCount // ignore: cast_nullable_to_non_nullable
as int,openReportCount: null == openReportCount ? _self.openReportCount : openReportCount // ignore: cast_nullable_to_non_nullable
as int,pendingStores: null == pendingStores ? _self._pendingStores : pendingStores // ignore: cast_nullable_to_non_nullable
as List<AdminPendingStoreModel>,
  ));
}


}

// dart format on
