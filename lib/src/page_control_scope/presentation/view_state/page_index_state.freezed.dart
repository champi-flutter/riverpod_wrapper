// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_index_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$PageIndexState {

 int get currentIndex; int? get pendingIndex;
/// Create a copy of PageIndexState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$PageIndexStateCopyWith<PageIndexState> get copyWith => _$PageIndexStateCopyWithImpl<PageIndexState>(this as PageIndexState, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is PageIndexState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.pendingIndex, pendingIndex) || other.pendingIndex == pendingIndex));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,pendingIndex);

@override
String toString() {
  return 'PageIndexState(currentIndex: $currentIndex, pendingIndex: $pendingIndex)';
}


}

/// @nodoc
abstract mixin class $PageIndexStateCopyWith<$Res>  {
  factory $PageIndexStateCopyWith(PageIndexState value, $Res Function(PageIndexState) _then) = _$PageIndexStateCopyWithImpl;
@useResult
$Res call({
 int currentIndex, int? pendingIndex
});




}
/// @nodoc
class _$PageIndexStateCopyWithImpl<$Res>
    implements $PageIndexStateCopyWith<$Res> {
  _$PageIndexStateCopyWithImpl(this._self, this._then);

  final PageIndexState _self;
  final $Res Function(PageIndexState) _then;

/// Create a copy of PageIndexState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') @override $Res call({Object? currentIndex = null,Object? pendingIndex = freezed,}) {
  return _then(_self.copyWith(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,pendingIndex: freezed == pendingIndex ? _self.pendingIndex : pendingIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}

}


/// Adds pattern-matching-related methods to [PageIndexState].
extension PageIndexStatePatterns on PageIndexState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>(TResult Function( _PageIndexState value)?  $default,{required TResult orElse(),}){
final _that = this;
switch (_that) {
case _PageIndexState() when $default != null:
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

@optionalTypeArgs TResult map<TResult extends Object?>(TResult Function( _PageIndexState value)  $default,){
final _that = this;
switch (_that) {
case _PageIndexState():
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>(TResult? Function( _PageIndexState value)?  $default,){
final _that = this;
switch (_that) {
case _PageIndexState() when $default != null:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>(TResult Function( int currentIndex,  int? pendingIndex)?  $default,{required TResult orElse(),}) {final _that = this;
switch (_that) {
case _PageIndexState() when $default != null:
return $default(_that.currentIndex,_that.pendingIndex);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>(TResult Function( int currentIndex,  int? pendingIndex)  $default,) {final _that = this;
switch (_that) {
case _PageIndexState():
return $default(_that.currentIndex,_that.pendingIndex);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>(TResult? Function( int currentIndex,  int? pendingIndex)?  $default,) {final _that = this;
switch (_that) {
case _PageIndexState() when $default != null:
return $default(_that.currentIndex,_that.pendingIndex);case _:
  return null;

}
}

}

/// @nodoc


class _PageIndexState extends PageIndexState {
  const _PageIndexState({required this.currentIndex, required this.pendingIndex}): super._();
  

@override final  int currentIndex;
@override final  int? pendingIndex;

/// Create a copy of PageIndexState
/// with the given fields replaced by the non-null parameter values.
@override @JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
_$PageIndexStateCopyWith<_PageIndexState> get copyWith => __$PageIndexStateCopyWithImpl<_PageIndexState>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _PageIndexState&&(identical(other.currentIndex, currentIndex) || other.currentIndex == currentIndex)&&(identical(other.pendingIndex, pendingIndex) || other.pendingIndex == pendingIndex));
}


@override
int get hashCode => Object.hash(runtimeType,currentIndex,pendingIndex);

@override
String toString() {
  return 'PageIndexState(currentIndex: $currentIndex, pendingIndex: $pendingIndex)';
}


}

/// @nodoc
abstract mixin class _$PageIndexStateCopyWith<$Res> implements $PageIndexStateCopyWith<$Res> {
  factory _$PageIndexStateCopyWith(_PageIndexState value, $Res Function(_PageIndexState) _then) = __$PageIndexStateCopyWithImpl;
@override @useResult
$Res call({
 int currentIndex, int? pendingIndex
});




}
/// @nodoc
class __$PageIndexStateCopyWithImpl<$Res>
    implements _$PageIndexStateCopyWith<$Res> {
  __$PageIndexStateCopyWithImpl(this._self, this._then);

  final _PageIndexState _self;
  final $Res Function(_PageIndexState) _then;

/// Create a copy of PageIndexState
/// with the given fields replaced by the non-null parameter values.
@override @pragma('vm:prefer-inline') $Res call({Object? currentIndex = null,Object? pendingIndex = freezed,}) {
  return _then(_PageIndexState(
currentIndex: null == currentIndex ? _self.currentIndex : currentIndex // ignore: cast_nullable_to_non_nullable
as int,pendingIndex: freezed == pendingIndex ? _self.pendingIndex : pendingIndex // ignore: cast_nullable_to_non_nullable
as int?,
  ));
}


}

// dart format on
