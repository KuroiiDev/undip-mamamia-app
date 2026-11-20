// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_detail_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$RestaurantDetailModel {

 String get id; String get name; String? get description;@JsonKey(name: 'cover_url') String? get coverUrl; List<String> get photos;@JsonKey(name: 'rating_label') String get ratingLabel;@JsonKey(name: 'rating_count') int get ratingCount;@JsonKey(name: 'price_label') String get priceLabel;@JsonKey(name: 'is_open_now') bool get isOpenNow; String get address; String? get phone; double get lat; double get lng; List<CategoryModel> get categories;@JsonKey(name: 'opening_hours') List<OpeningHourModel> get openingHours;@JsonKey(name: 'is_favorited') bool get isFavorited;@JsonKey(name: 'my_review') ReviewModel? get myReview;@JsonKey(name: 'top_reviews') List<ReviewModel> get topReviews;
/// Create a copy of RestaurantDetailModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$RestaurantDetailModelCopyWith<RestaurantDetailModel> get copyWith => _$RestaurantDetailModelCopyWithImpl<RestaurantDetailModel>(this as RestaurantDetailModel, _$identity);

  /// Serializes this RestaurantDetailModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as RestaurantDetailModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is RestaurantDetailModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.coverUrl, _this.coverUrl) || other.coverUrl == _this.coverUrl)&&const DeepCollectionEquality().equals(other.photos, _this.photos)&&(identical(other.ratingLabel, _this.ratingLabel) || other.ratingLabel == _this.ratingLabel)&&(identical(other.ratingCount, _this.ratingCount) || other.ratingCount == _this.ratingCount)&&(identical(other.priceLabel, _this.priceLabel) || other.priceLabel == _this.priceLabel)&&(identical(other.isOpenNow, _this.isOpenNow) || other.isOpenNow == _this.isOpenNow)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.lat, _this.lat) || other.lat == _this.lat)&&(identical(other.lng, _this.lng) || other.lng == _this.lng)&&const DeepCollectionEquality().equals(other.categories, _this.categories)&&const DeepCollectionEquality().equals(other.openingHours, _this.openingHours)&&(identical(other.isFavorited, _this.isFavorited) || other.isFavorited == _this.isFavorited)&&(identical(other.myReview, _this.myReview) || other.myReview == _this.myReview)&&const DeepCollectionEquality().equals(other.topReviews, _this.topReviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as RestaurantDetailModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.description,_this.coverUrl,const DeepCollectionEquality().hash(_this.photos),_this.ratingLabel,_this.ratingCount,_this.priceLabel,_this.isOpenNow,_this.address,_this.phone,_this.lat,_this.lng,const DeepCollectionEquality().hash(_this.categories),const DeepCollectionEquality().hash(_this.openingHours),_this.isFavorited,_this.myReview,const DeepCollectionEquality().hash(_this.topReviews));
}

@override
String toString() {
  final _this = this as RestaurantDetailModel;
  return 'RestaurantDetailModel(id: ${_this.id}, name: ${_this.name}, description: ${_this.description}, coverUrl: ${_this.coverUrl}, photos: ${_this.photos}, ratingLabel: ${_this.ratingLabel}, ratingCount: ${_this.ratingCount}, priceLabel: ${_this.priceLabel}, isOpenNow: ${_this.isOpenNow}, address: ${_this.address}, phone: ${_this.phone}, lat: ${_this.lat}, lng: ${_this.lng}, categories: ${_this.categories}, openingHours: ${_this.openingHours}, isFavorited: ${_this.isFavorited}, myReview: ${_this.myReview}, topReviews: ${_this.topReviews})';
}


}

/// @nodoc
abstract mixin class $RestaurantDetailModelCopyWith<$Res>  {
  factory $RestaurantDetailModelCopyWith(RestaurantDetailModel value, $Res Function(RestaurantDetailModel) _then) = _$RestaurantDetailModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description,@JsonKey(name: 'cover_url') String? coverUrl, List<String> photos,@JsonKey(name: 'rating_label') String ratingLabel,@JsonKey(name: 'rating_count') int ratingCount,@JsonKey(name: 'price_label') String priceLabel,@JsonKey(name: 'is_open_now') bool isOpenNow, String address, String? phone, double lat, double lng, List<CategoryModel> categories,@JsonKey(name: 'opening_hours') List<OpeningHourModel> openingHours,@JsonKey(name: 'is_favorited') bool isFavorited,@JsonKey(name: 'my_review') ReviewModel? myReview,@JsonKey(name: 'top_reviews') List<ReviewModel> topReviews
});


