// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_point_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MapPointModel {

 String get id; String get name; double get lat; double get lng;@JsonKey(name: 'rating_label') String get ratingLabel;
/// Create a copy of MapPointModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapPointModelCopyWith<MapPointModel> get copyWith => _$MapPointModelCopyWithImpl<MapPointModel>(this as MapPointModel, _$identity);

  /// Serializes this MapPointModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MapPointModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapPointModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.lat, _this.lat) || other.lat == _this.lat)&&(identical(other.lng, _this.lng) || other.lng == _this.lng)&&(identical(other.ratingLabel, _this.ratingLabel) || other.ratingLabel == _this.ratingLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MapPointModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.lat,_this.lng,_this.ratingLabel);
}

@override
String toString() {
  final _this = this as MapPointModel;
  return 'MapPointModel(id: ${_this.id}, name: ${_this.name}, lat: ${_this.lat}, lng: ${_this.lng}, ratingLabel: ${_this.ratingLabel})';
}


}

/// @nodoc
abstract mixin class $MapPointModelCopyWith<$Res>  {
  factory $MapPointModelCopyWith(MapPointModel value, $Res Function(MapPointModel) _then) = _$MapPointModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, double lat, double lng,@JsonKey(name: 'rating_label') String ratingLabel
});




}
/// @nodoc
class _$MapPointModelCopyWithImpl<$Res>
    implements $MapPointModelCopyWith<$Res> {
  _$MapPointModelCopyWithImpl(this._self, this._then);

  final MapPointModel _self;
  final $Res Function(MapPointModel) _then;

/// Create a copy of MapPointModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? lat = null,Object? lng = null,Object? ratingLabel = null,}) {
  return _then(MapPointModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,ratingLabel: null == ratingLabel ? _self.ratingLabel : ratingLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [MapPointModel].
extension MapPointModelPatterns on MapPointModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapPointModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapPointModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapPointModel value)  $default,){
final _that = this;
switch (_that) {
case _MapPointModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapPointModel value)?  $default,){
final _that = this;
switch (_that) {
case _MapPointModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  double lat,  double lng, @JsonKey(name: 'rating_label')  String ratingLabel)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapPointModel() when $default != null:
return $default(_that.id,_that.name,_that.lat,_that.lng,_that.ratingLabel);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  double lat,  double lng, @JsonKey(name: 'rating_label')  String ratingLabel)  $default,) {final _that = this;
switch (_that) {
case _MapPointModel():
return $default(_that.id,_that.name,_that.lat,_that.lng,_that.ratingLabel);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  double lat,  double lng, @JsonKey(name: 'rating_label')  String ratingLabel)?  $default,) {final _that = this;
switch (_that) {
case _MapPointModel() when $default != null:
return $default(_that.id,_that.name,_that.lat,_that.lng,_that.ratingLabel);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MapPointModel implements MapPointModel {
  const _MapPointModel({required this.id, required this.name, required this.lat, required this.lng, @JsonKey(name: 'rating_label') required this.ratingLabel});
  factory _MapPointModel.fromJson(Map<String, dynamic> json) => _$MapPointModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  double lat;
@override final  double lng;
@override@JsonKey(name: 'rating_label') final  String ratingLabel;

/// Create a copy of MapPointModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapPointModelCopyWith<_MapPointModel> get copyWith => __$MapPointModelCopyWithImpl<_MapPointModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MapPointModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapPointModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.ratingLabel, ratingLabel) || other.ratingLabel == ratingLabel));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,lat,lng,ratingLabel);
}

@override
String toString() {
    return 'MapPointModel(id: $id, name: $name, lat: $lat, lng: $lng, ratingLabel: $ratingLabel)';
}


}

/// @nodoc
abstract mixin class _$MapPointModelCopyWith<$Res> implements $MapPointModelCopyWith<$Res> {
  factory _$MapPointModelCopyWith(_MapPointModel value, $Res Function(_MapPointModel) _then) = __$MapPointModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, double lat, double lng,@JsonKey(name: 'rating_label') String ratingLabel
});




}
/// @nodoc
class __$MapPointModelCopyWithImpl<$Res>
    implements _$MapPointModelCopyWith<$Res> {
  __$MapPointModelCopyWithImpl(this._self, this._then);

  final _MapPointModel _self;
  final $Res Function(_MapPointModel) _then;

/// Create a copy of MapPointModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? lat = null,Object? lng = null,Object? ratingLabel = null,}) {
  return _then(_MapPointModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,ratingLabel: null == ratingLabel ? _self.ratingLabel : ratingLabel // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
