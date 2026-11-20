// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint, type=warning, deprecated_member_use, deprecated_member_use_from_same_package
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'restaurant_menu_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND
// dart format off
T _$identity<T>(T value) => value;

/// @nodoc
mixin _$MenuItemModel {

 String get id; String get name;@JsonKey(name: 'price_label') String get priceLabel; String? get description;@JsonKey(name: 'photo_url') String? get photoUrl;@JsonKey(name: 'is_available') bool get isAvailable;
/// Create a copy of MenuItemModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuItemModelCopyWith<MenuItemModel> get copyWith => _$MenuItemModelCopyWithImpl<MenuItemModel>(this as MenuItemModel, _$identity);

  /// Serializes this MenuItemModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MenuItemModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuItemModel&&(identical(other.id, _this.id) || other.id == _this.id)&&(identical(other.name, _this.name) || other.name == _this.name)&&(identical(other.priceLabel, _this.priceLabel) || other.priceLabel == _this.priceLabel)&&(identical(other.description, _this.description) || other.description == _this.description)&&(identical(other.photoUrl, _this.photoUrl) || other.photoUrl == _this.photoUrl)&&(identical(other.isAvailable, _this.isAvailable) || other.isAvailable == _this.isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MenuItemModel;
  return Object.hash(runtimeType,_this.id,_this.name,_this.priceLabel,_this.description,_this.photoUrl,_this.isAvailable);
}

@override
String toString() {
  final _this = this as MenuItemModel;
  return 'MenuItemModel(id: ${_this.id}, name: ${_this.name}, priceLabel: ${_this.priceLabel}, description: ${_this.description}, photoUrl: ${_this.photoUrl}, isAvailable: ${_this.isAvailable})';
}


}

