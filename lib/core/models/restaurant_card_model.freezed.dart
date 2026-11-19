// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_card_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantCardModel {

 String get id; String get name;@JsonKey(name: 'cover_url') String? get coverUrl;@JsonKey(name: 'rating_label') String get ratingLabel;@JsonKey(name: 'rating_count') int get ratingCount;@JsonKey(name: 'price_label') String get priceLabel;@JsonKey(name: 'distance_label') String? get distanceLabel;@JsonKey(name: 'is_open_now') bool get isOpenNow;@JsonKey(name: 'is_favorited') bool get isFavorited;
/// Create a copy of RestaurantCardModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantCardModelCopyWith<RestaurantCardModel> get copyWith => _$RestaurantCardModelCopyWithImpl<RestaurantCardModel>(this as RestaurantCardModel, _$identity);

  /// Serializes this RestaurantCardModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RestaurantCardModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantCardModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.coverUrl, _this.coverUrl) || other.coverUrl == _this.coverUrl)&&(identical(other.ratingLabel, _this.ratingLabel) || other.ratingLabel == _this.ratingLabel)&&(identical(other.ratingCount, _this.ratingCount) || other.ratingCount == _this.ratingCount)&&(identical(other.priceLabel, _this.priceLabel) || other.priceLabel == _this.priceLabel)&&(identical(other.distanceLabel, _this.distanceLabel) || other.distanceLabel == _this.distanceLabel)&&(identical(other.isOpenNow, _this.isOpenNow) || other.isOpenNow == _this.isOpenNow)&&(identical(other.isFavorited, _this.isFavorited) || other.isFavorited == _this.isFavorited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RestaurantCardModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.coverUrl,_this.ratingLabel,_this.ratingCount,_this.priceLabel,_this.distanceLabel,_this.isOpenNow,_this.isFavorited);
}

@override
String toString() {
  final _this = this as RestaurantCardModel;
  return 'RestaurantCardModel(id: ${_this.id}, name: ${_this.name}, coverUrl: ${_this.coverUrl}, ratingLabel: ${_this.ratingLabel}, ratingCount: ${_this.ratingCount}, priceLabel: ${_this.priceLabel}, distanceLabel: ${_this.distanceLabel}, isOpenNow: ${_this.isOpenNow}, isFavorited: ${_this.isFavorited})';
}


}

