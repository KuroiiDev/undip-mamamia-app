// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_stores_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdminStoresState {

 List<AdminStoreItemModel> get items; String? get nextCursor; bool get isLoading; bool get isLoadingMore; String? get error; String? get statusFilter; String get query;
/// Create a copy of AdminStoresState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminStoresStateCopyWith<AdminStoresState> get copyWith => _$AdminStoresStateCopyWithImpl<AdminStoresState>(this as AdminStoresState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AdminStoresState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminStoresState&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor)&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.isLoadingMore, _this.isLoadingMore) || other.isLoadingMore == _this.isLoadingMore)&&(identical(other.error, _this.error) || other.error == _this.error)&&(identical(other.statusFilter, _this.statusFilter) || other.statusFilter == _this.statusFilter)&&(identical(other.query, _this.query) || other.query == _this.query));
}


@override
int get hashCode {
  final _this = this as AdminStoresState;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.nextCursor,_this.isLoading,_this.isLoadingMore,_this.error,_this.statusFilter,_this.query);
}

@override
String toString() {
  final _this = this as AdminStoresState;
  return 'AdminStoresState(items: ${_this.items}, nextCursor: ${_this.nextCursor}, isLoading: ${_this.isLoading}, isLoadingMore: ${_this.isLoadingMore}, error: ${_this.error}, statusFilter: ${_this.statusFilter}, query: ${_this.query})';
}


}

/// @nodoc
abstract mixin class $AdminStoresStateCopyWith<$Res>  {
  factory $AdminStoresStateCopyWith(AdminStoresState value, $Res Function(AdminStoresState) _then) = _$AdminStoresStateCopyWithImpl;
@useResult
$Res call({
 List<AdminStoreItemModel> items, String? nextCursor, bool isLoading, bool isLoadingMore, String? error, String? statusFilter, String query
});




}
/// @nodoc
class _$AdminStoresStateCopyWithImpl<$Res>
    implements $AdminStoresStateCopyWith<$Res> {
  _$AdminStoresStateCopyWithImpl(this._self, this._then);

  final AdminStoresState _self;
  final $Res Function(AdminStoresState) _then;

/// Create a copy of AdminStoresState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,Object? isLoading = null,Object? isLoadingMore = null,Object? error = freezed,Object? statusFilter = freezed,Object? query = null,}) {
  return _then(AdminStoresState(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<AdminStoreItemModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,statusFilter: freezed == statusFilter ? _self.statusFilter : statusFilter // ignore: cast_nullable_to_non_nullable
as String?,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminStoresState].
extension AdminStoresStatePatterns on AdminStoresState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminStoresState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminStoresState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminStoresState value)  $default,){
final _that = this;
switch (_that) {
case _AdminStoresState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminStoresState value)?  $default,){
final _that = this;
switch (_that) {
case _AdminStoresState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AdminStoreItemModel> items,  String? nextCursor,  bool isLoading,  bool isLoadingMore,  String? error,  String? statusFilter,  String query)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminStoresState() when $default != null:
return $default(_that.items,_that.nextCursor,_that.isLoading,_that.isLoadingMore,_that.error,_that.statusFilter,_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AdminStoreItemModel> items,  String? nextCursor,  bool isLoading,  bool isLoadingMore,  String? error,  String? statusFilter,  String query)  $default,) {final _that = this;
switch (_that) {
case _AdminStoresState():
return $default(_that.items,_that.nextCursor,_that.isLoading,_that.isLoadingMore,_that.error,_that.statusFilter,_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AdminStoreItemModel> items,  String? nextCursor,  bool isLoading,  bool isLoadingMore,  String? error,  String? statusFilter,  String query)?  $default,) {final _that = this;
switch (_that) {
case _AdminStoresState() when $default != null:
return $default(_that.items,_that.nextCursor,_that.isLoading,_that.isLoadingMore,_that.error,_that.statusFilter,_that.query);case _:
  return null;

}
}

}

/// @nodoc


class _AdminStoresState implements AdminStoresState {
  const _AdminStoresState({ List<AdminStoreItemModel> items = const [], this.nextCursor, this.isLoading = false, this.isLoadingMore = false, this.error, this.statusFilter, this.query = ''}): _items = items;
  

 final  List<AdminStoreItemModel> _items;
@override@JsonKey() List<AdminStoreItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
@override final  String? error;
@override final  String? statusFilter;
@override@JsonKey() final  String query;

/// Create a copy of AdminStoresState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminStoresStateCopyWith<_AdminStoresState> get copyWith => __$AdminStoresStateCopyWithImpl<_AdminStoresState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminStoresState&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.error, error) || other.error == error)&&(identical(other.statusFilter, statusFilter) || other.statusFilter == statusFilter)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor,isLoading,isLoadingMore,error,statusFilter,query);
}

@override
String toString() {
    return 'AdminStoresState(items: $items, nextCursor: $nextCursor, isLoading: $isLoading, isLoadingMore: $isLoadingMore, error: $error, statusFilter: $statusFilter, query: $query)';
}


}

/// @nodoc
abstract mixin class _$AdminStoresStateCopyWith<$Res> implements $AdminStoresStateCopyWith<$Res> {
  factory _$AdminStoresStateCopyWith(_AdminStoresState value, $Res Function(_AdminStoresState) _then) = __$AdminStoresStateCopyWithImpl;
@override @useResult
$Res call({
 List<AdminStoreItemModel> items, String? nextCursor, bool isLoading, bool isLoadingMore, String? error, String? statusFilter, String query
});




}
/// @nodoc
class __$AdminStoresStateCopyWithImpl<$Res>
    implements _$AdminStoresStateCopyWith<$Res> {
  __$AdminStoresStateCopyWithImpl(this._self, this._then);

  final _AdminStoresState _self;
  final $Res Function(_AdminStoresState) _then;

/// Create a copy of AdminStoresState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,Object? isLoading = null,Object? isLoadingMore = null,Object? error = freezed,Object? statusFilter = freezed,Object? query = null,}) {
  return _then(_AdminStoresState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AdminStoreItemModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,statusFilter: freezed == statusFilter ? _self.statusFilter : statusFilter // ignore: cast_nullable_to_non_nullable
as String?,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
