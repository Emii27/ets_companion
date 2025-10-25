// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'client_create_screen_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$ClientCreateScreenModel {

 String get nameValue; bool get isSubmitted;
/// Create a copy of ClientCreateScreenModel
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ClientCreateScreenModelCopyWith<ClientCreateScreenModel> get copyWith => _$ClientCreateScreenModelCopyWithImpl<ClientCreateScreenModel>(this as ClientCreateScreenModel, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is ClientCreateScreenModel&&(identical(other.nameValue, nameValue) || other.nameValue == nameValue)&&(identical(other.isSubmitted, isSubmitted) || other.isSubmitted == isSubmitted));
}


@override
int get hashCode => Object.hash(runtimeType,nameValue,isSubmitted);

@override
String toString() {
  return 'ClientCreateScreenModel(nameValue: $nameValue, isSubmitted: $isSubmitted)';
}


}

/// @nodoc
abstract mixin class $ClientCreateScreenModelCopyWith<$Res>  {
  factory $ClientCreateScreenModelCopyWith(ClientCreateScreenModel value, $Res Function(ClientCreateScreenModel) _then) = _$ClientCreateScreenModelCopyWithImpl;
@useResult
$Res call({
 String nameValue, bool isSubmitted
});




}
/// @nodoc
class _$ClientCreateScreenModelCopyWithImpl<$Res>
    implements $ClientCreateScreenModelCopyWith<$Res> {
  _$ClientCreateScreenModelCopyWithImpl(this._self, this._then);

  final ClientCreateScreenModel _self;
  final $Res Function(ClientCreateScreenModel) _then;

/// Create a copy of ClientCreateScreenModel
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? nameValue = null,Object? isSubmitted = null,}) {
  return _then(_self.copyWith(
nameValue: null == nameValue ? _self.nameValue : nameValue // ignore: cast_nullable_to_non_nullable
as String,isSubmitted: null == isSubmitted ? _self.isSubmitted : isSubmitted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [ClientCreateScreenModel].
extension ClientCreateScreenModelPatterns on ClientCreateScreenModel {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _ClientModelScreenModel value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _ClientModelScreenModel() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _ClientModelScreenModel value)  $default,){
final _that = this;
switch (_that) {
case _ClientModelScreenModel():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _ClientModelScreenModel value)?  $default,){
final _that = this;
switch (_that) {
case _ClientModelScreenModel() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( String nameValue,  bool isSubmitted)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _ClientModelScreenModel() when $default != null:
return $default(_that.nameValue,_that.isSubmitted);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( String nameValue,  bool isSubmitted)  $default,) {final _that = this;
switch (_that) {
case _ClientModelScreenModel():
return $default(_that.nameValue,_that.isSubmitted);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( String nameValue,  bool isSubmitted)?  $default,) {final _that = this;
switch (_that) {
case _ClientModelScreenModel() when $default != null:
return $default(_that.nameValue,_that.isSubmitted);case _:
  return null;

}
}

}

/// @nodoc


class _ClientModelScreenModel extends ClientCreateScreenModel {
  const _ClientModelScreenModel({required this.nameValue, this.isSubmitted = false}): super._();
  

@override final  String nameValue;
@override@JsonKey() final  bool isSubmitted;

/// Create a copy of ClientCreateScreenModel
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$ClientModelScreenModelCopyWith<_ClientModelScreenModel> get copyWith => __$ClientModelScreenModelCopyWithImpl<_ClientModelScreenModel>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _ClientModelScreenModel&&(identical(other.nameValue, nameValue) || other.nameValue == nameValue)&&(identical(other.isSubmitted, isSubmitted) || other.isSubmitted == isSubmitted));
}


@override
int get hashCode => Object.hash(runtimeType,nameValue,isSubmitted);

@override
String toString() {
  return 'ClientCreateScreenModel(nameValue: $nameValue, isSubmitted: $isSubmitted)';
}


}

/// @nodoc
abstract mixin class _$ClientModelScreenModelCopyWith<$Res> implements $ClientCreateScreenModelCopyWith<$Res> {
  factory _$ClientModelScreenModelCopyWith(_ClientModelScreenModel value, $Res Function(_ClientModelScreenModel) _then) = __$ClientModelScreenModelCopyWithImpl;
@override @useResult
$Res call({
 String nameValue, bool isSubmitted
});




}
/// @nodoc
class __$ClientModelScreenModelCopyWithImpl<$Res>
    implements _$ClientModelScreenModelCopyWith<$Res> {
  __$ClientModelScreenModelCopyWithImpl(this._self, this._then);

  final _ClientModelScreenModel _self;
  final $Res Function(_ClientModelScreenModel) _then;

/// Create a copy of ClientCreateScreenModel
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? nameValue = null,Object? isSubmitted = null,}) {
  return _then(_ClientModelScreenModel(
nameValue: null == nameValue ? _self.nameValue : nameValue // ignore: cast_nullable_to_non_nullable
as String,isSubmitted: null == isSubmitted ? _self.isSubmitted : isSubmitted // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
