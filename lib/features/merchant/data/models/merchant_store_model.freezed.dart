// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_store_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MerchantOpeningHourInput {

@JsonKey(name: 'day_of_week') int get dayOfWeek; String? get day;@JsonKey(name: 'open_time') String? get openTime;@JsonKey(name: 'close_time') String? get closeTime;@JsonKey(name: 'is_closed') bool get isClosed;
/// Create a copy of MerchantOpeningHourInput
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantOpeningHourInputCopyWith<MerchantOpeningHourInput> get copyWith => _$MerchantOpeningHourInputCopyWithImpl<MerchantOpeningHourInput>(this as MerchantOpeningHourInput, _$identity);

  /// Serializes this MerchantOpeningHourInput to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MerchantOpeningHourInput;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantOpeningHourInput&&(identical(other.dayOfWeek, _this.dayOfWeek) || other.dayOfWeek == _this.dayOfWeek)&&(identical(other.day, _this.day) || other.day == _this.day)&&(identical(other.openTime, _this.openTime) || other.openTime == _this.openTime)&&(identical(other.closeTime, _this.closeTime) || other.closeTime == _this.closeTime)&&(identical(other.isClosed, _this.isClosed) || other.isClosed == _this.isClosed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MerchantOpeningHourInput;
  return Object.hash(runtimeType,_this.dayOfWeek,_this.day,_this.openTime,_this.closeTime,_this.isClosed);
}

@override
String toString() {
  final _this = this as MerchantOpeningHourInput;
  return 'MerchantOpeningHourInput(dayOfWeek: ${_this.dayOfWeek}, day: ${_this.day}, openTime: ${_this.openTime}, closeTime: ${_this.closeTime}, isClosed: ${_this.isClosed})';
}


}

