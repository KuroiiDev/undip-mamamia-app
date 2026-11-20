// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'profile_response.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$ProfileReviewRestaurant {

 String get id; String get name;@JsonKey(name: 'cover_url') String? get coverUrl;
/// Create a copy of ProfileReviewRestaurant
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileReviewRestaurantCopyWith<ProfileReviewRestaurant> get copyWith => _$ProfileReviewRestaurantCopyWithImpl<ProfileReviewRestaurant>(this as ProfileReviewRestaurant, _$identity);

  /// Serializes this ProfileReviewRestaurant to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProfileReviewRestaurant;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileReviewRestaurant&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.coverUrl, _this.coverUrl) || other.coverUrl == _this.coverUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProfileReviewRestaurant;
  return Object.hash(runtimeType,_this.id,_this.name,_this.coverUrl);
}

@override
String toString() {
  final _this = this as ProfileReviewRestaurant;
  return 'ProfileReviewRestaurant(id: ${_this.id}, name: ${_this.name}, coverUrl: ${_this.coverUrl})';
}


}

/// @nodoc
abstract mixin class $ProfileReviewRestaurantCopyWith<$Res>  {
  factory $ProfileReviewRestaurantCopyWith(ProfileReviewRestaurant value, $Res Function(ProfileReviewRestaurant) _then) = _$ProfileReviewRestaurantCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'cover_url') String? coverUrl
});




}
/// @nodoc
class _$ProfileReviewRestaurantCopyWithImpl<$Res>
    implements $ProfileReviewRestaurantCopyWith<$Res> {
  _$ProfileReviewRestaurantCopyWithImpl(this._self, this._then);

  final ProfileReviewRestaurant _self;
  final $Res Function(ProfileReviewRestaurant) _then;

/// Create a copy of ProfileReviewRestaurant
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? coverUrl = freezed,}) {
  return _then(ProfileReviewRestaurant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}

}


/// Adds pattern-matching-related methods to [ProfileReviewRestaurant].
extension ProfileReviewRestaurantPatterns on ProfileReviewRestaurant {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileReviewRestaurant value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileReviewRestaurant() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileReviewRestaurant value)  $default,){
final _that = this;
switch (_that) {
case _ProfileReviewRestaurant():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileReviewRestaurant value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileReviewRestaurant() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'cover_url')  String? coverUrl)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileReviewRestaurant() when $default != null:
return $default(_that.id,_that.name,_that.coverUrl);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'cover_url')  String? coverUrl)  $default,) {final _that = this;
switch (_that) {
case _ProfileReviewRestaurant():
return $default(_that.id,_that.name,_that.coverUrl);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'cover_url')  String? coverUrl)?  $default,) {final _that = this;
switch (_that) {
case _ProfileReviewRestaurant() when $default != null:
return $default(_that.id,_that.name,_that.coverUrl);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileReviewRestaurant implements ProfileReviewRestaurant {
  const _ProfileReviewRestaurant({required this.id, required this.name, @JsonKey(name: 'cover_url') this.coverUrl});
  factory _ProfileReviewRestaurant.fromJson(Map<String, dynamic> json) => _$ProfileReviewRestaurantFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(name: 'cover_url') final  String? coverUrl;

/// Create a copy of ProfileReviewRestaurant
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileReviewRestaurantCopyWith<_ProfileReviewRestaurant> get copyWith => __$ProfileReviewRestaurantCopyWithImpl<_ProfileReviewRestaurant>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileReviewRestaurantToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileReviewRestaurant&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,coverUrl);
}

@override
String toString() {
    return 'ProfileReviewRestaurant(id: $id, name: $name, coverUrl: $coverUrl)';
}


}

/// @nodoc
abstract mixin class _$ProfileReviewRestaurantCopyWith<$Res> implements $ProfileReviewRestaurantCopyWith<$Res> {
  factory _$ProfileReviewRestaurantCopyWith(_ProfileReviewRestaurant value, $Res Function(_ProfileReviewRestaurant) _then) = __$ProfileReviewRestaurantCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'cover_url') String? coverUrl
});




}
/// @nodoc
class __$ProfileReviewRestaurantCopyWithImpl<$Res>
    implements _$ProfileReviewRestaurantCopyWith<$Res> {
  __$ProfileReviewRestaurantCopyWithImpl(this._self, this._then);

  final _ProfileReviewRestaurant _self;
  final $Res Function(_ProfileReviewRestaurant) _then;

/// Create a copy of ProfileReviewRestaurant
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? coverUrl = freezed,}) {
  return _then(_ProfileReviewRestaurant(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,
  ));
}


}


