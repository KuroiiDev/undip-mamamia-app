// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'review_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ReviewUserModel {

 String get id; String get name;@JsonKey(name: 'avatar_url') String? get avatarUrl;
/// Create a copy of ReviewUserModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewUserModelCopyWith<ReviewUserModel> get copyWith => _$ReviewUserModelCopyWithImpl<ReviewUserModel>(this as ReviewUserModel, _$identity);

  /// Serializes this ReviewUserModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewUserModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewUserModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.avatarUrl, _this.avatarUrl) || other.avatarUrl == _this.avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewUserModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.avatarUrl);
}

@override
String toString() {
  final _this = this as ReviewUserModel;
  return 'ReviewUserModel(id: ${_this.id}, name: ${_this.name}, avatarUrl: ${_this.avatarUrl})';
}


}

/// @nodoc
abstract mixin class $ReviewUserModelCopyWith<$Res>  {
  factory $ReviewUserModelCopyWith(ReviewUserModel value, $Res Function(ReviewUserModel) _then) = _$ReviewUserModelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'avatar_url') String? avatarUrl
});




}
/// @nodoc
class _$ReviewUserModelCopyWithImpl<$Res>
    implements $ReviewUserModelCopyWith<$Res> {
  _$ReviewUserModelCopyWithImpl(this._self, this._then);

  final ReviewUserModel _self;
  final $Res Function(ReviewUserModel) _then;

/// Create a copy of ReviewUserModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? avatarUrl = freezed,}) {
  return _then(ReviewUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ReviewUserModel].
extension ReviewUserModelPatterns on ReviewUserModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewUserModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewUserModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewUserModel value)  $default,){
final _that = this;
switch (_that) {
case _ReviewUserModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewUserModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewUserModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'avatar_url')  String? avatarUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewUserModel() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'avatar_url')  String? avatarUrl)  $default,) {final _that = this;
switch (_that) {
case _ReviewUserModel():
return $default(_that.id,_that.name,_that.avatarUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'avatar_url')  String? avatarUrl)?  $default,) {final _that = this;
switch (_that) {
case _ReviewUserModel() when $default != null:
return $default(_that.id,_that.name,_that.avatarUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewUserModel implements ReviewUserModel {
  const _ReviewUserModel({required this.id, required this.name, @JsonKey(name: 'avatar_url') this.avatarUrl});
  factory _ReviewUserModel.fromJson(Map<String, dynamic> json) => _$ReviewUserModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(name: 'avatar_url') final  String? avatarUrl;

/// Create a copy of ReviewUserModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewUserModelCopyWith<_ReviewUserModel> get copyWith => __$ReviewUserModelCopyWithImpl<_ReviewUserModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewUserModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewUserModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.avatarUrl, avatarUrl) || other.avatarUrl == avatarUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,avatarUrl);
}

@override
String toString() {
    return 'ReviewUserModel(id: $id, name: $name, avatarUrl: $avatarUrl)';
}


}

/// @nodoc
abstract mixin class _$ReviewUserModelCopyWith<$Res> implements $ReviewUserModelCopyWith<$Res> {
  factory _$ReviewUserModelCopyWith(_ReviewUserModel value, $Res Function(_ReviewUserModel) _then) = __$ReviewUserModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'avatar_url') String? avatarUrl
});




}
/// @nodoc
class __$ReviewUserModelCopyWithImpl<$Res>
    implements _$ReviewUserModelCopyWith<$Res> {
  __$ReviewUserModelCopyWithImpl(this._self, this._then);

  final _ReviewUserModel _self;
  final $Res Function(_ReviewUserModel) _then;

/// Create a copy of ReviewUserModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? avatarUrl = freezed,}) {
  return _then(_ReviewUserModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,avatarUrl: freezed == avatarUrl ? _self.avatarUrl : avatarUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ReviewModel {

 String get id; int get rating; String? get comment; ReviewUserModel? get user;@JsonKey(name: 'created_label') String? get createdLabel;@JsonKey(name: 'is_mine') bool get isMine;
/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ReviewModelCopyWith<ReviewModel> get copyWith => _$ReviewModelCopyWithImpl<ReviewModel>(this as ReviewModel, _$identity);

  /// Serializes this ReviewModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ReviewModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ReviewModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.createdLabel, _this.createdLabel) || other.createdLabel == _this.createdLabel)&&(identical(other.isMine, _this.isMine) || other.isMine == _this.isMine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ReviewModel;
  return Object.hash(runtimeType,_this.id,_this.rating,_this.comment,_this.user,_this.createdLabel,_this.isMine);
}

@override
String toString() {
  final _this = this as ReviewModel;
  return 'ReviewModel(id: ${_this.id}, rating: ${_this.rating}, comment: ${_this.comment}, user: ${_this.user}, createdLabel: ${_this.createdLabel}, isMine: ${_this.isMine})';
}


}

/// @nodoc
abstract mixin class $ReviewModelCopyWith<$Res>  {
  factory $ReviewModelCopyWith(ReviewModel value, $Res Function(ReviewModel) _then) = _$ReviewModelCopyWithImpl;
@useResult
$Res call({
 String id, int rating, String? comment, ReviewUserModel? user,@JsonKey(name: 'created_label') String? createdLabel,@JsonKey(name: 'is_mine') bool isMine
});


$ReviewUserModelCopyWith<$Res>? get user;

}
/// @nodoc
class _$ReviewModelCopyWithImpl<$Res>
    implements $ReviewModelCopyWith<$Res> {
  _$ReviewModelCopyWithImpl(this._self, this._then);

  final ReviewModel _self;
  final $Res Function(ReviewModel) _then;

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rating = null,Object? comment = freezed,Object? user = freezed,Object? createdLabel = freezed,Object? isMine = null,}) {
  return _then(ReviewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ReviewUserModel?,createdLabel: freezed == createdLabel ? _self.createdLabel : createdLabel // ignore: cast_nullable_to_non_nullable
as String?,isMine: null == isMine ? _self.isMine : isMine // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}
/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewUserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $ReviewUserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ReviewModel].
extension ReviewModelPatterns on ReviewModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ReviewModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ReviewModel value)  $default,){
final _that = this;
switch (_that) {
case _ReviewModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ReviewModel value)?  $default,){
final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int rating,  String? comment,  ReviewUserModel? user, @JsonKey(name: 'created_label')  String? createdLabel, @JsonKey(name: 'is_mine')  bool isMine)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.user,_that.createdLabel,_that.isMine);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int rating,  String? comment,  ReviewUserModel? user, @JsonKey(name: 'created_label')  String? createdLabel, @JsonKey(name: 'is_mine')  bool isMine)  $default,) {final _that = this;
switch (_that) {
case _ReviewModel():
return $default(_that.id,_that.rating,_that.comment,_that.user,_that.createdLabel,_that.isMine);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int rating,  String? comment,  ReviewUserModel? user, @JsonKey(name: 'created_label')  String? createdLabel, @JsonKey(name: 'is_mine')  bool isMine)?  $default,) {final _that = this;
switch (_that) {
case _ReviewModel() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.user,_that.createdLabel,_that.isMine);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ReviewModel implements ReviewModel {
  const _ReviewModel({required this.id, required this.rating, this.comment, this.user, @JsonKey(name: 'created_label') this.createdLabel, @JsonKey(name: 'is_mine') this.isMine = false});
  factory _ReviewModel.fromJson(Map<String, dynamic> json) => _$ReviewModelFromJson(json);

@override final  String id;
@override final  int rating;
@override final  String? comment;
@override final  ReviewUserModel? user;
@override@JsonKey(name: 'created_label') final  String? createdLabel;
@override@JsonKey(name: 'is_mine') final  bool isMine;

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ReviewModelCopyWith<_ReviewModel> get copyWith => __$ReviewModelCopyWithImpl<_ReviewModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ReviewModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ReviewModel&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.user, user) || other.user == user)&&(identical(other.createdLabel, createdLabel) || other.createdLabel == createdLabel)&&(identical(other.isMine, isMine) || other.isMine == isMine));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,rating,comment,user,createdLabel,isMine);
}

