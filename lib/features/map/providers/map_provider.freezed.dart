// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'map_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$MapState {

 List<MapPointModel> get points; MapPointModel? get selectedPoint; bool get isLoading; bool get showSearchThisArea; String? get error;
/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MapStateCopyWith<MapState> get copyWith => _$MapStateCopyWithImpl<MapState>(this as MapState, _$identity);



@override
bool operator ==(Object other) {
  final _this = this as MapState;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MapState&&const DeepCollectionEquality().equals(other.points, _this.points)&&(identical(other.selectedPoint, _this.selectedPoint) || other.selectedPoint == _this.selectedPoint)&&(identical(other.isLoading, _this.isLoading) || other.isLoading == _this.isLoading)&&(identical(other.showSearchThisArea, _this.showSearchThisArea) || other.showSearchThisArea == _this.showSearchThisArea)&&(identical(other.error, _this.error) || other.error == _this.error));
}


@override
int get hashCode {
  final _this = this as MapState;
  return Object.hash(runtimeType,const DeepCollectionEquality().hash(_this.points),_this.selectedPoint,_this.isLoading,_this.showSearchThisArea,_this.error);
}

@override
String toString() {
  final _this = this as MapState;
  return 'MapState(points: ${_this.points}, selectedPoint: ${_this.selectedPoint}, isLoading: ${_this.isLoading}, showSearchThisArea: ${_this.showSearchThisArea}, error: ${_this.error})';
}


}

/// @nodoc
abstract mixin class $MapStateCopyWith<$Res>  {
  factory $MapStateCopyWith(MapState value, $Res Function(MapState) _then) = _$MapStateCopyWithImpl;
@useResult
$Res call({
 List<MapPointModel> points, MapPointModel? selectedPoint, bool isLoading, bool showSearchThisArea, String? error
});


$MapPointModelCopyWith<$Res>? get selectedPoint;

}
/// @nodoc
class _$MapStateCopyWithImpl<$Res>
    implements $MapStateCopyWith<$Res> {
  _$MapStateCopyWithImpl(this._self, this._then);

  final MapState _self;
  final $Res Function(MapState) _then;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? points = null,Object? selectedPoint = freezed,Object? isLoading = null,Object? showSearchThisArea = null,Object? error = freezed,}) {
  return _then(MapState(
points: null == points ? _self.points : points // ignore: cast_nullable_to_non_nullable
as List<MapPointModel>,selectedPoint: freezed == selectedPoint ? _self.selectedPoint : selectedPoint // ignore: cast_nullable_to_non_nullable
as MapPointModel?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showSearchThisArea: null == showSearchThisArea ? _self.showSearchThisArea : showSearchThisArea // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}
/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MapPointModelCopyWith<$Res>? get selectedPoint {
    if (_self.selectedPoint == null) {
    return null;
  }

  return $MapPointModelCopyWith<$Res>(_self.selectedPoint!, (value) {
    return _then(_self.copyWith(selectedPoint: value));
  });
}
}


/// Adds pattern-matching-related methods to [MapState].
extension MapStatePatterns on MapState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MapState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MapState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MapState value)  $default,){
final _that = this;
switch (_that) {
case _MapState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MapState value)?  $default,){
final _that = this;
switch (_that) {
case _MapState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( List<MapPointModel> points,  MapPointModel? selectedPoint,  bool isLoading,  bool showSearchThisArea,  String? error)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MapState() when $default != null:
return $default(_that.points,_that.selectedPoint,_that.isLoading,_that.showSearchThisArea,_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( List<MapPointModel> points,  MapPointModel? selectedPoint,  bool isLoading,  bool showSearchThisArea,  String? error)  $default,) {final _that = this;
switch (_that) {
case _MapState():
return $default(_that.points,_that.selectedPoint,_that.isLoading,_that.showSearchThisArea,_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( List<MapPointModel> points,  MapPointModel? selectedPoint,  bool isLoading,  bool showSearchThisArea,  String? error)?  $default,) {final _that = this;
switch (_that) {
case _MapState() when $default != null:
return $default(_that.points,_that.selectedPoint,_that.isLoading,_that.showSearchThisArea,_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _MapState implements MapState {
  const _MapState({ List<MapPointModel> points = const [], this.selectedPoint, this.isLoading = false, this.showSearchThisArea = false, this.error}): _points = points;
  

 final  List<MapPointModel> _points;
@override@JsonKey() List<MapPointModel> get points {
  if (_points is EqualUnmodifiableListView) return _points;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_points);
}

@override final  MapPointModel? selectedPoint;
@override@JsonKey() final  bool isLoading;
@override@JsonKey() final  bool showSearchThisArea;
@override final  String? error;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MapStateCopyWith<_MapState> get copyWith => __$MapStateCopyWithImpl<_MapState>(this, _$identity);



@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MapState&&const DeepCollectionEquality().equals(other.points, _points)&&(identical(other.selectedPoint, selectedPoint) || other.selectedPoint == selectedPoint)&&(identical(other.isLoading, isLoading) || other.isLoading == isLoading)&&(identical(other.showSearchThisArea, showSearchThisArea) || other.showSearchThisArea == showSearchThisArea)&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode {
    return Object.hash(runtimeType,const DeepCollectionEquality().hash(_points),selectedPoint,isLoading,showSearchThisArea,error);
}

@override
String toString() {
    return 'MapState(points: $points, selectedPoint: $selectedPoint, isLoading: $isLoading, showSearchThisArea: $showSearchThisArea, error: $error)';
}


}

/// @nodoc
abstract mixin class _$MapStateCopyWith<$Res> implements $MapStateCopyWith<$Res> {
  factory _$MapStateCopyWith(_MapState value, $Res Function(_MapState) _then) = __$MapStateCopyWithImpl;
@override @useResult
$Res call({
 List<MapPointModel> points, MapPointModel? selectedPoint, bool isLoading, bool showSearchThisArea, String? error
});


@override $MapPointModelCopyWith<$Res>? get selectedPoint;

}
/// @nodoc
class __$MapStateCopyWithImpl<$Res>
    implements _$MapStateCopyWith<$Res> {
  __$MapStateCopyWithImpl(this._self, this._then);

  final _MapState _self;
  final $Res Function(_MapState) _then;

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? points = null,Object? selectedPoint = freezed,Object? isLoading = null,Object? showSearchThisArea = null,Object? error = freezed,}) {
  return _then(_MapState(
points: null == points ? _self._points : points // ignore: cast_nullable_to_non_nullable
as List<MapPointModel>,selectedPoint: freezed == selectedPoint ? _self.selectedPoint : selectedPoint // ignore: cast_nullable_to_non_nullable
as MapPointModel?,isLoading: null == isLoading ? _self.isLoading : isLoading // ignore: cast_nullable_to_non_nullable
as bool,showSearchThisArea: null == showSearchThisArea ? _self.showSearchThisArea : showSearchThisArea // ignore: cast_nullable_to_non_nullable
as bool,error: freezed == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

/// Create a copy of MapState
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$MapPointModelCopyWith<$Res>? get selectedPoint {
    if (_self.selectedPoint == null) {
    return null;
  }

  return $MapPointModelCopyWith<$Res>(_self.selectedPoint!, (value) {
    return _then(_self.copyWith(selectedPoint: value));
  });
}
}

// dart format on