$ReviewModelCopyWith<$Res>? get myReview;

}
/// @nodoc
class _$RestaurantDetailModelCopyWithImpl<$Res>
    implements $RestaurantDetailModelCopyWith<$Res> {
  _$RestaurantDetailModelCopyWithImpl(this._self, this._then);

  final RestaurantDetailModel _self;
  final $Res Function(RestaurantDetailModel) _then;

/// Create a copy of RestaurantDetailModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? coverUrl = freezed,Object? photos = null,Object? ratingLabel = null,Object? ratingCount = null,Object? priceLabel = null,Object? isOpenNow = null,Object? address = null,Object? phone = freezed,Object? lat = null,Object? lng = null,Object? categories = null,Object? openingHours = null,Object? isFavorited = null,Object? myReview = freezed,Object? topReviews = null,}) {
  return _then(RestaurantDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self.photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,ratingLabel: null == ratingLabel ? _self.ratingLabel : ratingLabel // ignore: cast_nullable_to_non_nullable
as String,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,priceLabel: null == priceLabel ? _self.priceLabel : priceLabel // ignore: cast_nullable_to_non_nullable
as String,isOpenNow: null == isOpenNow ? _self.isOpenNow : isOpenNow // ignore: cast_nullable_to_non_nullable
as bool,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,openingHours: null == openingHours ? _self.openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as List<OpeningHourModel>,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,myReview: freezed == myReview ? _self.myReview : myReview // ignore: cast_nullable_to_non_nullable
as ReviewModel?,topReviews: null == topReviews ? _self.topReviews : topReviews // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,
  ));
}
/// Create a copy of RestaurantDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewModelCopyWith<$Res>? get myReview {
    if (_self.myReview == null) {
    return null;
  }

  return $ReviewModelCopyWith<$Res>(_self.myReview!, (value) {
    return _then(_self.copyWith(myReview: value));
  });
}
}