@override
String toString() {
    return 'ReviewModel(id: $id, rating: $rating, comment: $comment, user: $user, createdLabel: $createdLabel, isMine: $isMine)';
}


}

/// @nodoc
abstract mixin class _$ReviewModelCopyWith<$Res> implements $ReviewModelCopyWith<$Res> {
  factory _$ReviewModelCopyWith(_ReviewModel value, $Res Function(_ReviewModel) _then) = __$ReviewModelCopyWithImpl;
@override @useResult
$Res call({
 String id, int rating, String? comment, ReviewUserModel? user,@JsonKey(name: 'created_label') String? createdLabel,@JsonKey(name: 'is_mine') bool isMine
});


@override $ReviewUserModelCopyWith<$Res>? get user;

}
/// @nodoc
class __$ReviewModelCopyWithImpl<$Res>
    implements _$ReviewModelCopyWith<$Res> {
  __$ReviewModelCopyWithImpl(this._self, this._then);

  final _ReviewModel _self;
  final $Res Function(_ReviewModel) _then;

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rating = null,Object? comment = freezed,Object? user = freezed,Object? createdLabel = freezed,Object? isMine = null,}) {
  return _then(_ReviewModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,user: freezed == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as ReviewUserModel?,createdLabel: freezed == createdLabel ? _self.createdLabel : createdLabel // ignore: cast_nullable_to_non_nullable
as String?,isMine: null == isMine ? _self.isMine : isMine // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

/// Create a copy of ReviewModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewUserModelCopyWith<$Res>? get user {
    if (_self.user == null) {
    return null;
  }

  return $ReviewUserModelCopyWith<$Res>(_self.user!, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
