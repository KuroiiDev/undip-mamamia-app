// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_dashboard_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MerchantStoreSummary {

 String get id; String get name; String get status;@JsonKey(name: 'status_reason') String? get statusReason;@JsonKey(name: 'rating_label') String get ratingLabel;@JsonKey(name: 'review_count') int get reviewCount;@JsonKey(name: 'menu_count') int get menuCount;
/// Create a copy of MerchantStoreSummary
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantStoreSummaryCopyWith<MerchantStoreSummary> get copyWith => _$MerchantStoreSummaryCopyWithImpl<MerchantStoreSummary>(this as MerchantStoreSummary, _$identity);

  /// Serializes this MerchantStoreSummary to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MerchantStoreSummary;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantStoreSummary&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.statusReason, _this.statusReason) || other.statusReason == _this.statusReason)&&(identical(other.ratingLabel, _this.ratingLabel) || other.ratingLabel == _this.ratingLabel)&&(identical(other.reviewCount, _this.reviewCount) || other.reviewCount == _this.reviewCount)&&(identical(other.menuCount, _this.menuCount) || other.menuCount == _this.menuCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MerchantStoreSummary;
  return Object.hash(runtimeType,_this.id,_this.name,_this.status,_this.statusReason,_this.ratingLabel,_this.reviewCount,_this.menuCount);
}

@override
String toString() {
  final _this = this as MerchantStoreSummary;
  return 'MerchantStoreSummary(id: ${_this.id}, name: ${_this.name}, status: ${_this.status}, statusReason: ${_this.statusReason}, ratingLabel: ${_this.ratingLabel}, reviewCount: ${_this.reviewCount}, menuCount: ${_this.menuCount})';
}


}

/// @nodoc
abstract mixin class $MerchantStoreSummaryCopyWith<$Res>  {
  factory $MerchantStoreSummaryCopyWith(MerchantStoreSummary value, $Res Function(MerchantStoreSummary) _then) = _$MerchantStoreSummaryCopyWithImpl;
@useResult
$Res call({
 String id, String name, String status,@JsonKey(name: 'status_reason') String? statusReason,@JsonKey(name: 'rating_label') String ratingLabel,@JsonKey(name: 'review_count') int reviewCount,@JsonKey(name: 'menu_count') int menuCount
});




}
/// @nodoc
class _$MerchantStoreSummaryCopyWithImpl<$Res>
    implements $MerchantStoreSummaryCopyWith<$Res> {
  _$MerchantStoreSummaryCopyWithImpl(this._self, this._then);

  final MerchantStoreSummary _self;
  final $Res Function(MerchantStoreSummary) _then;

/// Create a copy of MerchantStoreSummary
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? status = null,Object? statusReason = freezed,Object? ratingLabel = null,Object? reviewCount = null,Object? menuCount = null,}) {
  return _then(MerchantStoreSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusReason: freezed == statusReason ? _self.statusReason : statusReason // ignore: cast_nullable_to_non_nullable
as String?,ratingLabel: null == ratingLabel ? _self.ratingLabel : ratingLabel // ignore: cast_nullable_to_non_nullable
as String,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,menuCount: null == menuCount ? _self.menuCount : menuCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantStoreSummary].
extension MerchantStoreSummaryPatterns on MerchantStoreSummary {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantStoreSummary value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantStoreSummary() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantStoreSummary value)  $default,){
final _that = this;
switch (_that) {
case _MerchantStoreSummary():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantStoreSummary value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantStoreSummary() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String status, @JsonKey(name: 'status_reason')  String? statusReason, @JsonKey(name: 'rating_label')  String ratingLabel, @JsonKey(name: 'review_count')  int reviewCount, @JsonKey(name: 'menu_count')  int menuCount)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantStoreSummary() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.statusReason,_that.ratingLabel,_that.reviewCount,_that.menuCount);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String status, @JsonKey(name: 'status_reason')  String? statusReason, @JsonKey(name: 'rating_label')  String ratingLabel, @JsonKey(name: 'review_count')  int reviewCount, @JsonKey(name: 'menu_count')  int menuCount)  $default,) {final _that = this;
switch (_that) {
case _MerchantStoreSummary():
return $default(_that.id,_that.name,_that.status,_that.statusReason,_that.ratingLabel,_that.reviewCount,_that.menuCount);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String status, @JsonKey(name: 'status_reason')  String? statusReason, @JsonKey(name: 'rating_label')  String ratingLabel, @JsonKey(name: 'review_count')  int reviewCount, @JsonKey(name: 'menu_count')  int menuCount)?  $default,) {final _that = this;
switch (_that) {
case _MerchantStoreSummary() when $default != null:
return $default(_that.id,_that.name,_that.status,_that.statusReason,_that.ratingLabel,_that.reviewCount,_that.menuCount);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantStoreSummary implements MerchantStoreSummary {
  const _MerchantStoreSummary({required this.id, required this.name, required this.status, @JsonKey(name: 'status_reason') this.statusReason, @JsonKey(name: 'rating_label') required this.ratingLabel, @JsonKey(name: 'review_count') required this.reviewCount, @JsonKey(name: 'menu_count') required this.menuCount});
  factory _MerchantStoreSummary.fromJson(Map<String, dynamic> json) => _$MerchantStoreSummaryFromJson(json);

@override final  String id;
@override final  String name;
@override final  String status;
@override@JsonKey(name: 'status_reason') final  String? statusReason;
@override@JsonKey(name: 'rating_label') final  String ratingLabel;
@override@JsonKey(name: 'review_count') final  int reviewCount;
@override@JsonKey(name: 'menu_count') final  int menuCount;

/// Create a copy of MerchantStoreSummary
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantStoreSummaryCopyWith<_MerchantStoreSummary> get copyWith => __$MerchantStoreSummaryCopyWithImpl<_MerchantStoreSummary>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantStoreSummaryToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantStoreSummary&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusReason, statusReason) || other.statusReason == statusReason)&&(identical(other.ratingLabel, ratingLabel) || other.ratingLabel == ratingLabel)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&(identical(other.menuCount, menuCount) || other.menuCount == menuCount));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,status,statusReason,ratingLabel,reviewCount,menuCount);
}

