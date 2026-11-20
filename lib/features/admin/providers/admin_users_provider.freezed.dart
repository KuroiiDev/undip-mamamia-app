// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'admin_users_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$AdminUsersState {

 List<AdminUserModel> get items; String? get nextCursor; bool get isLoading; bool get isLoadingMore; String? get error; String? get roleFilter; String? get statusFilter; String get query;
/// Create a copy of AdminUsersState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$AdminUsersStateCopyWith<AdminUsersState> get copyWith => _$AdminUsersStateCopyWithImpl<AdminUsersState>(this as AdminUsersState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as AdminUsersState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is AdminUsersState&&const DeepCollectionEquality().equals(other.items, _this.items)&&(identical(other.nextCursor, _this.nextCursor) || other.nextCursor == _this.nextCursor)&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.isLoadingMore, _this.isLoadingMore) || other.isLoadingMore == _this.isLoadingMore)&&(identical(other.error, _this.error) || other.error == _this.error)&&(identical(other.roleFilter, _this.roleFilter) || other.roleFilter == _this.roleFilter)&&(identical(other.statusFilter, _this.statusFilter) || other.statusFilter == _this.statusFilter)&&(identical(other.query, _this.query) || other.query == _this.query));
}


@override
int get hashCode {
  final _this = this as AdminUsersState;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.items),_this.nextCursor,_this.isLoading,_this.isLoadingMore,_this.error,_this.roleFilter,_this.statusFilter,_this.query);
}

@override
String toString() {
  final _this = this as AdminUsersState;
  return 'AdminUsersState(items: ${_this.items}, nextCursor: ${_this.nextCursor}, isLoading: ${_this.isLoading}, isLoadingMore: ${_this.isLoadingMore}, error: ${_this.error}, roleFilter: ${_this.roleFilter}, statusFilter: ${_this.statusFilter}, query: ${_this.query})';
}


}

/// @nodoc
abstract mixin class $AdminUsersStateCopyWith<$Res>  {
  factory $AdminUsersStateCopyWith(AdminUsersState value, $Res Function(AdminUsersState) _then) = _$AdminUsersStateCopyWithImpl;
@useResult
$Res call({
 List<AdminUserModel> items, String? nextCursor, bool isLoading, bool isLoadingMore, String? error, String? roleFilter, String? statusFilter, String query
});




}
/// @nodoc
class _$AdminUsersStateCopyWithImpl<$Res>
    implements $AdminUsersStateCopyWith<$Res> {
  _$AdminUsersStateCopyWithImpl(this._self, this._then);

  final AdminUsersState _self;
  final $Res Function(AdminUsersState) _then;

/// Create a copy of AdminUsersState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? items = null,Object? nextCursor = freezed,Object? isLoading = null,Object? isLoadingMore = null,Object? error = freezed,Object? roleFilter = freezed,Object? statusFilter = freezed,Object? query = null,}) {
  return _then(AdminUsersState(
items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<AdminUserModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,roleFilter: freezed == roleFilter ? _self.roleFilter : roleFilter // ignore: cast_nullable_to_non_nullable
as String?,statusFilter: freezed == statusFilter ? _self.statusFilter : statusFilter // ignore: cast_nullable_to_non_nullable
as String?,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// Adds pattern-matching-related methods to [AdminUsersState].
extension AdminUsersStatePatterns on AdminUsersState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _AdminUsersState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _AdminUsersState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _AdminUsersState value)  $default,){
final _that = this;
switch (_that) {
case _AdminUsersState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _AdminUsersState value)?  $default,){
final _that = this;
switch (_that) {
case _AdminUsersState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<AdminUserModel> items,  String? nextCursor,  bool isLoading,  bool isLoadingMore,  String? error,  String? roleFilter,  String? statusFilter,  String query)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _AdminUsersState() when $default != null:
return $default(_that.items,_that.nextCursor,_that.isLoading,_that.isLoadingMore,_that.error,_that.roleFilter,_that.statusFilter,_that.query);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<AdminUserModel> items,  String? nextCursor,  bool isLoading,  bool isLoadingMore,  String? error,  String? roleFilter,  String? statusFilter,  String query)  $default,) {final _that = this;
switch (_that) {
case _AdminUsersState():
return $default(_that.items,_that.nextCursor,_that.isLoading,_that.isLoadingMore,_that.error,_that.roleFilter,_that.statusFilter,_that.query);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<AdminUserModel> items,  String? nextCursor,  bool isLoading,  bool isLoadingMore,  String? error,  String? roleFilter,  String? statusFilter,  String query)?  $default,) {final _that = this;
switch (_that) {
case _AdminUsersState() when $default != null:
return $default(_that.items,_that.nextCursor,_that.isLoading,_that.isLoadingMore,_that.error,_that.roleFilter,_that.statusFilter,_that.query);case _:
  return null;

}
}

}