/// @nodoc
abstract mixin class $MerchantOpeningHourInputCopyWith<$Res>  {
  factory $MerchantOpeningHourInputCopyWith(MerchantOpeningHourInput value, $Res Function(MerchantOpeningHourInput) _then) = _$MerchantOpeningHourInputCopyWithImpl;
@useResult
$Res call({
@JsonKey(name: 'day_of_week') int dayOfWeek, String? day,@JsonKey(name: 'open_time') String? openTime,@JsonKey(name: 'close_time') String? closeTime,@JsonKey(name: 'is_closed') bool isClosed
});




}
/// @nodoc
class _$MerchantOpeningHourInputCopyWithImpl<$Res>
    implements $MerchantOpeningHourInputCopyWith<$Res> {
  _$MerchantOpeningHourInputCopyWithImpl(this._self, this._then);

  final MerchantOpeningHourInput _self;
  final $Res Function(MerchantOpeningHourInput) _then;

/// Create a copy of MerchantOpeningHourInput
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? dayOfWeek = null,Object? day = freezed,Object? openTime = freezed,Object? closeTime = freezed,Object? isClosed = null,}) {
  return _then(MerchantOpeningHourInput(
dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as int,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String?,openTime: freezed == openTime ? _self.openTime : openTime // ignore: cast_nullable_to_non_nullable
as String?,closeTime: freezed == closeTime ? _self.closeTime : closeTime // ignore: cast_nullable_to_non_nullable
as String?,isClosed: null == isClosed ? _self.isClosed : isClosed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantOpeningHourInput].
extension MerchantOpeningHourInputPatterns on MerchantOpeningHourInput {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantOpeningHourInput value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantOpeningHourInput() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantOpeningHourInput value)  $default,){
final _that = this;
switch (_that) {
case _MerchantOpeningHourInput():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantOpeningHourInput value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantOpeningHourInput() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function(@JsonKey(name: 'day_of_week')  int dayOfWeek,  String? day, @JsonKey(name: 'open_time')  String? openTime, @JsonKey(name: 'close_time')  String? closeTime, @JsonKey(name: 'is_closed')  bool isClosed)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantOpeningHourInput() when $default != null:
return $default(_that.dayOfWeek,_that.day,_that.openTime,_that.closeTime,_that.isClosed);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function(@JsonKey(name: 'day_of_week')  int dayOfWeek,  String? day, @JsonKey(name: 'open_time')  String? openTime, @JsonKey(name: 'close_time')  String? closeTime, @JsonKey(name: 'is_closed')  bool isClosed)  $default,) {final _that = this;
switch (_that) {
case _MerchantOpeningHourInput():
return $default(_that.dayOfWeek,_that.day,_that.openTime,_that.closeTime,_that.isClosed);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function(@JsonKey(name: 'day_of_week')  int dayOfWeek,  String? day, @JsonKey(name: 'open_time')  String? openTime, @JsonKey(name: 'close_time')  String? closeTime, @JsonKey(name: 'is_closed')  bool isClosed)?  $default,) {final _that = this;
switch (_that) {
case _MerchantOpeningHourInput() when $default != null:
return $default(_that.dayOfWeek,_that.day,_that.openTime,_that.closeTime,_that.isClosed);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantOpeningHourInput implements MerchantOpeningHourInput {
  const _MerchantOpeningHourInput({@JsonKey(name: 'day_of_week') required this.dayOfWeek, this.day, @JsonKey(name: 'open_time') this.openTime, @JsonKey(name: 'close_time') this.closeTime, @JsonKey(name: 'is_closed') this.isClosed = false});
  factory _MerchantOpeningHourInput.fromJson(Map<String, dynamic> json) => _$MerchantOpeningHourInputFromJson(json);

@override@JsonKey(name: 'day_of_week') final  int dayOfWeek;
@override final  String? day;
@override@JsonKey(name: 'open_time') final  String? openTime;
@override@JsonKey(name: 'close_time') final  String? closeTime;
@override@JsonKey(name: 'is_closed') final  bool isClosed;

/// Create a copy of MerchantOpeningHourInput
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantOpeningHourInputCopyWith<_MerchantOpeningHourInput> get copyWith => __$MerchantOpeningHourInputCopyWithImpl<_MerchantOpeningHourInput>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantOpeningHourInputToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantOpeningHourInput&&(identical(other.dayOfWeek, dayOfWeek) || other.dayOfWeek == dayOfWeek)&&(identical(other.day, day) || other.day == day)&&(identical(other.openTime, openTime) || other.openTime == openTime)&&(identical(other.closeTime, closeTime) || other.closeTime == closeTime)&&(identical(other.isClosed, isClosed) || other.isClosed == isClosed));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,dayOfWeek,day,openTime,closeTime,isClosed);
}

@override
String toString() {
    return 'MerchantOpeningHourInput(dayOfWeek: $dayOfWeek, day: $day, openTime: $openTime, closeTime: $closeTime, isClosed: $isClosed)';
}


}

/// @nodoc
abstract mixin class _$MerchantOpeningHourInputCopyWith<$Res> implements $MerchantOpeningHourInputCopyWith<$Res> {
  factory _$MerchantOpeningHourInputCopyWith(_MerchantOpeningHourInput value, $Res Function(_MerchantOpeningHourInput) _then) = __$MerchantOpeningHourInputCopyWithImpl;
@override @useResult
$Res call({
@JsonKey(name: 'day_of_week') int dayOfWeek, String? day,@JsonKey(name: 'open_time') String? openTime,@JsonKey(name: 'close_time') String? closeTime,@JsonKey(name: 'is_closed') bool isClosed
});




}
/// @nodoc
class __$MerchantOpeningHourInputCopyWithImpl<$Res>
    implements _$MerchantOpeningHourInputCopyWith<$Res> {
  __$MerchantOpeningHourInputCopyWithImpl(this._self, this._then);

  final _MerchantOpeningHourInput _self;
  final $Res Function(_MerchantOpeningHourInput) _then;

/// Create a copy of MerchantOpeningHourInput
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? dayOfWeek = null,Object? day = freezed,Object? openTime = freezed,Object? closeTime = freezed,Object? isClosed = null,}) {
  return _then(_MerchantOpeningHourInput(
dayOfWeek: null == dayOfWeek ? _self.dayOfWeek : dayOfWeek // ignore: cast_nullable_to_non_nullable
as int,day: freezed == day ? _self.day : day // ignore: cast_nullable_to_non_nullable
as String?,openTime: freezed == openTime ? _self.openTime : openTime // ignore: cast_nullable_to_non_nullable
as String?,closeTime: freezed == closeTime ? _self.closeTime : closeTime // ignore: cast_nullable_to_non_nullable
as String?,isClosed: null == isClosed ? _self.isClosed : isClosed // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$MerchantStoreModel {

 String get id; String get name; String? get description; String get address; String? get phone; double get lat; double get lng;@JsonKey(name: 'price_level') int get priceLevel; String get status;@JsonKey(name: 'status_reason') String? get statusReason;@JsonKey(name: 'cover_url') String? get coverUrl; List<CategoryModel> get categories;@JsonKey(name: 'opening_hours') List<MerchantOpeningHourInput> get openingHours;
/// Create a copy of MerchantStoreModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantStoreModelCopyWith<MerchantStoreModel> get copyWith => _$MerchantStoreModelCopyWithImpl<MerchantStoreModel>(this as MerchantStoreModel, _$identity);

  /// Serializes this MerchantStoreModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MerchantStoreModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantStoreModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.address, _this.address) || other.address == _this.address)&&(identical(other.phone, _this.phone) || other.phone == _this.phone)&&(identical(other.lat, _this.lat) || other.lat == _this.lat)&&(identical(other.lng, _this.lng) || other.lng == _this.lng)&&(identical(other.priceLevel, _this.priceLevel) || other.priceLevel == _this.priceLevel)&&(identical(other.status, _this.status) || other.status == _this.status)&&(identical(other.statusReason, _this.statusReason) || other.statusReason == _this.statusReason)&&(identical(other.coverUrl, _this.coverUrl) || other.coverUrl == _this.coverUrl)&&const DeepCollectionEquality().equals(other.categories, _this.categories)&&const DeepCollectionEquality().equals(other.openingHours, _this.openingHours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MerchantStoreModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.description,_this.address,_this.phone,_this.lat,_this.lng,_this.priceLevel,_this.status,_this.statusReason,_this.coverUrl,const DeepCollectionEquality().hash(_this.categories),const DeepCollectionEquality().hash(_this.openingHours));
}

@override
String toString() {
  final _this = this as MerchantStoreModel;
  return 'MerchantStoreModel(id: ${_this.id}, name: ${_this.name}, description: ${_this.description}, address: ${_this.address}, phone: ${_this.phone}, lat: ${_this.lat}, lng: ${_this.lng}, priceLevel: ${_this.priceLevel}, status: ${_this.status}, statusReason: ${_this.statusReason}, coverUrl: ${_this.coverUrl}, categories: ${_this.categories}, openingHours: ${_this.openingHours})';
}


}

/// @nodoc
abstract mixin class $MerchantStoreModelCopyWith<$Res>  {
  factory $MerchantStoreModelCopyWith(MerchantStoreModel value, $Res Function(MerchantStoreModel) _then) = _$MerchantStoreModelCopyWithImpl;
@useResult
$Res call({
 String id, String name, String? description, String address, String? phone, double lat, double lng,@JsonKey(name: 'price_level') int priceLevel, String status,@JsonKey(name: 'status_reason') String? statusReason,@JsonKey(name: 'cover_url') String? coverUrl, List<CategoryModel> categories,@JsonKey(name: 'opening_hours') List<MerchantOpeningHourInput> openingHours
});




}
/// @nodoc
class _$MerchantStoreModelCopyWithImpl<$Res>
    implements $MerchantStoreModelCopyWith<$Res> {
  _$MerchantStoreModelCopyWithImpl(this._self, this._then);

  final MerchantStoreModel _self;
  final $Res Function(MerchantStoreModel) _then;

/// Create a copy of MerchantStoreModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? address = null,Object? phone = freezed,Object? lat = null,Object? lng = null,Object? priceLevel = null,Object? status = null,Object? statusReason = freezed,Object? coverUrl = freezed,Object? categories = null,Object? openingHours = null,}) {
  return _then(MerchantStoreModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,priceLevel: null == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusReason: freezed == statusReason ? _self.statusReason : statusReason // ignore: cast_nullable_to_non_nullable
as String?,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,categories: null == categories ? _self.categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,openingHours: null == openingHours ? _self.openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as List<MerchantOpeningHourInput>,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantStoreModel].
extension MerchantStoreModelPatterns on MerchantStoreModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantStoreModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantStoreModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantStoreModel value)  $default,){
final _that = this;
switch (_that) {
case _MerchantStoreModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantStoreModel value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantStoreModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  String address,  String? phone,  double lat,  double lng, @JsonKey(name: 'price_level')  int priceLevel,  String status, @JsonKey(name: 'status_reason')  String? statusReason, @JsonKey(name: 'cover_url')  String? coverUrl,  List<CategoryModel> categories, @JsonKey(name: 'opening_hours')  List<MerchantOpeningHourInput> openingHours)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantStoreModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.address,_that.phone,_that.lat,_that.lng,_that.priceLevel,_that.status,_that.statusReason,_that.coverUrl,_that.categories,_that.openingHours);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name,  String? description,  String address,  String? phone,  double lat,  double lng, @JsonKey(name: 'price_level')  int priceLevel,  String status, @JsonKey(name: 'status_reason')  String? statusReason, @JsonKey(name: 'cover_url')  String? coverUrl,  List<CategoryModel> categories, @JsonKey(name: 'opening_hours')  List<MerchantOpeningHourInput> openingHours)  $default,) {final _that = this;
switch (_that) {
case _MerchantStoreModel():
return $default(_that.id,_that.name,_that.description,_that.address,_that.phone,_that.lat,_that.lng,_that.priceLevel,_that.status,_that.statusReason,_that.coverUrl,_that.categories,_that.openingHours);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name,  String? description,  String address,  String? phone,  double lat,  double lng, @JsonKey(name: 'price_level')  int priceLevel,  String status, @JsonKey(name: 'status_reason')  String? statusReason, @JsonKey(name: 'cover_url')  String? coverUrl,  List<CategoryModel> categories, @JsonKey(name: 'opening_hours')  List<MerchantOpeningHourInput> openingHours)?  $default,) {final _that = this;
switch (_that) {
case _MerchantStoreModel() when $default != null:
return $default(_that.id,_that.name,_that.description,_that.address,_that.phone,_that.lat,_that.lng,_that.priceLevel,_that.status,_that.statusReason,_that.coverUrl,_that.categories,_that.openingHours);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantStoreModel implements MerchantStoreModel {
  const _MerchantStoreModel({required this.id, required this.name, this.description, required this.address, this.phone, required this.lat, required this.lng, @JsonKey(name: 'price_level') required this.priceLevel, required this.status, @JsonKey(name: 'status_reason') this.statusReason, @JsonKey(name: 'cover_url') this.coverUrl,  List<CategoryModel> categories = const [], @JsonKey(name: 'opening_hours')  List<MerchantOpeningHourInput> openingHours = const []}): _categories = categories,_openingHours = openingHours;
  factory _MerchantStoreModel.fromJson(Map<String, dynamic> json) => _$MerchantStoreModelFromJson(json);

@override final  String id;
@override final  String name;
@override final  String? description;
@override final  String address;
@override final  String? phone;
@override final  double lat;
@override final  double lng;
@override@JsonKey(name: 'price_level') final  int priceLevel;
@override final  String status;
@override@JsonKey(name: 'status_reason') final  String? statusReason;
@override@JsonKey(name: 'cover_url') final  String? coverUrl;
 final  List<CategoryModel> _categories;
@override@JsonKey() List<CategoryModel> get categories {
  if (_categories is EqualUnmodifiableListView) return _categories;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_categories);
}

 final  List<MerchantOpeningHourInput> _openingHours;
@override@JsonKey(name: 'opening_hours') List<MerchantOpeningHourInput> get openingHours {
  if (_openingHours is EqualUnmodifiableListView) return _openingHours;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_openingHours);
}


/// Create a copy of MerchantStoreModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantStoreModelCopyWith<_MerchantStoreModel> get copyWith => __$MerchantStoreModelCopyWithImpl<_MerchantStoreModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantStoreModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantStoreModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.address, address) || other.address == address)&&(identical(other.phone, phone) || other.phone == phone)&&(identical(other.lat, lat) || other.lat == lat)&&(identical(other.lng, lng) || other.lng == lng)&&(identical(other.priceLevel, priceLevel) || other.priceLevel == priceLevel)&&(identical(other.status, status) || other.status == status)&&(identical(other.statusReason, statusReason) || other.statusReason == statusReason)&&(identical(other.coverUrl, coverUrl) || other.coverUrl == coverUrl)&&const DeepCollectionEquality().equals(other.categories, _categories)&&const DeepCollectionEquality().equals(other.openingHours, _openingHours));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,description,address,phone,lat,lng,priceLevel,status,statusReason,coverUrl,const DeepCollectionEquality().hash(_categories),const DeepCollectionEquality().hash(_openingHours));
}