/// Adds pattern-matching-related methods to [RestaurantDetailModel].
extension RestaurantDetailModelPatterns on RestaurantDetailModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _RestaurantDetailModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _RestaurantDetailModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _RestaurantDetailModel value)  $default,){
final _that = this;
switch (_that) {
case _RestaurantDetailModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _RestaurantDetailModel value)?  $default,){
final _that = this;
switch (_that) {
case _RestaurantDetailModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description, @JsonKey(name: 'cover_url')  String? coverUrl,  List<String> photos, @JsonKey(name: 'rating_label')  String ratingLabel, @JsonKey(name: 'rating_count')  int ratingCount, @JsonKey(name: 'price_label')  String priceLabel, @JsonKey(name: 'is_open_now')  bool isOpenNow,  String address,  String? phone,  double lat,  double lng,  List<CategoryModel> categories, @JsonKey(name: 'opening_hours')  List<OpeningHourModel> openingHours, @JsonKey(name: 'is_favorited')  bool isFavorited, @JsonKey(name: 'my_review')  ReviewModel? myReview, @JsonKey(name: 'top_reviews')  List<ReviewModel> topReviews)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _RestaurantDetailModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.coverUrl,_that.photos,_that.ratingLabel,_that.ratingCount,_that.priceLabel,_that.isOpenNow,_that.address,_that.phone,_that.lat,_that.lng,_that.categories,_that.openingHours,_that.isFavorited,_that.myReview,_that.topReviews);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description, @JsonKey(name: 'cover_url')  String? coverUrl,  List<String> photos, @JsonKey(name: 'rating_label')  String ratingLabel, @JsonKey(name: 'rating_count')  int ratingCount, @JsonKey(name: 'price_label')  String priceLabel, @JsonKey(name: 'is_open_now')  bool isOpenNow,  String address,  String? phone,  double lat,  double lng,  List<CategoryModel> categories, @JsonKey(name: 'opening_hours')  List<OpeningHourModel> openingHours, @JsonKey(name: 'is_favorited')  bool isFavorited, @JsonKey(name: 'my_review')  ReviewModel? myReview, @JsonKey(name: 'top_reviews')  List<ReviewModel> topReviews)  $default,) {final _that = this;
switch (_that) {
case _RestaurantDetailModel():
return $default(_that.id,_that.name,_that.description,_that.coverUrl,_that.photos,_that.ratingLabel,_that.ratingCount,_that.priceLabel,_that.isOpenNow,_that.address,_that.phone,_that.lat,_that.lng,_that.categories,_that.openingHours,_that.isFavorited,_that.myReview,_that.topReviews);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description, @JsonKey(name: 'cover_url')  String? coverUrl,  List<String> photos, @JsonKey(name: 'rating_label')  String ratingLabel, @JsonKey(name: 'rating_count')  int ratingCount, @JsonKey(name: 'price_label')  String priceLabel, @JsonKey(name: 'is_open_now')  bool isOpenNow,  String address,  String? phone,  double lat,  double lng,  List<CategoryModel> categories, @JsonKey(name: 'opening_hours')  List<OpeningHourModel> openingHours, @JsonKey(name: 'is_favorited')  bool isFavorited, @JsonKey(name: 'my_review')  ReviewModel? myReview, @JsonKey(name: 'top_reviews')  List<ReviewModel> topReviews)?  $default,) {final _that = this;
switch (_that) {
case _RestaurantDetailModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.coverUrl,_that.photos,_that.ratingLabel,_that.ratingCount,_that.priceLabel,_that.isOpenNow,_that.address,_that.phone,_that.lat,_that.lng,_that.categories,_that.openingHours,_that.isFavorited,_that.myReview,_that.topReviews);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _RestaurantDetailModel implements RestaurantDetailModel {
  const _RestaurantDetailModel({required this.id, required this.name, this.description, @JsonKey(name: 'cover_url') this.coverUrl,  List<String> photos = const [], @JsonKey(name: 'rating_label') required this.ratingLabel, @JsonKey(name: 'rating_count') required this.ratingCount, @JsonKey(name: 'price_label') required this.priceLabel, @JsonKey(name: 'is_open_now') required this.isOpenNow, required this.address, this.phone, required this.lat, required this.lng,  List<CategoryModel> categories = const [], @JsonKey(name: 'opening_hours')  List<OpeningHourModel> openingHours = const [], @JsonKey(name: 'is_favorited') required this.isFavorited, @JsonKey(name: 'my_review') this.myReview, @JsonKey(name: 'top_reviews')  List<ReviewModel> topReviews = const []}): _photos = photos,_categories = categories,_openingHours = openingHours,_topReviews = topReviews;
  factory _RestaurantDetailModel.fromJson(Map<String, dynamic> json) => _$RestaurantDetailModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? description;
@override@JsonKey(name: 'cover_url') final  String? coverUrl;
 final  List<String> _photos;
@override@JsonKey() List<String> get photos {
  if (_photos is EqualUnmodifiableListView) return _photos;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_photos);
}

@override@JsonKey(name: 'rating_label') final  String ratingLabel;
@override@JsonKey(name: 'rating_count') final  int ratingCount;
@override@JsonKey(name: 'price_label') final  String priceLabel;
@override@JsonKey(name: 'is_open_now') final  bool isOpenNow;
@override final  String address;
@override final  String? phone;
@override final  double lat;
@override final  double lng;
 final  List<CategoryModel> _categories;
@override@JsonKey() List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<OpeningHourModel> _openingHours;
@override@JsonKey(name: 'opening_hours') List<OpeningHourModel> get openingHours {
  if (_openingHours is EqualUnmodifiableListView) return _openingHours;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_openingHours);
}

@override@JsonKey(name: 'is_favorited') final  bool isFavorited;
@override@JsonKey(name: 'my_review') final  ReviewModel? myReview;
 final  List<ReviewModel> _topReviews;
@override@JsonKey(name: 'top_reviews') List<ReviewModel> get topReviews {
  if (_topReviews is EqualUnmodifiableListView) return _topReviews;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_topReviews);
}


/// Create a copy of RestaurantDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$RestaurantDetailModelCopyWith<_RestaurantDetailModel> get copyWith => __$RestaurantDetailModelCopyWithImpl<_RestaurantDetailModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$RestaurantDetailModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _RestaurantDetailModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&const DeepCollectionEquality().equals(other.photos, _photos)&&(identical(other.ratingLabel, ratingLabel) || other.ratingLabel == ratingLabel)&&(identical(other.ratingCount, ratingCount) || other.ratingCount == ratingCount)&&(identical(other.priceLabel, priceLabel) || other.priceLabel == priceLabel)&&(identical(other.isOpenNow, isOpenNow) || other.isOpenNow == isOpenNow)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&const DeepCollectionEquality().equals(other.categories, _categories)&&const DeepCollectionEquality().equals(other.openingHours, _openingHours)&&(identical(other.isFavorited, isFavorited) || other.isFavorited == isFavorited)&&(identical(other.myReview, myReview) || other.myReview == myReview)&&const DeepCollectionEquality().equals(other.topReviews, _topReviews));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,description,coverUrl,const DeepCollectionEquality().hash(_photos),ratingLabel,ratingCount,priceLabel,isOpenNow,address,phone,lat,lng,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_openingHours),isFavorited,myReview,const DeepCollectionEquality().hash(_topReviews));
}

