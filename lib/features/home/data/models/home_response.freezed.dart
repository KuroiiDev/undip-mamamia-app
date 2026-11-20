// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'home_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$HomeResponse {

 List<CategoryModel> get categories; List<RestaurantCardModel> get nearby;@JsonKey(name: 'top_rated') List<RestaurantCardModel> get topRated;
/// Create a copy of HomeResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$HomeResponseCopyWith<HomeResponse> get copyWith => _$HomeResponseCopyWithImpl<HomeResponse>(this as HomeResponse, _$identity);

  /// Serializes this HomeResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as HomeResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is HomeResponse&&const DeepCollectionEquality().equals(other.categories, _this.categories)&&const DeepCollectionEquality().equals(other.nearby, _this.nearby)&&const DeepCollectionEquality().equals(other.topRated, _this.topRated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as HomeResponse;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.categories),const DeepCollectionEquality().hash(_this.nearby),const DeepCollectionEquality().hash(_this.topRated));
}

@override
String toString() {
  final _this = this as HomeResponse;
  return 'HomeResponse(categories: ${_this.categories}, nearby: ${_this.nearby}, topRated: ${_this.topRated})';
}


}

/// @nodoc
abstract mixin class $HomeResponseCopyWith<$Res>  {
  factory $HomeResponseCopyWith(HomeResponse value, $Res Function(HomeResponse) _then) = _$HomeResponseCopyWithImpl;
@useResult
$Res call({
 List<CategoryModel> categories, List<RestaurantCardModel> nearby,@JsonKey(name: 'top_rated') List<RestaurantCardModel> topRated
});




}
/// @nodoc
class _$HomeResponseCopyWithImpl<$Res>
    implements $HomeResponseCopyWith<$Res> {
  _$HomeResponseCopyWithImpl(this._self, this._then);

  final HomeResponse _self;
  final $Res Function(HomeResponse) _then;

/// Create a copy of HomeResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? categories = null,Object? nearby = null,Object? topRated = null,}) {
  return _then(HomeResponse(
categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,nearby: null == nearby ? _self.nearby : nearby // ignore: cast_nullable_to_non_nullable
as List<RestaurantCardModel>,topRated: null == topRated ? _self.topRated : topRated // ignore: cast_nullable_to_non_nullable
as List<RestaurantCardModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [HomeResponse].
extension HomeResponsePatterns on HomeResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _HomeResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _HomeResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _HomeResponse value)  $default,){
final _that = this;
switch (_that) {
case _HomeResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _HomeResponse value)?  $default,){
final _that = this;
switch (_that) {
case _HomeResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<CategoryModel> categories,  List<RestaurantCardModel> nearby, @JsonKey(name: 'top_rated')  List<RestaurantCardModel> topRated)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _HomeResponse() when $default != null:
return $default(_that.categories,_that.nearby,_that.topRated);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<CategoryModel> categories,  List<RestaurantCardModel> nearby, @JsonKey(name: 'top_rated')  List<RestaurantCardModel> topRated)  $default,) {final _that = this;
switch (_that) {
case _HomeResponse():
return $default(_that.categories,_that.nearby,_that.topRated);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<CategoryModel> categories,  List<RestaurantCardModel> nearby, @JsonKey(name: 'top_rated')  List<RestaurantCardModel> topRated)?  $default,) {final _that = this;
switch (_that) {
case _HomeResponse() when $default != null:
return $default(_that.categories,_that.nearby,_that.topRated);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _HomeResponse implements HomeResponse {
  const _HomeResponse({ List<CategoryModel> categories = const [],  List<RestaurantCardModel> nearby = const [], @JsonKey(name: 'top_rated')  List<RestaurantCardModel> topRated = const []}): _categories = categories,_nearby = nearby,_topRated = topRated;
  factory _HomeResponse.fromJson(Map<String, dynamic> json) => _$HomeResponseFromJson(json);

 final  List<CategoryModel> _categories;
@override@JsonKey() List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<RestaurantCardModel> _nearby;
@override@JsonKey() List<RestaurantCardModel> get nearby {
  if (_nearby is EqualUnmodifiableListView) return _nearby;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_nearby);
}

 final  List<RestaurantCardModel> _topRated;
@override@JsonKey(name: 'top_rated') List<RestaurantCardModel> get topRated {
  if (_topRated is EqualUnmodifiableListView) return _topRated;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topRated);
}


/// Create a copy of HomeResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$HomeResponseCopyWith<_HomeResponse> get copyWith => __$HomeResponseCopyWithImpl<_HomeResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$HomeResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _HomeResponse&&const DeepCollectionEquality().equals(other.categories, _categories)&&const DeepCollectionEquality().equals(other.nearby, _nearby)&&const DeepCollectionEquality().equals(other.topRated, _topRated));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_nearby),const DeepCollectionEquality().hash(_topRated));
}

@override
String toString() {
    return 'HomeResponse(categories: $categories, nearby: $nearby, topRated: $topRated)';
}


}

/// @nodoc
abstract mixin class _$HomeResponseCopyWith<$Res> implements $HomeResponseCopyWith<$Res> {
  factory _$HomeResponseCopyWith(_HomeResponse value, $Res Function(_HomeResponse) _then) = __$HomeResponseCopyWithImpl;
@override @useResult
$Res call({
 List<CategoryModel> categories, List<RestaurantCardModel> nearby,@JsonKey(name: 'top_rated') List<RestaurantCardModel> topRated
});




}
/// @nodoc
class __$HomeResponseCopyWithImpl<$Res>
    implements _$HomeResponseCopyWith<$Res> {
  __$HomeResponseCopyWithImpl(this._self, this._then);

  final _HomeResponse _self;
  final $Res Function(_HomeResponse) _then;

/// Create a copy of HomeResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? categories = null,Object? nearby = null,Object? topRated = null,}) {
  return _then(_HomeResponse(
categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,nearby: null == nearby ? _self._nearby : nearby // ignore: cast_nullable_to_non_nullable
as List<RestaurantCardModel>,topRated: null == topRated ? _self._topRated : topRated // ignore: cast_nullable_to_non_nullable
as List<RestaurantCardModel>,
  ));
}


}

// dart format on
