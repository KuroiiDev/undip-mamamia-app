// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_detail_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$RestaurantReviewsState {

 List<ReviewModel> get items; String? get nextCursor; bool get isLoading; bool get isLoadingMore; String? get error;
/// Create a copy of RestaurantReviewsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantReviewsStateCopyWith<RestaurantReviewsState> get copyWith => _$RestaurantReviewsStateCopyWithImpl<RestaurantReviewsState>(this as RestaurantReviewsState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as RestaurantReviewsState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantReviewsState&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor)&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.isLoadingMore, _this.isLoadingMore) || other.isLoadingMore == _this.isLoadingMore)&&(identical(other.error, _this.error) || other.error == _this.error));
}


@override
int get hashCode {
  final _this = this as RestaurantReviewsState;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.nextCursor,_this.isLoading,_this.isLoadingMore,_this.error);
}

@override
String toString() {
  final _this = this as RestaurantReviewsState;
  return 'RestaurantReviewsState(items: ${_this.items}, nextCursor: ${_this.nextCursor}, isLoading: ${_this.isLoading}, isLoadingMore: ${_this.isLoadingMore}, error: ${_this.error})';
}


}

/// @nodoc
abstract mixin class $RestaurantReviewsStateCopyWith<$Res>  {
  factory $RestaurantReviewsStateCopyWith(RestaurantReviewsState value, $Res Function(RestaurantReviewsState) _then) = _$RestaurantReviewsStateCopyWithImpl;
@useResult
$Res call({
 List<ReviewModel> items, String? nextCursor, bool isLoading, bool isLoadingMore, String? error
});




}
/// @nodoc
class _$RestaurantReviewsStateCopyWithImpl<$Res>
    implements $RestaurantReviewsStateCopyWith<$Res> {
  _$RestaurantReviewsStateCopyWithImpl(this._self, this._then);

  final RestaurantReviewsState _self;
  final $Res Function(RestaurantReviewsState) _then;

/// Create a copy of RestaurantReviewsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,Object? isLoading = null,Object? isLoadingMore = null,Object? error = freezed,}) {
  return _then(RestaurantReviewsState(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [RestaurantReviewsState].
extension RestaurantReviewsStatePatterns on RestaurantReviewsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestaurantReviewsState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestaurantReviewsState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestaurantReviewsState value)  $default,){
final _that = this;
switch (_that) {
case _RestaurantReviewsState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestaurantReviewsState value)?  $default,){
final _that = this;
switch (_that) {
case _RestaurantReviewsState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<ReviewModel> items,  String? nextCursor,  bool isLoading,  bool isLoadingMore,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestaurantReviewsState() when $default != null:
return $default(_that.items,_that.nextCursor,_that.isLoading,_that.isLoadingMore,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<ReviewModel> items,  String? nextCursor,  bool isLoading,  bool isLoadingMore,  String? error)  $default,) {final _that = this;
switch (_that) {
case _RestaurantReviewsState():
return $default(_that.items,_that.nextCursor,_that.isLoading,_that.isLoadingMore,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<ReviewModel> items,  String? nextCursor,  bool isLoading,  bool isLoadingMore,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _RestaurantReviewsState() when $default != null:
return $default(_that.items,_that.nextCursor,_that.isLoading,_that.isLoadingMore,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _RestaurantReviewsState implements RestaurantReviewsState {
  const _RestaurantReviewsState({ List<ReviewModel> items = const [], this.nextCursor, this.isLoading = false, this.isLoadingMore = false, this.error}): _items = items;
  

 final  List<ReviewModel> _items;
@override@JsonKey() List<ReviewModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
@override final  String? error;

/// Create a copy of RestaurantReviewsState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestaurantReviewsStateCopyWith<_RestaurantReviewsState> get copyWith => __$RestaurantReviewsStateCopyWithImpl<_RestaurantReviewsState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestaurantReviewsState&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor,isLoading,isLoadingMore,error);
}

@override
String toString() {
    return 'RestaurantReviewsState(items: $items, nextCursor: $nextCursor, isLoading: $isLoading, isLoadingMore: $isLoadingMore, error: $error)';
}


}

/// @nodoc
abstract mixin class _$RestaurantReviewsStateCopyWith<$Res> implements $RestaurantReviewsStateCopyWith<$Res> {
  factory _$RestaurantReviewsStateCopyWith(_RestaurantReviewsState value, $Res Function(_RestaurantReviewsState) _then) = __$RestaurantReviewsStateCopyWithImpl;
@override @useResult
$Res call({
 List<ReviewModel> items, String? nextCursor, bool isLoading, bool isLoadingMore, String? error
});




}
/// @nodoc
class __$RestaurantReviewsStateCopyWithImpl<$Res>
    implements _$RestaurantReviewsStateCopyWith<$Res> {
  __$RestaurantReviewsStateCopyWithImpl(this._self, this._then);

  final _RestaurantReviewsState _self;
  final $Res Function(_RestaurantReviewsState) _then;

/// Create a copy of RestaurantReviewsState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,Object? isLoading = null,Object? isLoadingMore = null,Object? error = freezed,}) {
  return _then(_RestaurantReviewsState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}

// dart format on
