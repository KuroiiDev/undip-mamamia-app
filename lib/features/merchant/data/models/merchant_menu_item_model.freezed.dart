// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'merchant_menu_item_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MerchantMenuItemModel {

 String get id;@JsonKey(name: 'group_name') String get groupName; String get name; String? get description; int get price;@JsonKey(name: 'price_label') String get priceLabel;@JsonKey(name: 'photo_url') String? get photoUrl;@JsonKey(name: 'is_available') bool get isAvailable;
/// Create a copy of MerchantMenuItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MerchantMenuItemModelCopyWith<MerchantMenuItemModel> get copyWith => _$MerchantMenuItemModelCopyWithImpl<MerchantMenuItemModel>(this as MerchantMenuItemModel, _$identity);

  /// Serializes this MerchantMenuItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MerchantMenuItemModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MerchantMenuItemModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.groupName, _this.groupName) || other.groupName == _this.groupName)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.price, _this.price) || other.price == _this.price)&&(identical(other.priceLabel, _this.priceLabel) || other.priceLabel == _this.priceLabel)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl)&&(identical(other.isAvailable, _this.isAvailable) || other.isAvailable == _this.isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MerchantMenuItemModel;
  return Object.hash(runtimeType,_this.id,_this.groupName,_this.name,_this.description,_this.price,_this.priceLabel,_this.photoUrl,_this.isAvailable);
}

@override
String toString() {
  final _this = this as MerchantMenuItemModel;
  return 'MerchantMenuItemModel(id: ${_this.id}, groupName: ${_this.groupName}, name: ${_this.name}, description: ${_this.description}, price: ${_this.price}, priceLabel: ${_this.priceLabel}, photoUrl: ${_this.photoUrl}, isAvailable: ${_this.isAvailable})';
}


}

/// @nodoc
abstract mixin class $MerchantMenuItemModelCopyWith<$Res>  {
  factory $MerchantMenuItemModelCopyWith(MerchantMenuItemModel value, $Res Function(MerchantMenuItemModel) _then) = _$MerchantMenuItemModelCopyWithImpl;
@useResult
$Res call({
 String id,@JsonKey(name: 'group_name') String groupName, String name, String? description, int price,@JsonKey(name: 'price_label') String priceLabel,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'is_available') bool isAvailable
});




}
/// @nodoc
class _$MerchantMenuItemModelCopyWithImpl<$Res>
    implements $MerchantMenuItemModelCopyWith<$Res> {
  _$MerchantMenuItemModelCopyWithImpl(this._self, this._then);

  final MerchantMenuItemModel _self;
  final $Res Function(MerchantMenuItemModel) _then;

/// Create a copy of MerchantMenuItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? groupName = null,Object? name = null,Object? description = freezed,Object? price = null,Object? priceLabel = null,Object? photoUrl = freezed,Object? isAvailable = null,}) {
  return _then(MerchantMenuItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,priceLabel: null == priceLabel ? _self.priceLabel : priceLabel // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MerchantMenuItemModel].
extension MerchantMenuItemModelPatterns on MerchantMenuItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MerchantMenuItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MerchantMenuItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MerchantMenuItemModel value)  $default,){
final _that = this;
switch (_that) {
case _MerchantMenuItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MerchantMenuItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _MerchantMenuItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'group_name')  String groupName,  String name,  String? description,  int price, @JsonKey(name: 'price_label')  String priceLabel, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'is_available')  bool isAvailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MerchantMenuItemModel() when $default != null:
return $default(_that.id,_that.groupName,_that.name,_that.description,_that.price,_that.priceLabel,_that.photoUrl,_that.isAvailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id, @JsonKey(name: 'group_name')  String groupName,  String name,  String? description,  int price, @JsonKey(name: 'price_label')  String priceLabel, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'is_available')  bool isAvailable)  $default,) {final _that = this;
switch (_that) {
case _MerchantMenuItemModel():
return $default(_that.id,_that.groupName,_that.name,_that.description,_that.price,_that.priceLabel,_that.photoUrl,_that.isAvailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id, @JsonKey(name: 'group_name')  String groupName,  String name,  String? description,  int price, @JsonKey(name: 'price_label')  String priceLabel, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'is_available')  bool isAvailable)?  $default,) {final _that = this;
switch (_that) {
case _MerchantMenuItemModel() when $default != null:
return $default(_that.id,_that.groupName,_that.name,_that.description,_that.price,_that.priceLabel,_that.photoUrl,_that.isAvailable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MerchantMenuItemModel implements MerchantMenuItemModel {
  const _MerchantMenuItemModel({required this.id, @JsonKey(name: 'group_name') required this.groupName, required this.name, this.description, required this.price, @JsonKey(name: 'price_label') required this.priceLabel, @JsonKey(name: 'photo_url') this.photoUrl, @JsonKey(name: 'is_available') required this.isAvailable});
  factory _MerchantMenuItemModel.fromJson(Map<String, dynamic> json) => _$MerchantMenuItemModelFromJson(json);

@override final  String id;
@override@JsonKey(name: 'group_name') final  String groupName;
@override final  String name;
@override final  String? description;
@override final  int price;
@override@JsonKey(name: 'price_label') final  String priceLabel;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
@override@JsonKey(name: 'is_available') final  bool isAvailable;

/// Create a copy of MerchantMenuItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MerchantMenuItemModelCopyWith<_MerchantMenuItemModel> get copyWith => __$MerchantMenuItemModelCopyWithImpl<_MerchantMenuItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MerchantMenuItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MerchantMenuItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.groupName, groupName) || other.groupName == groupName)&&(identical(other.name, name) || other.name == name)&&(identical(other.description, description) || other.description == description)&&(identical(other.price, price) || other.price == price)&&(identical(other.priceLabel, priceLabel) || other.priceLabel == priceLabel)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,groupName,name,description,price,priceLabel,photoUrl,isAvailable);
}

@override
String toString() {
    return 'MerchantMenuItemModel(id: $id, groupName: $groupName, name: $name, description: $description, price: $price, priceLabel: $priceLabel, photoUrl: $photoUrl, isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class _$MerchantMenuItemModelCopyWith<$Res> implements $MerchantMenuItemModelCopyWith<$Res> {
  factory _$MerchantMenuItemModelCopyWith(_MerchantMenuItemModel value, $Res Function(_MerchantMenuItemModel) _then) = __$MerchantMenuItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id,@JsonKey(name: 'group_name') String groupName, String name, String? description, int price,@JsonKey(name: 'price_label') String priceLabel,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'is_available') bool isAvailable
});




}
/// @nodoc
class __$MerchantMenuItemModelCopyWithImpl<$Res>
    implements _$MerchantMenuItemModelCopyWith<$Res> {
  __$MerchantMenuItemModelCopyWithImpl(this._self, this._then);

  final _MerchantMenuItemModel _self;
  final $Res Function(_MerchantMenuItemModel) _then;

/// Create a copy of MerchantMenuItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? groupName = null,Object? name = null,Object? description = freezed,Object? price = null,Object? priceLabel = null,Object? photoUrl = freezed,Object? isAvailable = null,}) {
  return _then(_MerchantMenuItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,groupName: null == groupName ? _self.groupName : groupName // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,price: null == price ? _self.price : price // ignore: cast_nullable_to_non_nullable
as int,priceLabel: null == priceLabel ? _self.priceLabel : priceLabel // ignore: cast_nullable_to_non_nullable
as String,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
