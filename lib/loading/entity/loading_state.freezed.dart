// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'loading_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$LoadingState {

 int get loadingProcess; Map<Type, bool> get isReadyMap; bool get shouldReset;
/// Create a copy of LoadingState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$LoadingStateCopyWith<LoadingState> get copyWith => _$LoadingStateCopyWithImpl<LoadingState>(this as LoadingState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is LoadingState&&(identical(other.loadingProcess, loadingProcess) || other.loadingProcess == loadingProcess)&&const DeepCollectionEquality().equals(other.isReadyMap, isReadyMap)&&(identical(other.shouldReset, shouldReset) || other.shouldReset == shouldReset));
}


@override
int get hashCode => Object.hash(runtimeType,loadingProcess,const DeepCollectionEquality().hash(isReadyMap),shouldReset);

@override
String toString() {
  return 'LoadingState(loadingProcess: $loadingProcess, isReadyMap: $isReadyMap, shouldReset: $shouldReset)';
}


}

/// @nodoc
abstract mixin class $LoadingStateCopyWith<$Res>  {
  factory $LoadingStateCopyWith(LoadingState value, $Res Function(LoadingState) _then) = _$LoadingStateCopyWithImpl;
@useResult
$Res call({
 int loadingProcess, Map<Type, bool> isReadyMap, bool shouldReset
});




}
/// @nodoc
class _$LoadingStateCopyWithImpl<$Res>
    implements $LoadingStateCopyWith<$Res> {
  _$LoadingStateCopyWithImpl(this._self, this._then);

  final LoadingState _self;
  final $Res Function(LoadingState) _then;

/// Create a copy of LoadingState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? loadingProcess = null,Object? isReadyMap = null,Object? shouldReset = null,}) {
  return _then(_self.copyWith(
loadingProcess: null == loadingProcess ? _self.loadingProcess : loadingProcess // ignore: cast_nullable_to_non_nullable
as int,isReadyMap: null == isReadyMap ? _self.isReadyMap : isReadyMap // ignore: cast_nullable_to_non_nullable
as Map<Type, bool>,shouldReset: null == shouldReset ? _self.shouldReset : shouldReset // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}

}


/// Adds pattern-matching-related methods to [LoadingState].
extension LoadingStatePatterns on LoadingState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _LoadingState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _LoadingState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _LoadingState value)  $default,){
final _that = this;
switch (_that) {
case _LoadingState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _LoadingState value)?  $default,){
final _that = this;
switch (_that) {
case _LoadingState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int loadingProcess,  Map<Type, bool> isReadyMap,  bool shouldReset)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _LoadingState() when $default != null:
return $default(_that.loadingProcess,_that.isReadyMap,_that.shouldReset);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int loadingProcess,  Map<Type, bool> isReadyMap,  bool shouldReset)  $default,) {final _that = this;
switch (_that) {
case _LoadingState():
return $default(_that.loadingProcess,_that.isReadyMap,_that.shouldReset);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int loadingProcess,  Map<Type, bool> isReadyMap,  bool shouldReset)?  $default,) {final _that = this;
switch (_that) {
case _LoadingState() when $default != null:
return $default(_that.loadingProcess,_that.isReadyMap,_that.shouldReset);case _:
  return null;

}
}

}

/// @nodoc


class _LoadingState extends LoadingState {
  const _LoadingState({this.loadingProcess = 0, final  Map<Type, bool> isReadyMap = const <Type, bool>{}, this.shouldReset = false}): _isReadyMap = isReadyMap,super._();
  

@override@JsonKey() final  int loadingProcess;
 final  Map<Type, bool> _isReadyMap;
@override@JsonKey() Map<Type, bool> get isReadyMap {
  if (_isReadyMap is EqualUnmodifiableMapView) return _isReadyMap;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableMapView(_isReadyMap);
}

@override@JsonKey() final  bool shouldReset;

/// Create a copy of LoadingState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$LoadingStateCopyWith<_LoadingState> get copyWith => __$LoadingStateCopyWithImpl<_LoadingState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _LoadingState&&(identical(other.loadingProcess, loadingProcess) || other.loadingProcess == loadingProcess)&&const DeepCollectionEquality().equals(other._isReadyMap, _isReadyMap)&&(identical(other.shouldReset, shouldReset) || other.shouldReset == shouldReset));
}


@override
int get hashCode => Object.hash(runtimeType,loadingProcess,const DeepCollectionEquality().hash(_isReadyMap),shouldReset);

@override
String toString() {
  return 'LoadingState(loadingProcess: $loadingProcess, isReadyMap: $isReadyMap, shouldReset: $shouldReset)';
}


}

/// @nodoc
abstract mixin class _$LoadingStateCopyWith<$Res> implements $LoadingStateCopyWith<$Res> {
  factory _$LoadingStateCopyWith(_LoadingState value, $Res Function(_LoadingState) _then) = __$LoadingStateCopyWithImpl;
@override @useResult
$Res call({
 int loadingProcess, Map<Type, bool> isReadyMap, bool shouldReset
});




}
/// @nodoc
class __$LoadingStateCopyWithImpl<$Res>
    implements _$LoadingStateCopyWith<$Res> {
  __$LoadingStateCopyWithImpl(this._self, this._then);

  final _LoadingState _self;
  final $Res Function(_LoadingState) _then;

/// Create a copy of LoadingState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? loadingProcess = null,Object? isReadyMap = null,Object? shouldReset = null,}) {
  return _then(_LoadingState(
loadingProcess: null == loadingProcess ? _self.loadingProcess : loadingProcess // ignore: cast_nullable_to_non_nullable
as int,isReadyMap: null == isReadyMap ? _self._isReadyMap : isReadyMap // ignore: cast_nullable_to_non_nullable
as Map<Type, bool>,shouldReset: null == shouldReset ? _self.shouldReset : shouldReset // ignore: cast_nullable_to_non_nullable
as bool,
  ));
}


}

// dart format on
