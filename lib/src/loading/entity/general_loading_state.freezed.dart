// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'general_loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$GeneralLoadingState {

 int get loading; Map<Type, bool> get isReadyMap; bool get shouldReset;
/// Create a copy of GeneralLoadingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$GeneralLoadingStateCopyWith<GeneralLoadingState> get copyWith => _$GeneralLoadingStateCopyWithImpl<GeneralLoadingState>(this as GeneralLoadingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is GeneralLoadingState&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other.isReadyMap, isReadyMap)&&(identical(other.shouldReset, shouldReset) || other.shouldReset == shouldReset));
}


@override
int get hashCode => Object.hash(runtimeType,loading,const DeepCollectionEquality().hash(isReadyMap),shouldReset);

@override
String toString() {
  return 'GeneralLoadingState(loading: $loading, isReadyMap: $isReadyMap, shouldReset: $shouldReset)';
}


}

/// @nodoc
abstract mixin class $GeneralLoadingStateCopyWith<$Res>  {
  factory $GeneralLoadingStateCopyWith(GeneralLoadingState value, $Res Function(GeneralLoadingState) _then) = _$GeneralLoadingStateCopyWithImpl;
@useResult
$Res call({
 int loading, Map<Type, bool> isReadyMap, bool shouldReset
});




}
/// @nodoc
class _$GeneralLoadingStateCopyWithImpl<$Res>
    implements $GeneralLoadingStateCopyWith<$Res> {
  _$GeneralLoadingStateCopyWithImpl(this._self, this._then);

  final GeneralLoadingState _self;
  final $Res Function(GeneralLoadingState) _then;

/// Create a copy of GeneralLoadingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loading = null,Object? isReadyMap = null,Object? shouldReset = null,}) {
  return _then(_self.copyWith(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as int,isReadyMap: null == isReadyMap ? _self.isReadyMap : isReadyMap // ignore: cast_nullable_to_non_nullable
as Map<Type, bool>,shouldReset: null == shouldReset ? _self.shouldReset : shouldReset // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [GeneralLoadingState].
extension GeneralLoadingStatePatterns on GeneralLoadingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _GeneralLoadingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _GeneralLoadingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _GeneralLoadingState value)  $default,){
final _that = this;
switch (_that) {
case _GeneralLoadingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _GeneralLoadingState value)?  $default,){
final _that = this;
switch (_that) {
case _GeneralLoadingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int loading,  Map<Type, bool> isReadyMap,  bool shouldReset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _GeneralLoadingState() when $default != null:
return $default(_that.loading,_that.isReadyMap,_that.shouldReset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int loading,  Map<Type, bool> isReadyMap,  bool shouldReset)  $default,) {final _that = this;
switch (_that) {
case _GeneralLoadingState():
return $default(_that.loading,_that.isReadyMap,_that.shouldReset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int loading,  Map<Type, bool> isReadyMap,  bool shouldReset)?  $default,) {final _that = this;
switch (_that) {
case _GeneralLoadingState() when $default != null:
return $default(_that.loading,_that.isReadyMap,_that.shouldReset);case _:
  return null;

}
}

}

/// @nodoc


class _GeneralLoadingState extends GeneralLoadingState {
  const _GeneralLoadingState({this.loading = 0, final  Map<Type, bool> isReadyMap = const <Type, bool>{}, this.shouldReset = false}): _isReadyMap = isReadyMap,super._();
  

@override@JsonKey() final  int loading;
 final  Map<Type, bool> _isReadyMap;
@override@JsonKey() Map<Type, bool> get isReadyMap {
  if (_isReadyMap is EqualUnmodifiableMapView) return _isReadyMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_isReadyMap);
}

@override@JsonKey() final  bool shouldReset;

/// Create a copy of GeneralLoadingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$GeneralLoadingStateCopyWith<_GeneralLoadingState> get copyWith => __$GeneralLoadingStateCopyWithImpl<_GeneralLoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _GeneralLoadingState&&(identical(other.loading, loading) || other.loading == loading)&&const DeepCollectionEquality().equals(other._isReadyMap, _isReadyMap)&&(identical(other.shouldReset, shouldReset) || other.shouldReset == shouldReset));
}


@override
int get hashCode => Object.hash(runtimeType,loading,const DeepCollectionEquality().hash(_isReadyMap),shouldReset);

@override
String toString() {
  return 'GeneralLoadingState(loading: $loading, isReadyMap: $isReadyMap, shouldReset: $shouldReset)';
}


}

/// @nodoc
abstract mixin class _$GeneralLoadingStateCopyWith<$Res> implements $GeneralLoadingStateCopyWith<$Res> {
  factory _$GeneralLoadingStateCopyWith(_GeneralLoadingState value, $Res Function(_GeneralLoadingState) _then) = __$GeneralLoadingStateCopyWithImpl;
@override @useResult
$Res call({
 int loading, Map<Type, bool> isReadyMap, bool shouldReset
});




}
/// @nodoc
class __$GeneralLoadingStateCopyWithImpl<$Res>
    implements _$GeneralLoadingStateCopyWith<$Res> {
  __$GeneralLoadingStateCopyWithImpl(this._self, this._then);

  final _GeneralLoadingState _self;
  final $Res Function(_GeneralLoadingState) _then;

/// Create a copy of GeneralLoadingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loading = null,Object? isReadyMap = null,Object? shouldReset = null,}) {
  return _then(_GeneralLoadingState(
loading: null == loading ? _self.loading : loading // ignore: cast_nullable_to_non_nullable
as int,isReadyMap: null == isReadyMap ? _self._isReadyMap : isReadyMap // ignore: cast_nullable_to_non_nullable
as Map<Type, bool>,shouldReset: null == shouldReset ? _self.shouldReset : shouldReset // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