@override
String toString() {
    return 'MerchantStoreModel(id: $id, name: $name, description: $description, address: $address, phone: $phone, lat: $lat, lng: $lng, priceLevel: $priceLevel, status: $status, statusReason: $statusReason, coverUrl: $coverUrl, categories: $categories, openingHours: $openingHours)';
}


}

/// @nodoc
abstract mixin class _$MerchantStoreModelCopyWith<$Res> implements $MerchantStoreModelCopyWith<$Res> {
  factory _$MerchantStoreModelCopyWith(_MerchantStoreModel value, $Res Function(_MerchantStoreModel) _then) = __$MerchantStoreModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name, String? description, String address, String? phone, double lat, double lng,@JsonKey(name: 'price_level') int priceLevel, String status,@JsonKey(name: 'status_reason') String? statusReason,@JsonKey(name: 'cover_url') String? coverUrl, List<CategoryModel> categories,@JsonKey(name: 'opening_hours') List<MerchantOpeningHourInput> openingHours
});




}
/// @nodoc
class __$MerchantStoreModelCopyWithImpl<$Res>
    implements _$MerchantStoreModelCopyWith<$Res> {
  __$MerchantStoreModelCopyWithImpl(this._self, this._then);

  final _MerchantStoreModel _self;
  final $Res Function(_MerchantStoreModel) _then;

/// Create a copy of MerchantStoreModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? description = freezed,Object? address = null,Object? phone = freezed,Object? lat = null,Object? lng = null,Object? priceLevel = null,Object? status = null,Object? statusReason = freezed,Object? coverUrl = freezed,Object? categories = null,Object? openingHours = null,}) {
  return _then(_MerchantStoreModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,address: null == address ? _self.address : address // ignore: cast_nullable_to_non_nullable
as String,phone: freezed == phone ? _self.phone : phone // ignore: cast_nullable_to_non_nullable
as String?,lat: null == lat ? _self.lat : lat // ignore: cast_nullable_to_non_nullable
as double,lng: null == lng ? _self.lng : lng // ignore: cast_nullable_to_non_nullable
as double,priceLevel: null == priceLevel ? _self.priceLevel : priceLevel // ignore: cast_nullable_to_non_nullable
as int,status: null == status ? _self.status : status // ignore: cast_nullable_to_non_nullable
as String,statusReason: freezed == statusReason ? _self.statusReason : statusReason // ignore: cast_nullable_to_non_nullable
as String?,coverUrl: freezed == coverUrl ? _self.coverUrl : coverUrl // ignore: cast_nullable_to_non_nullable
as String?,categories: null == categories ? _self._categories : categories // ignore: cast_nullable_to_non_nullable
as List<CategoryModel>,openingHours: null == openingHours ? _self._openingHours : openingHours // ignore: cast_nullable_to_non_nullable
as List<MerchantOpeningHourInput>,
  ));
}


}

// dart format on