@override
String toString() {
    return 'MerchantStoreSummary(id: $id, name: $name, status: $status, statusReason: $statusReason, ratingLabel: $ratingLabel, reviewCount: $reviewCount, menuCount: $menuCount)';
}


}

/// @nodoc
abstract mixin class _$MerchantStoreSummaryCopyWith<$Res> implements $MerchantStoreSummaryCopyWith<$Res> {
  factory _$MerchantStoreSummaryCopyWith(_MerchantStoreSummary value, $Res Function(_MerchantStoreSummary) _then) = __$MerchantStoreSummaryCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String status,@JsonKey(name: 'status_reason') String? statusReason,@JsonKey(name: 'rating_label') String ratingLabel,@JsonKey(name: 'review_count') int reviewCount,@JsonKey(name: 'menu_count') int menuCount
});




}
/// @nodoc
class __$MerchantStoreSummaryCopyWithImpl<$Res>
    implements _$MerchantStoreSummaryCopyWith<$Res> {
  __$MerchantStoreSummaryCopyWithImpl(this._self, this._then);

  final _MerchantStoreSummary _self;
  final $Res Function(_MerchantStoreSummary) _then;

/// Create a copy of MerchantStoreSummary
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? status = null,Object? statusReason = freezed,Object? ratingLabel = null,Object? reviewCount = null,Object? menuCount = null,}) {
  return _then(_MerchantStoreSummary(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusReason: freezed == statusReason ? _self.statusReason : statusReason // ignore: cast_nullable_to_non_nullable
as String?,ratingLabel: null == ratingLabel ? _self.ratingLabel : ratingLabel // ignore: cast_nullable_to_non_nullable
as String,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,menuCount: null == menuCount ? _self.menuCount : menuCount // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}


/// @nodoc
mixin _$MerchantDashboardResponse {

 MerchantStoreSummary? get store;@JsonKey(name: 'latest_reviews') List<ReviewModel> get latestReviews;
/// Create a copy of MerchantDashboardResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantDashboardResponseCopyWith<MerchantDashboardResponse> get copyWith => _$MerchantDashboardResponseCopyWithImpl<MerchantDashboardResponse>(this as MerchantDashboardResponse, _$identity);

  /// Serializes this MerchantDashboardResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MerchantDashboardResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantDashboardResponse&&(identical(other.store, _this.store) || other.store == _this.store)&&const DeepCollectionEquality().equals(other.latestReviews, _this.latestReviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MerchantDashboardResponse;
  return Object.hash(runtimeType,_this.store,const DeepCollectionEquality().hash(_this.latestReviews));
}

@override
String toString() {
  final _this = this as MerchantDashboardResponse;
  return 'MerchantDashboardResponse(store: ${_this.store}, latestReviews: ${_this.latestReviews})';
}


}

/// @nodoc
abstract mixin class $MerchantDashboardResponseCopyWith<$Res>  {
  factory $MerchantDashboardResponseCopyWith(MerchantDashboardResponse value, $Res Function(MerchantDashboardResponse) _then) = _$MerchantDashboardResponseCopyWithImpl;
@useResult
$Res call({
 MerchantStoreSummary? store,@JsonKey(name: 'latest_reviews') List<ReviewModel> latestReviews
});


$MerchantStoreSummaryCopyWith<$Res>? get store;

}
/// @nodoc
class _$MerchantDashboardResponseCopyWithImpl<$Res>
    implements $MerchantDashboardResponseCopyWith<$Res> {
  _$MerchantDashboardResponseCopyWithImpl(this._self, this._then);

  final MerchantDashboardResponse _self;
  final $Res Function(MerchantDashboardResponse) _then;

/// Create a copy of MerchantDashboardResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? store = freezed,Object? latestReviews = null,}) {
  return _then(MerchantDashboardResponse(
store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as MerchantStoreSummary?,latestReviews: null == latestReviews ? _self.latestReviews : latestReviews // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,
  ));
}
/// Create a copy of MerchantDashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MerchantStoreSummaryCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $MerchantStoreSummaryCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}


/// Adds pattern-matching-related methods to [MerchantDashboardResponse].
extension MerchantDashboardResponsePatterns on MerchantDashboardResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantDashboardResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantDashboardResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantDashboardResponse value)  $default,){
final _that = this;
switch (_that) {
case _MerchantDashboardResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantDashboardResponse value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantDashboardResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( MerchantStoreSummary? store, @JsonKey(name: 'latest_reviews')  List<ReviewModel> latestReviews)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantDashboardResponse() when $default != null:
return $default(_that.store,_that.latestReviews);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( MerchantStoreSummary? store, @JsonKey(name: 'latest_reviews')  List<ReviewModel> latestReviews)  $default,) {final _that = this;
switch (_that) {
case _MerchantDashboardResponse():
return $default(_that.store,_that.latestReviews);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( MerchantStoreSummary? store, @JsonKey(name: 'latest_reviews')  List<ReviewModel> latestReviews)?  $default,) {final _that = this;
switch (_that) {
case _MerchantDashboardResponse() when $default != null:
return $default(_that.store,_that.latestReviews);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantDashboardResponse implements MerchantDashboardResponse {
  const _MerchantDashboardResponse({this.store, @JsonKey(name: 'latest_reviews')  List<ReviewModel> latestReviews = const []}): _latestReviews = latestReviews;
  factory _MerchantDashboardResponse.fromJson(Map<String, dynamic> json) => _$MerchantDashboardResponseFromJson(json);

@override final  MerchantStoreSummary? store;
 final  List<ReviewModel> _latestReviews;
@override@JsonKey(name: 'latest_reviews') List<ReviewModel> get latestReviews {
  if (_latestReviews is EqualUnmodifiableListView) return _latestReviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_latestReviews);
}


/// Create a copy of MerchantDashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantDashboardResponseCopyWith<_MerchantDashboardResponse> get copyWith => __$MerchantDashboardResponseCopyWithImpl<_MerchantDashboardResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantDashboardResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantDashboardResponse&&(identical(other.store, store) || other.store == store)&&const DeepCollectionEquality().equals(other.latestReviews, _latestReviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,store,const DeepCollectionEquality().hash(_latestReviews));
}

@override
String toString() {
    return 'MerchantDashboardResponse(store: $store, latestReviews: $latestReviews)';
}


}

/// @nodoc
abstract mixin class _$MerchantDashboardResponseCopyWith<$Res> implements $MerchantDashboardResponseCopyWith<$Res> {
  factory _$MerchantDashboardResponseCopyWith(_MerchantDashboardResponse value, $Res Function(_MerchantDashboardResponse) _then) = __$MerchantDashboardResponseCopyWithImpl;
@override @useResult
$Res call({
 MerchantStoreSummary? store,@JsonKey(name: 'latest_reviews') List<ReviewModel> latestReviews
});


@override $MerchantStoreSummaryCopyWith<$Res>? get store;

}
/// @nodoc
class __$MerchantDashboardResponseCopyWithImpl<$Res>
    implements _$MerchantDashboardResponseCopyWith<$Res> {
  __$MerchantDashboardResponseCopyWithImpl(this._self, this._then);

  final _MerchantDashboardResponse _self;
  final $Res Function(_MerchantDashboardResponse) _then;

/// Create a copy of MerchantDashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? store = freezed,Object? latestReviews = null,}) {
  return _then(_MerchantDashboardResponse(
store: freezed == store ? _self.store : store // ignore: cast_nullable_to_non_nullable
as MerchantStoreSummary?,latestReviews: null == latestReviews ? _self._latestReviews : latestReviews // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,
  ));
}

/// Create a copy of MerchantDashboardResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MerchantStoreSummaryCopyWith<$Res>? get store {
    if (_self.store == null) {
    return null;
  }

  return $MerchantStoreSummaryCopyWith<$Res>(_self.store!, (value) {
    return _then(_self.copyWith(store: value));
  });
}
}

// dart format on
