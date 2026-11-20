// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'search_filter.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SearchFilter {

 String get query; List<String> get categoryIds; int? get priceLevel; double? get minRating; bool get openNow; String get sort;
/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SearchFilterCopyWith<SearchFilter> get copyWith => _$SearchFilterCopyWithImpl<SearchFilter>(this as SearchFilter, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as SearchFilter;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SearchFilter&&(identical(other.query, _this.query) || other.query == _this.query)&&const DeepCollectionEquality().equals(other.categoryIds, _this.categoryIds)&&(identical(other.priceLevel, _this.priceLevel) || other.priceLevel == _this.priceLevel)&&(identical(other.minRating, _this.minRating) || other.minRating == _this.minRating)&&(identical(other.openNow, _this.openNow) || other.openNow == _this.openNow)&&(identical(other.sort, _this.sort) || other.sort == _this.sort));
}


@override
int get hashCode {
  final _this = this as SearchFilter;
  return Object.hash(runtimeType,_this.query,const DeepCollectionEquality().hash(_this.categoryIds),_this.priceLevel,_this.minRating,_this.openNow,_this.sort);
}

@override
String toString() {
  final _this = this as SearchFilter;
  return 'SearchFilter(query: ${_this.query}, categoryIds: ${_this.categoryIds}, priceLevel: ${_this.priceLevel}, minRating: ${_this.minRating}, openNow: ${_this.openNow}, sort: ${_this.sort})';
}


}

/// @nodoc
abstract mixin class $SearchFilterCopyWith<$Res>  {
  factory $SearchFilterCopyWith(SearchFilter value, $Res Function(SearchFilter) _then) = _$SearchFilterCopyWithImpl;
@useResult
$Res call({
 String query, List<String> categoryIds, int? priceLevel, double? minRating, bool openNow, String sort
});




}
/// @nodoc
class _$SearchFilterCopyWithImpl<$Res>
    implements $SearchFilterCopyWith<$Res> {
  _$SearchFilterCopyWithImpl(this._self, this._then);

  final SearchFilter _self;
  final $Res Function(SearchFilter) _then;

/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? query = null,Object? categoryIds = null,Object? priceLevel = freezed,Object? minRating = freezed,Object? openNow = null,Object? sort = null,}) {
  return _then(SearchFilter(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,categoryIds: null == categoryIds ? _self.categoryIds : categoryIds // ignore: cast_nullable_to_non_nullable
as List<String>,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as int?,minRating: freezed == minRating ? _self.minRating : minRating // ignore: cast_nullable_to_non_nullable
as double?,openNow: null == openNow ? _self.openNow : openNow // ignore: cast_nullable_to_non_nullable
as bool,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [SearchFilter].
extension SearchFilterPatterns on SearchFilter {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SearchFilter value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SearchFilter value)  $default,){
final _that = this;
switch (_that) {
case _SearchFilter():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SearchFilter value)?  $default,){
final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String query,  List<String> categoryIds,  int? priceLevel,  double? minRating,  bool openNow,  String sort)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
return $default(_that.query,_that.categoryIds,_that.priceLevel,_that.minRating,_that.openNow,_that.sort);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String query,  List<String> categoryIds,  int? priceLevel,  double? minRating,  bool openNow,  String sort)  $default,) {final _that = this;
switch (_that) {
case _SearchFilter():
return $default(_that.query,_that.categoryIds,_that.priceLevel,_that.minRating,_that.openNow,_that.sort);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String query,  List<String> categoryIds,  int? priceLevel,  double? minRating,  bool openNow,  String sort)?  $default,) {final _that = this;
switch (_that) {
case _SearchFilter() when $default != null:
return $default(_that.query,_that.categoryIds,_that.priceLevel,_that.minRating,_that.openNow,_that.sort);case _:
  return null;

}
}

}

/// @nodoc


class _SearchFilter implements SearchFilter {
  const _SearchFilter({this.query = '',  List<String> categoryIds = const [], this.priceLevel, this.minRating, this.openNow = false, this.sort = 'rating'}): _categoryIds = categoryIds;
  

@override@JsonKey() final  String query;
 final  List<String> _categoryIds;
@override@JsonKey() List<String> get categoryIds {
  if (_categoryIds is EqualUnmodifiableListView) return _categoryIds;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categoryIds);
}

@override final  int? priceLevel;
@override final  double? minRating;
@override@JsonKey() final  bool openNow;
@override@JsonKey() final  String sort;

/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SearchFilterCopyWith<_SearchFilter> get copyWith => __$SearchFilterCopyWithImpl<_SearchFilter>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _SearchFilter&&(identical(other.query, query) || other.query == query)&&const DeepCollectionEquality().equals(other.categoryIds, _categoryIds)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.minRating, minRating) || other.minRating == minRating)&&(identical(other.openNow, openNow) || other.openNow == openNow)&&(identical(other.sort, sort) || other.sort == sort));
}


@override
int get hashCode {
    return Object.hash(runtimeType,query,const DeepCollectionEquality().hash(_categoryIds),priceLevel,minRating,openNow,sort);
}

@override
String toString() {
    return 'SearchFilter(query: $query, categoryIds: $categoryIds, priceLevel: $priceLevel, minRating: $minRating, openNow: $openNow, sort: $sort)';
}


}

/// @nodoc
abstract mixin class _$SearchFilterCopyWith<$Res> implements $SearchFilterCopyWith<$Res> {
  factory _$SearchFilterCopyWith(_SearchFilter value, $Res Function(_SearchFilter) _then) = __$SearchFilterCopyWithImpl;
@override @useResult
$Res call({
 String query, List<String> categoryIds, int? priceLevel, double? minRating, bool openNow, String sort
});




}
/// @nodoc
class __$SearchFilterCopyWithImpl<$Res>
    implements _$SearchFilterCopyWith<$Res> {
  __$SearchFilterCopyWithImpl(this._self, this._then);

  final _SearchFilter _self;
  final $Res Function(_SearchFilter) _then;

/// Create a copy of SearchFilter
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? query = null,Object? categoryIds = null,Object? priceLevel = freezed,Object? minRating = freezed,Object? openNow = null,Object? sort = null,}) {
  return _then(_SearchFilter(
query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,categoryIds: null == categoryIds ? _self._categoryIds : categoryIds // ignore: cast_nullable_to_non_nullable
as List<String>,priceLevel: freezed == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as int?,minRating: freezed == minRating ? _self.minRating : minRating // ignore: cast_nullable_to_non_nullable
as double?,openNow: null == openNow ? _self.openNow : openNow // ignore: cast_nullable_to_non_nullable
as bool,sort: null == sort ? _self.sort : sort // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