/// @nodoc
abstract mixin class $RestaurantCardModelCopyWith<$Res>  {
  factory $RestaurantCardModelCopyWith(RestaurantCardModel value, $Res Function(RestaurantCardModel) _then) = _$RestaurantCardModelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'cover_url') String? coverUrl,@JsonKey(name: 'rating_label') String ratingLabel,@JsonKey(name: 'rating_count') int ratingCount,@JsonKey(name: 'price_label') String priceLabel,@JsonKey(name: 'distance_label') String? distanceLabel,@JsonKey(name: 'is_open_now') bool isOpenNow,@JsonKey(name: 'is_favorited') bool isFavorited
});




}
/// @nodoc
class _$RestaurantCardModelCopyWithImpl<$Res>
    implements $RestaurantCardModelCopyWith<$Res> {
  _$RestaurantCardModelCopyWithImpl(this._self, this._then);

  final RestaurantCardModel _self;
  final $Res Function(RestaurantCardModel) _then;

/// Create a copy of RestaurantCardModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? coverUrl = freezed,Object? ratingLabel = null,Object? ratingCount = null,Object? priceLabel = null,Object? distanceLabel = freezed,Object? isOpenNow = null,Object? isFavorited = null,}) {
  return _then(RestaurantCardModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,ratingLabel: null == ratingLabel ? _self.ratingLabel : ratingLabel // ignore: cast_nullable_to_non_nullable
as String,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,priceLabel: null == priceLabel ? _self.priceLabel : priceLabel // ignore: cast_nullable_to_non_nullable
as String,distanceLabel: freezed == distanceLabel ? _self.distanceLabel : distanceLabel // ignore: cast_nullable_to_non_nullable
as String?,isOpenNow: null == isOpenNow ? _self.isOpenNow : isOpenNow // ignore: cast_nullable_to_non_nullable
as bool,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [RestaurantCardModel].
extension RestaurantCardModelPatterns on RestaurantCardModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestaurantCardModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestaurantCardModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestaurantCardModel value)  $default,){
final _that = this;
switch (_that) {
case _RestaurantCardModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestaurantCardModel value)?  $default,){
final _that = this;
switch (_that) {
case _RestaurantCardModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'cover_url')  String? coverUrl, @JsonKey(name: 'rating_label')  String ratingLabel, @JsonKey(name: 'rating_count')  int ratingCount, @JsonKey(name: 'price_label')  String priceLabel, @JsonKey(name: 'distance_label')  String? distanceLabel, @JsonKey(name: 'is_open_now')  bool isOpenNow, @JsonKey(name: 'is_favorited')  bool isFavorited)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestaurantCardModel() when $default != null:
return $default(_that.id,_that.name,_that.coverUrl,_that.ratingLabel,_that.ratingCount,_that.priceLabel,_that.distanceLabel,_that.isOpenNow,_that.isFavorited);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'cover_url')  String? coverUrl, @JsonKey(name: 'rating_label')  String ratingLabel, @JsonKey(name: 'rating_count')  int ratingCount, @JsonKey(name: 'price_label')  String priceLabel, @JsonKey(name: 'distance_label')  String? distanceLabel, @JsonKey(name: 'is_open_now')  bool isOpenNow, @JsonKey(name: 'is_favorited')  bool isFavorited)  $default,) {final _that = this;
switch (_that) {
case _RestaurantCardModel():
return $default(_that.id,_that.name,_that.coverUrl,_that.ratingLabel,_that.ratingCount,_that.priceLabel,_that.distanceLabel,_that.isOpenNow,_that.isFavorited);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'cover_url')  String? coverUrl, @JsonKey(name: 'rating_label')  String ratingLabel, @JsonKey(name: 'rating_count')  int ratingCount, @JsonKey(name: 'price_label')  String priceLabel, @JsonKey(name: 'distance_label')  String? distanceLabel, @JsonKey(name: 'is_open_now')  bool isOpenNow, @JsonKey(name: 'is_favorited')  bool isFavorited)?  $default,) {final _that = this;
switch (_that) {
case _RestaurantCardModel() when $default != null:
return $default(_that.id,_that.name,_that.coverUrl,_that.ratingLabel,_that.ratingCount,_that.priceLabel,_that.distanceLabel,_that.isOpenNow,_that.isFavorited);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RestaurantCardModel implements RestaurantCardModel {
  const _RestaurantCardModel({required this.id, required this.name, @JsonKey(name: 'cover_url') this.coverUrl, @JsonKey(name: 'rating_label') required this.ratingLabel, @JsonKey(name: 'rating_count') required this.ratingCount, @JsonKey(name: 'price_label') required this.priceLabel, @JsonKey(name: 'distance_label') this.distanceLabel, @JsonKey(name: 'is_open_now') required this.isOpenNow, @JsonKey(name: 'is_favorited') required this.isFavorited});
  factory _RestaurantCardModel.fromJson(Map<String, dynamic> json) => _$RestaurantCardModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(name: 'cover_url') final  String? coverUrl;
@override@JsonKey(name: 'rating_label') final  String ratingLabel;
@override@JsonKey(name: 'rating_count') final  int ratingCount;
@override@JsonKey(name: 'price_label') final  String priceLabel;
@override@JsonKey(name: 'distance_label') final  String? distanceLabel;
@override@JsonKey(name: 'is_open_now') final  bool isOpenNow;
@override@JsonKey(name: 'is_favorited') final  bool isFavorited;

/// Create a copy of RestaurantCardModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestaurantCardModelCopyWith<_RestaurantCardModel> get copyWith => __$RestaurantCardModelCopyWithImpl<_RestaurantCardModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestaurantCardModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestaurantCardModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&(identical(other.ratingLabel, ratingLabel) || other.ratingLabel == ratingLabel)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.priceLabel, priceLabel) || other.priceLabel == priceLabel)&&(identical(other.distanceLabel, distanceLabel) || other.distanceLabel == distanceLabel)&&(identical(other.isOpenNow, isOpenNow) || other.isOpenNow == isOpenNow)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,coverUrl,ratingLabel,ratingCount,priceLabel,distanceLabel,isOpenNow,isFavorited);
}

@override
String toString() {
    return 'RestaurantCardModel(id: $id, name: $name, coverUrl: $coverUrl, ratingLabel: $ratingLabel, ratingCount: $ratingCount, priceLabel: $priceLabel, distanceLabel: $distanceLabel, isOpenNow: $isOpenNow, isFavorited: $isFavorited)';
}


}

/// @nodoc
abstract mixin class _$RestaurantCardModelCopyWith<$Res> implements $RestaurantCardModelCopyWith<$Res> {
  factory _$RestaurantCardModelCopyWith(_RestaurantCardModel value, $Res Function(_RestaurantCardModel) _then) = __$RestaurantCardModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'cover_url') String? coverUrl,@JsonKey(name: 'rating_label') String ratingLabel,@JsonKey(name: 'rating_count') int ratingCount,@JsonKey(name: 'price_label') String priceLabel,@JsonKey(name: 'distance_label') String? distanceLabel,@JsonKey(name: 'is_open_now') bool isOpenNow,@JsonKey(name: 'is_favorited') bool isFavorited
});




}
/// @nodoc
class __$RestaurantCardModelCopyWithImpl<$Res>
    implements _$RestaurantCardModelCopyWith<$Res> {
  __$RestaurantCardModelCopyWithImpl(this._self, this._then);

  final _RestaurantCardModel _self;
  final $Res Function(_RestaurantCardModel) _then;

/// Create a copy of RestaurantCardModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? coverUrl = freezed,Object? ratingLabel = null,Object? ratingCount = null,Object? priceLabel = null,Object? distanceLabel = freezed,Object? isOpenNow = null,Object? isFavorited = null,}) {
  return _then(_RestaurantCardModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,ratingLabel: null == ratingLabel ? _self.ratingLabel : ratingLabel // ignore: cast_nullable_to_non_nullable
as String,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,priceLabel: null == priceLabel ? _self.priceLabel : priceLabel // ignore: cast_nullable_to_non_nullable
as String,distanceLabel: freezed == distanceLabel ? _self.distanceLabel : distanceLabel // ignore: cast_nullable_to_non_nullable
as String?,isOpenNow: null == isOpenNow ? _self.isOpenNow : isOpenNow // ignore: cast_nullable_to_non_nullable
as bool,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