/// @nodoc
mixin _$ProfileMyReview {

 String get id; int get rating; String? get comment;@JsonKey(name: 'created_label') String? get createdLabel; ProfileReviewRestaurant get restaurant;
/// Create a copy of ProfileMyReview
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileMyReviewCopyWith<ProfileMyReview> get copyWith => _$ProfileMyReviewCopyWithImpl<ProfileMyReview>(this as ProfileMyReview, _$identity);

  /// Serializes this ProfileMyReview to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProfileMyReview;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileMyReview&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.rating, _this.rating) || other.rating == _this.rating)&&(identical(other.comment, _this.comment) || other.comment == _this.comment)&&(identical(other.createdLabel, _this.createdLabel) || other.createdLabel == _this.createdLabel)&&(identical(other.restaurant, _this.restaurant) || other.restaurant == _this.restaurant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProfileMyReview;
  return Object.hash(runtimeType,_this.id,_this.rating,_this.comment,_this.createdLabel,_this.restaurant);
}

@override
String toString() {
  final _this = this as ProfileMyReview;
  return 'ProfileMyReview(id: ${_this.id}, rating: ${_this.rating}, comment: ${_this.comment}, createdLabel: ${_this.createdLabel}, restaurant: ${_this.restaurant})';
}


}

/// @nodoc
abstract mixin class $ProfileMyReviewCopyWith<$Res>  {
  factory $ProfileMyReviewCopyWith(ProfileMyReview value, $Res Function(ProfileMyReview) _then) = _$ProfileMyReviewCopyWithImpl;
@useResult
$Res call({
 String id, int rating, String? comment,@JsonKey(name: 'created_label') String? createdLabel, ProfileReviewRestaurant restaurant
});


$ProfileReviewRestaurantCopyWith<$Res> get restaurant;

}
/// @nodoc
class _$ProfileMyReviewCopyWithImpl<$Res>
    implements $ProfileMyReviewCopyWith<$Res> {
  _$ProfileMyReviewCopyWithImpl(this._self, this._then);

  final ProfileMyReview _self;
  final $Res Function(ProfileMyReview) _then;

/// Create a copy of ProfileMyReview
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? rating = null,Object? comment = freezed,Object? createdLabel = freezed,Object? restaurant = null,}) {
  return _then(ProfileMyReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,createdLabel: freezed == createdLabel ? _self.createdLabel : createdLabel // ignore: cast_nullable_to_non_nullable
as String?,restaurant: null == restaurant ? _self.restaurant : restaurant // ignore: cast_nullable_to_non_nullable
as ProfileReviewRestaurant,
  ));
}
/// Create a copy of ProfileMyReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileReviewRestaurantCopyWith<$Res> get restaurant {
  
  return $ProfileReviewRestaurantCopyWith<$Res>(_self.restaurant, (value) {
    return _then(_self.copyWith(restaurant: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileMyReview].
extension ProfileMyReviewPatterns on ProfileMyReview {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileMyReview value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileMyReview() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileMyReview value)  $default,){
final _that = this;
switch (_that) {
case _ProfileMyReview():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileMyReview value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileMyReview() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  int rating,  String? comment, @JsonKey(name: 'created_label')  String? createdLabel,  ProfileReviewRestaurant restaurant)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileMyReview() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.createdLabel,_that.restaurant);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  int rating,  String? comment, @JsonKey(name: 'created_label')  String? createdLabel,  ProfileReviewRestaurant restaurant)  $default,) {final _that = this;
switch (_that) {
case _ProfileMyReview():
return $default(_that.id,_that.rating,_that.comment,_that.createdLabel,_that.restaurant);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  int rating,  String? comment, @JsonKey(name: 'created_label')  String? createdLabel,  ProfileReviewRestaurant restaurant)?  $default,) {final _that = this;
switch (_that) {
case _ProfileMyReview() when $default != null:
return $default(_that.id,_that.rating,_that.comment,_that.createdLabel,_that.restaurant);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileMyReview implements ProfileMyReview {
  const _ProfileMyReview({required this.id, required this.rating, this.comment, @JsonKey(name: 'created_label') this.createdLabel, required this.restaurant});
  factory _ProfileMyReview.fromJson(Map<String, dynamic> json) => _$ProfileMyReviewFromJson(json);

@override final  String id;
@override final  int rating;
@override final  String? comment;
@override@JsonKey(name: 'created_label') final  String? createdLabel;
@override final  ProfileReviewRestaurant restaurant;

/// Create a copy of ProfileMyReview
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileMyReviewCopyWith<_ProfileMyReview> get copyWith => __$ProfileMyReviewCopyWithImpl<_ProfileMyReview>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileMyReviewToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileMyReview&&(identical(other.id, id) || other.id == id)&&(identical(other.rating, rating) || other.rating == rating)&&(identical(other.comment, comment) || other.comment == comment)&&(identical(other.createdLabel, createdLabel) || other.createdLabel == createdLabel)&&(identical(other.restaurant, restaurant) || other.restaurant == restaurant));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,rating,comment,createdLabel,restaurant);
}