@override
String toString() {
    return 'RestaurantDetailModel(id: $id, name: $name, description: $description, coverUrl: $coverUrl, photos: $photos, ratingLabel: $ratingLabel, ratingCount: $ratingCount, priceLabel: $priceLabel, isOpenNow: $isOpenNow, address: $address, phone: $phone, lat: $lat, lng: $lng, categories: $categories, openingHours: $openingHours, isFavorited: $isFavorited, myReview: $myReview, topReviews: $topReviews)';
}


}

/// @nodoc
abstract mixin class _$RestaurantDetailModelCopyWith<$Res> implements $RestaurantDetailModelCopyWith<$Res> {
  factory _$RestaurantDetailModelCopyWith(_RestaurantDetailModel value, $Res Function(_RestaurantDetailModel) _then) = __$RestaurantDetailModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description,@JsonKey(name: 'cover_url') String? coverUrl, List<String> photos,@JsonKey(name: 'rating_label') String ratingLabel,@JsonKey(name: 'rating_count') int ratingCount,@JsonKey(name: 'price_label') String priceLabel,@JsonKey(name: 'is_open_now') bool isOpenNow, String address, String? phone, double lat, double lng, List<CategoryModel> categories,@JsonKey(name: 'opening_hours') List<OpeningHourModel> openingHours,@JsonKey(name: 'is_favorited') bool isFavorited,@JsonKey(name: 'my_review') ReviewModel? myReview,@JsonKey(name: 'top_reviews') List<ReviewModel> topReviews
});


@override $ReviewModelCopyWith<$Res>? get myReview;

}
/// @nodoc
class __$RestaurantDetailModelCopyWithImpl<$Res>
    implements _$RestaurantDetailModelCopyWith<$Res> {
  __$RestaurantDetailModelCopyWithImpl(this._self, this._then);

  final _RestaurantDetailModel _self;
  final $Res Function(_RestaurantDetailModel) _then;

/// Create a copy of RestaurantDetailModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? coverUrl = freezed,Object? photos = null,Object? ratingLabel = null,Object? ratingCount = null,Object? priceLabel = null,Object? isOpenNow = null,Object? address = null,Object? phone = freezed,Object? lat = null,Object? lng = null,Object? categories = null,Object? openingHours = null,Object? isFavorited = null,Object? myReview = freezed,Object? topReviews = null,}) {
  return _then(_RestaurantDetailModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,photos: null == photos ? _self._photos : photos // ignore: cast_nullable_to_non_nullable
as List<String>,ratingLabel: null == ratingLabel ? _self.ratingLabel : ratingLabel // ignore: cast_nullable_to_non_nullable
as String,ratingCount: null == ratingCount ? _self.ratingCount : ratingCount // ignore: cast_nullable_to_non_nullable
as int,priceLabel: null == priceLabel ? _self.priceLabel : priceLabel // ignore: cast_nullable_to_non_nullable
as String,isOpenNow: null == isOpenNow ? _self.isOpenNow : isOpenNow // ignore: cast_nullable_to_non_nullable
as bool,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,openingHours: null == openingHours ? _self._openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as List<OpeningHourModel>,isFavorited: null == isFavorited ? _self.isFavorited : isFavorited // ignore: cast_nullable_to_non_nullable
as bool,myReview: freezed == myReview ? _self.myReview : myReview // ignore: cast_nullable_to_non_nullable
as ReviewModel?,topReviews: null == topReviews ? _self._topReviews : topReviews // ignore: cast_nullable_to_non_nullable
as List<ReviewModel>,
  ));
}

/// Create a copy of RestaurantDetailModel
/// with the given fields replaced by the non-null parameter values.
@override
@pragma('vm:prefer-inline')
$ReviewModelCopyWith<$Res>? get myReview {
    if (_self.myReview == null) {
    return null;
  }

  return $ReviewModelCopyWith<$Res>(_self.myReview!, (value) {
    return _then(_self.copyWith(myReview: value));
  });
}
}

// dart format on