/// @nodoc
abstract mixin class $MenuItemModelCopyWith<$Res>  {
  factory $MenuItemModelCopyWith(MenuItemModel value, $Res Function(MenuItemModel) _then) = _$MenuItemModelCopyWithImpl;
@useResult
$Res call({
 String id, String name,@JsonKey(name: 'price_label') String priceLabel, String? description,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'is_available') bool isAvailable
});




}
/// @nodoc
class _$MenuItemModelCopyWithImpl<$Res>
    implements $MenuItemModelCopyWith<$Res> {
  _$MenuItemModelCopyWithImpl(this._self, this._then);

  final MenuItemModel _self;
  final $Res Function(MenuItemModel) _then;

/// Create a copy of MenuItemModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? id = null,Object? name = null,Object? priceLabel = null,Object? description = freezed,Object? photoUrl = freezed,Object? isAvailable = null,}) {
  return _then(MenuItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,priceLabel: null == priceLabel ? _self.priceLabel : priceLabel // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [MenuItemModel].
extension MenuItemModelPatterns on MenuItemModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MenuItemModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MenuItemModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MenuItemModel value)  $default,){
final _that = this;
switch (_that) {
case _MenuItemModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MenuItemModel value)?  $default,){
final _that = this;
switch (_that) {
case _MenuItemModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'price_label')  String priceLabel,  String? description, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'is_available')  bool isAvailable)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MenuItemModel() when $default != null:
return $default(_that.id,_that.name,_that.priceLabel,_that.description,_that.photoUrl,_that.isAvailable);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String id,  String name, @JsonKey(name: 'price_label')  String priceLabel,  String? description, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'is_available')  bool isAvailable)  $default,) {final _that = this;
switch (_that) {
case _MenuItemModel():
return $default(_that.id,_that.name,_that.priceLabel,_that.description,_that.photoUrl,_that.isAvailable);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String id,  String name, @JsonKey(name: 'price_label')  String priceLabel,  String? description, @JsonKey(name: 'photo_url')  String? photoUrl, @JsonKey(name: 'is_available')  bool isAvailable)?  $default,) {final _that = this;
switch (_that) {
case _MenuItemModel() when $default != null:
return $default(_that.id,_that.name,_that.priceLabel,_that.description,_that.photoUrl,_that.isAvailable);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MenuItemModel implements MenuItemModel {
  const _MenuItemModel({required this.id, required this.name, @JsonKey(name: 'price_label') required this.priceLabel, this.description, @JsonKey(name: 'photo_url') this.photoUrl, @JsonKey(name: 'is_available') required this.isAvailable});
  factory _MenuItemModel.fromJson(Map<String, dynamic> json) => _$MenuItemModelFromJson(json);

@override final  String id;
@override final  String name;
@override@JsonKey(name: 'price_label') final  String priceLabel;
@override final  String? description;
@override@JsonKey(name: 'photo_url') final  String? photoUrl;
@override@JsonKey(name: 'is_available') final  bool isAvailable;

/// Create a copy of MenuItemModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuItemModelCopyWith<_MenuItemModel> get copyWith => __$MenuItemModelCopyWithImpl<_MenuItemModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MenuItemModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuItemModel&&(identical(other.id, id) || other.id == id)&&(identical(other.name, name) || other.name == name)&&(identical(other.priceLabel, priceLabel) || other.priceLabel == priceLabel)&&(identical(other.description, description) || other.description == description)&&(identical(other.photoUrl, photoUrl) || other.photoUrl == photoUrl)&&(identical(other.isAvailable, isAvailable) || other.isAvailable == isAvailable));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,id,name,priceLabel,description,photoUrl,isAvailable);
}

@override
String toString() {
    return 'MenuItemModel(id: $id, name: $name, priceLabel: $priceLabel, description: $description, photoUrl: $photoUrl, isAvailable: $isAvailable)';
}


}

/// @nodoc
abstract mixin class _$MenuItemModelCopyWith<$Res> implements $MenuItemModelCopyWith<$Res> {
  factory _$MenuItemModelCopyWith(_MenuItemModel value, $Res Function(_MenuItemModel) _then) = __$MenuItemModelCopyWithImpl;
@override @useResult
$Res call({
 String id, String name,@JsonKey(name: 'price_label') String priceLabel, String? description,@JsonKey(name: 'photo_url') String? photoUrl,@JsonKey(name: 'is_available') bool isAvailable
});




}
/// @nodoc
class __$MenuItemModelCopyWithImpl<$Res>
    implements _$MenuItemModelCopyWith<$Res> {
  __$MenuItemModelCopyWithImpl(this._self, this._then);

  final _MenuItemModel _self;
  final $Res Function(_MenuItemModel) _then;

/// Create a copy of MenuItemModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? id = null,Object? name = null,Object? priceLabel = null,Object? description = freezed,Object? photoUrl = freezed,Object? isAvailable = null,}) {
  return _then(_MenuItemModel(
id: null == id ? _self.id : id // ignore: cast_nullable_to_non_nullable
as String,name: null == name ? _self.name : name // ignore: cast_nullable_to_non_nullable
as String,priceLabel: null == priceLabel ? _self.priceLabel : priceLabel // ignore: cast_nullable_to_non_nullable
as String,description: freezed == description ? _self.description : description // ignore: cast_nullable_to_non_nullable
as String?,photoUrl: freezed == photoUrl ? _self.photoUrl : photoUrl // ignore: cast_nullable_to_non_nullable
as String?,isAvailable: null == isAvailable ? _self.isAvailable : isAvailable // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}


/// @nodoc
mixin _$MenuGroupModel {

 String get group; List<MenuItemModel> get items;
/// Create a copy of MenuGroupModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$MenuGroupModelCopyWith<MenuGroupModel> get copyWith => _$MenuGroupModelCopyWithImpl<MenuGroupModel>(this as MenuGroupModel, _$identity);

  /// Serializes this MenuGroupModel to a JSON map.
  Map<String, dynamic> toJson();


@override
bool operator ==(Object other) {
  final _this = this as MenuGroupModel;
  return identical(this, other) || (other.runtimeType == runtimeType&&other is MenuGroupModel&&(identical(other.group, _this.group) || other.group == _this.group)&&const DeepCollectionEquality().equals(other.items, _this.items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
  final _this = this as MenuGroupModel;
  return Object.hash(runtimeType,_this.group,const DeepCollectionEquality().hash(_this.items));
}

@override
String toString() {
  final _this = this as MenuGroupModel;
  return 'MenuGroupModel(group: ${_this.group}, items: ${_this.items})';
}


}

/// @nodoc
abstract mixin class $MenuGroupModelCopyWith<$Res>  {
  factory $MenuGroupModelCopyWith(MenuGroupModel value, $Res Function(MenuGroupModel) _then) = _$MenuGroupModelCopyWithImpl;
@useResult
$Res call({
 String group, List<MenuItemModel> items
});




}
/// @nodoc
class _$MenuGroupModelCopyWithImpl<$Res>
    implements $MenuGroupModelCopyWith<$Res> {
  _$MenuGroupModelCopyWithImpl(this._self, this._then);

  final MenuGroupModel _self;
  final $Res Function(MenuGroupModel) _then;

/// Create a copy of MenuGroupModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? group = null,Object? items = null,}) {
  return _then(MenuGroupModel(
group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self.items : items // ignore: cast_nullable_to_non_nullable
as List<MenuItemModel>,
  ));
}

}


/// Adds pattern-matching-related methods to [MenuGroupModel].
extension MenuGroupModelPatterns on MenuGroupModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _MenuGroupModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _MenuGroupModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _MenuGroupModel value)  $default,){
final _that = this;
switch (_that) {
case _MenuGroupModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _MenuGroupModel value)?  $default,){
final _that = this;
switch (_that) {
case _MenuGroupModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String group,  List<MenuItemModel> items)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _MenuGroupModel() when $default != null:
return $default(_that.group,_that.items);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String group,  List<MenuItemModel> items)  $default,) {final _that = this;
switch (_that) {
case _MenuGroupModel():
return $default(_that.group,_that.items);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String group,  List<MenuItemModel> items)?  $default,) {final _that = this;
switch (_that) {
case _MenuGroupModel() when $default != null:
return $default(_that.group,_that.items);case _:
  return null;

}
}

}

/// @nodoc
@JsonSerializable()

class _MenuGroupModel implements MenuGroupModel {
  const _MenuGroupModel({required this.group,  List<MenuItemModel> items = const []}): _items = items;
  factory _MenuGroupModel.fromJson(Map<String, dynamic> json) => _$MenuGroupModelFromJson(json);

@override final  String group;
 final  List<MenuItemModel> _items;
@override@JsonKey() List<MenuItemModel> get items {
  if (_items is EqualUnmodifiableListView) return _items;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_items);
}


/// Create a copy of MenuGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$MenuGroupModelCopyWith<_MenuGroupModel> get copyWith => __$MenuGroupModelCopyWithImpl<_MenuGroupModel>(this, _$identity);

@override
Map<String, dynamic> toJson() {
  return _$MenuGroupModelToJson(this, );
}

@override
bool operator ==(Object other) {
    return identical(this, other) || (other.runtimeType == runtimeType&&other is _MenuGroupModel&&(identical(other.group, group) || other.group == group)&&const DeepCollectionEquality().equals(other.items, _items));
}

@JsonKey(includeFromJson: false, includeToJson: false)
@override
int get hashCode {
    return Object.hash(runtimeType,group,const DeepCollectionEquality().hash(_items));
}

@override
String toString() {
    return 'MenuGroupModel(group: $group, items: $items)';
}


}

/// @nodoc
abstract mixin class _$MenuGroupModelCopyWith<$Res> implements $MenuGroupModelCopyWith<$Res> {
  factory _$MenuGroupModelCopyWith(_MenuGroupModel value, $Res Function(_MenuGroupModel) _then) = __$MenuGroupModelCopyWithImpl;
@override @useResult
$Res call({
 String group, List<MenuItemModel> items
});




}
/// @nodoc
class __$MenuGroupModelCopyWithImpl<$Res>
    implements _$MenuGroupModelCopyWith<$Res> {
  __$MenuGroupModelCopyWithImpl(this._self, this._then);

  final _MenuGroupModel _self;
  final $Res Function(_MenuGroupModel) _then;

/// Create a copy of MenuGroupModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? group = null,Object? items = null,}) {
  return _then(_MenuGroupModel(
group: null == group ? _self.group : group // ignore: cast_nullable_to_non_nullable
as String,items: null == items ? _self._items : items // ignore: cast_nullable_to_non_nullable
as List<MenuItemModel>,
  ));
}


}

// dart format on