@override
String toString() {
    return 'ProfileMyReview(id: $id, rating: $rating, comment: $comment, createdLabel: $createdLabel, restaurant: $restaurant)';
}


}

/// @nodoc
abstract mixin class _$ProfileMyReviewCopyWith<$Res> implements $ProfileMyReviewCopyWith<$Res> {
  factory _$ProfileMyReviewCopyWith(_ProfileMyReview value, $Res Function(_ProfileMyReview) _then) = __$ProfileMyReviewCopyWithImpl;
@override @useResult
$Res call({
 String id, int rating, String? comment,@JsonKey(name: 'created_label') String? createdLabel, ProfileReviewRestaurant restaurant
});


@override $ProfileReviewRestaurantCopyWith<$Res> get restaurant;

}
/// @nodoc
class __$ProfileMyReviewCopyWithImpl<$Res>
    implements _$ProfileMyReviewCopyWith<$Res> {
  __$ProfileMyReviewCopyWithImpl(this._self, this._then);

  final _ProfileMyReview _self;
  final $Res Function(_ProfileMyReview) _then;

/// Create a copy of ProfileMyReview
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? rating = null,Object? comment = freezed,Object? createdLabel = freezed,Object? restaurant = null,}) {
  return _then(_ProfileMyReview(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,rating: null == rating ? _self.rating : rating // ignore: cast_nullable_to_non_nullable
as int,comment: freezed == comment ? _self.comment : comment // ignore: cast_nullable_to_non_nullable
as String?,createdLabel: freezed == createdLabel ? _self.createdLabel : createdLabel // ignore: cast_nullable_to_non_nullable
as String?,restaurant: null == restaurant ? _self.restaurant : restaurant // ignore: cast_nullable_to_non_nullable
as ProfileReviewRestaurant,
  ));
}

/// Create a copy of ProfileMyReview
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ProfileReviewRestaurantCopyWith<$Res> get restaurant {
  
  return $ProfileReviewRestaurantCopyWith<$Res>(_self.restaurant, (value) {
    return _then(_self.copyWith(restaurant: value));
  });
}
}


/// @nodoc
mixin _$ProfileResponse {

 SessionUser get user;@JsonKey(name: 'review_count') int get reviewCount;@JsonKey(name: 'my_reviews') List<ProfileMyReview> get myReviews;
/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ProfileResponseCopyWith<ProfileResponse> get copyWith => _$ProfileResponseCopyWithImpl<ProfileResponse>(this as ProfileResponse, _$identity);

  /// Serializes this ProfileResponse to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as ProfileResponse;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ProfileResponse&&(identical(other.user, _this.user) || other.user == _this.user)&&(identical(other.reviewCount, _this.reviewCount) || other.reviewCount == _this.reviewCount)&&const DeepCollectionEquality().equals(other.myReviews, _this.myReviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as ProfileResponse;
  return Object.hash(runtimeType,_this.user,_this.reviewCount,const DeepCollectionEquality().hash(_this.myReviews));
}

@override
String toString() {
  final _this = this as ProfileResponse;
  return 'ProfileResponse(user: ${_this.user}, reviewCount: ${_this.reviewCount}, myReviews: ${_this.myReviews})';
}


}

/// @nodoc
abstract mixin class $ProfileResponseCopyWith<$Res>  {
  factory $ProfileResponseCopyWith(ProfileResponse value, $Res Function(ProfileResponse) _then) = _$ProfileResponseCopyWithImpl;
@useResult
$Res call({
 SessionUser user,@JsonKey(name: 'review_count') int reviewCount,@JsonKey(name: 'my_reviews') List<ProfileMyReview> myReviews
});


$SessionUserCopyWith<$Res> get user;

}
/// @nodoc
class _$ProfileResponseCopyWithImpl<$Res>
    implements $ProfileResponseCopyWith<$Res> {
  _$ProfileResponseCopyWithImpl(this._self, this._then);

  final ProfileResponse _self;
  final $Res Function(ProfileResponse) _then;

/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? user = null,Object? reviewCount = null,Object? myReviews = null,}) {
  return _then(ProfileResponse(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as SessionUser,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,myReviews: null == myReviews ? _self.myReviews : myReviews // ignore: cast_nullable_to_non_nullable
as List<ProfileMyReview>,
  ));
}
/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionUserCopyWith<$Res> get user {
  
  return $SessionUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}


