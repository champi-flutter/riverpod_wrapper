// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'specific_loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$SpecificLoadingState {

 int get loading;
/// Create a copy of SpecificLoadingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$SpecificLoadingStateCopyWith<SpecificLoadingState> get copyWith => _$SpecificLoadingStateCopyWithImpl<SpecificLoadingState>(this as SpecificLoadingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is SpecificLoadingState&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,loading);

@override
String toString() {
  return 'SpecificLoadingState(loading: $loading)';
}


}

/// @nodoc
abstract mixin class $SpecificLoadingStateCopyWith<$Res>  {
  factory $SpecificLoadingStateCopyWith(SpecificLoadingState value, $Res Function(SpecificLoadingState) _then) = _$SpecificLoadingStateCopyWithImpl;
@useResult
$Res call({
 int loading
});




}
/// @nodoc
class _$SpecificLoadingStateCopyWithImpl<$Res>
    implements $SpecificLoadingStateCopyWith<$Res> {
  _$SpecificLoadingStateCopyWithImpl(this._self, this._then);

  final SpecificLoadingState _self;
  final $Res Function(SpecificLoadingState) _then;

/// Create a copy of SpecificLoadingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,}) {
  return _then(_self.copyWith(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as int,
  ));
}

}


/// Adds pattern-matching-related methods to [SpecificLoadingState].
extension SpecificLoadingStatePatterns on SpecificLoadingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _SpecificLoadingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _SpecificLoadingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _SpecificLoadingState value)  $default,){
final _that = this;
switch (_that) {
case _SpecificLoadingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _SpecificLoadingState value)?  $default,){
final _that = this;
switch (_that) {
case _SpecificLoadingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int loading)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _SpecificLoadingState() when $default != null:
return $default(_that.loading);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int loading)  $default,) {final _that = this;
switch (_that) {
case _SpecificLoadingState():
return $default(_that.loading);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int loading)?  $default,) {final _that = this;
switch (_that) {
case _SpecificLoadingState() when $default != null:
return $default(_that.loading);case _:
  return null;

}
}

}

/// @nodoc


class _SpecificLoadingState extends SpecificLoadingState {
  const _SpecificLoadingState({this.loading = 0}): super._();
  

@override@JsonKey() final  int loading;

/// Create a copy of SpecificLoadingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$SpecificLoadingStateCopyWith<_SpecificLoadingState> get copyWith => __$SpecificLoadingStateCopyWithImpl<_SpecificLoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _SpecificLoadingState&&(identical(other.loading, loading) || other.loading == loading));
}


@override
int get hashCode => Object.hash(runtimeType,loading);

@override
String toString() {
  return 'SpecificLoadingState(loading: $loading)';
}


}

/// @nodoc
abstract mixin class _$SpecificLoadingStateCopyWith<$Res> implements $SpecificLoadingStateCopyWith<$Res> {
  factory _$SpecificLoadingStateCopyWith(_SpecificLoadingState value, $Res Function(_SpecificLoadingState) _then) = __$SpecificLoadingStateCopyWithImpl;
@override @useResult
$Res call({
 int loading
});




}
/// @nodoc
class __$SpecificLoadingStateCopyWithImpl<$Res>
    implements _$SpecificLoadingStateCopyWith<$Res> {
  __$SpecificLoadingStateCopyWithImpl(this._self, this._then);

  final _SpecificLoadingState _self;
  final $Res Function(_SpecificLoadingState) _then;

/// Create a copy of SpecificLoadingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,}) {
  return _then(_SpecificLoadingState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as int,
  ));
}


}

// dart format on