/// @nodoc


class _AdminUsersState implements AdminUsersState {
  const _AdminUsersState({ List<AdminUserModel> items = const [], this.nextCursor, this.isLoading = false, this.isLoadingMore = false, this.error, this.roleFilter, this.statusFilter, this.query = ''}): _items = items;
  

 final  List<AdminUserModel> _items;
@override@JsonKey() List<AdminUserModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}

@override final  String? nextCursor;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool isLoadingMore;
@override final  String? error;
@override final  String? roleFilter;
@override final  String? statusFilter;
@override@JsonKey() final  String query;

/// Create a copy of AdminUsersState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$AdminUsersStateCopyWith<_AdminUsersState> get copyWith => __$AdminUsersStateCopyWithImpl<_AdminUsersState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _AdminUsersState&&const DeepCollectionEquality().equals(other.items, _items)&&(identical(other.nextCursor, nextCursor) || other.nextCursor == nextCursor)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.isLoadingMore, isLoadingMore) || other.isLoadingMore == isLoadingMore)&&(identical(other.error, error) || other.error == error)&&(identical(other.roleFilter, roleFilter) || other.roleFilter == roleFilter)&&(identical(other.statusFilter, statusFilter) || other.statusFilter == statusFilter)&&(identical(other.query, query) || other.query == query));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_items),nextCursor,isLoading,isLoadingMore,error,roleFilter,statusFilter,query);
}

@override
String toString() {
    return 'AdminUsersState(items: $items, nextCursor: $nextCursor, isLoading: $isLoading, isLoadingMore: $isLoadingMore, error: $error, roleFilter: $roleFilter, statusFilter: $statusFilter, query: $query)';
}


}

/// @nodoc
abstract mixin class _$AdminUsersStateCopyWith<$Res> implements $AdminUsersStateCopyWith<$Res> {
  factory _$AdminUsersStateCopyWith(_AdminUsersState value, $Res Function(_AdminUsersState) _then) = __$AdminUsersStateCopyWithImpl;
@override @useResult
$Res call({
 List<AdminUserModel> items, String? nextCursor, bool isLoading, bool isLoadingMore, String? error, String? roleFilter, String? statusFilter, String query
});




}
/// @nodoc
class __$AdminUsersStateCopyWithImpl<$Res>
    implements _$AdminUsersStateCopyWith<$Res> {
  __$AdminUsersStateCopyWithImpl(this._self, this._then);

  final _AdminUsersState _self;
  final $Res Function(_AdminUsersState) _then;

/// Create a copy of AdminUsersState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? items = null,Object? nextCursor = freezed,Object? isLoading = null,Object? isLoadingMore = null,Object? error = freezed,Object? roleFilter = freezed,Object? statusFilter = freezed,Object? query = null,}) {
  return _then(_AdminUsersState(
items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<AdminUserModel>,nextCursor: freezed == nextCursor ? _self.nextCursor : nextCursor // ignore: cast_nullable_to_non_nullable
as String?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,isLoadingMore: null == isLoadingMore ? _self.isLoadingMore : isLoadingMore // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,roleFilter: freezed == roleFilter ? _self.roleFilter : roleFilter // ignore: cast_nullable_to_non_nullable
as String?,statusFilter: freezed == statusFilter ? _self.statusFilter : statusFilter // ignore: cast_nullable_to_non_nullable
as String?,query: null == query ? _self.query : query // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