/// Adds pattern-matching-related methods to [ProfileResponse].
extension ProfileResponsePatterns on ProfileResponse {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ProfileResponse value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ProfileResponse value)  $default,){
final _that = this;
switch (_that) {
case _ProfileResponse():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ProfileResponse value)?  $default,){
final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( SessionUser user, @JsonKey(name: 'review_count')  int reviewCount, @JsonKey(name: 'my_reviews')  List<ProfileMyReview> myReviews)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
return $default(_that.user,_that.reviewCount,_that.myReviews);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( SessionUser user, @JsonKey(name: 'review_count')  int reviewCount, @JsonKey(name: 'my_reviews')  List<ProfileMyReview> myReviews)  $default,) {final _that = this;
switch (_that) {
case _ProfileResponse():
return $default(_that.user,_that.reviewCount,_that.myReviews);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( SessionUser user, @JsonKey(name: 'review_count')  int reviewCount, @JsonKey(name: 'my_reviews')  List<ProfileMyReview> myReviews)?  $default,) {final _that = this;
switch (_that) {
case _ProfileResponse() when $default != null:
return $default(_that.user,_that.reviewCount,_that.myReviews);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _ProfileResponse implements ProfileResponse {
  const _ProfileResponse({required this.user, @JsonKey(name: 'review_count') required this.reviewCount, @JsonKey(name: 'my_reviews')  List<ProfileMyReview> myReviews = const []}): _myReviews = myReviews;
  factory _ProfileResponse.fromJson(Map<String, dynamic> json) => _$ProfileResponseFromJson(json);

@override final  SessionUser user;
@override@JsonKey(name: 'review_count') final  int reviewCount;
 final  List<ProfileMyReview> _myReviews;
@override@JsonKey(name: 'my_reviews') List<ProfileMyReview> get myReviews {
  if (_myReviews is EqualUnmodifiableListView) return _myReviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_myReviews);
}


/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ProfileResponseCopyWith<_ProfileResponse> get copyWith => __$ProfileResponseCopyWithImpl<_ProfileResponse>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$ProfileResponseToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _ProfileResponse&&(identical(other.user, user) || other.user == user)&&(identical(other.reviewCount, reviewCount) || other.reviewCount == reviewCount)&&const DeepCollectionEquality().equals(other.myReviews, _myReviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,user,reviewCount,const DeepCollectionEquality().hash(_myReviews));
}

@override
String toString() {
    return 'ProfileResponse(user: $user, reviewCount: $reviewCount, myReviews: $myReviews)';
}


}

/// @nodoc
abstract mixin class _$ProfileResponseCopyWith<$Res> implements $ProfileResponseCopyWith<$Res> {
  factory _$ProfileResponseCopyWith(_ProfileResponse value, $Res Function(_ProfileResponse) _then) = __$ProfileResponseCopyWithImpl;
@override @useResult
$Res call({
 SessionUser user,@JsonKey(name: 'review_count') int reviewCount,@JsonKey(name: 'my_reviews') List<ProfileMyReview> myReviews
});


@override $SessionUserCopyWith<$Res> get user;

}
/// @nodoc
class __$ProfileResponseCopyWithImpl<$Res>
    implements _$ProfileResponseCopyWith<$Res> {
  __$ProfileResponseCopyWithImpl(this._self, this._then);

  final _ProfileResponse _self;
  final $Res Function(_ProfileResponse) _then;

/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? user = null,Object? reviewCount = null,Object? myReviews = null,}) {
  return _then(_ProfileResponse(
user: null == user ? _self.user : user // ignore: cast_nullable_to_non_nullable
as SessionUser,reviewCount: null == reviewCount ? _self.reviewCount : reviewCount // ignore: cast_nullable_to_non_nullable
as int,myReviews: null == myReviews ? _self._myReviews : myReviews // ignore: cast_nullable_to_non_nullable
as List<ProfileMyReview>,
  ));
}

/// Create a copy of ProfileResponse
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$SessionUserCopyWith<$Res> get user {
  
  return $SessionUserCopyWith<$Res>(_self.user, (value) {
    return _then(_self.copyWith(user: value));
  });
}
}

// dart format on
