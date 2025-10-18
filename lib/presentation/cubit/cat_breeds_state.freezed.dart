// GENERATED CODE - DO NOT MODIFY BY HAND
// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'cat_breeds_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

// dart format off
T _$identity<T>(T value) => value;
/// @nodoc
mixin _$CatBreedsState {





@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatBreedsState);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatBreedsState()';
}


}

/// @nodoc
class $CatBreedsStateCopyWith<$Res>  {
$CatBreedsStateCopyWith(CatBreedsState _, $Res Function(CatBreedsState) __);
}


/// Adds pattern-matching-related methods to [CatBreedsState].
extension CatBreedsStatePatterns on CatBreedsState {
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

@optionalTypeArgs TResult maybeMap<TResult extends Object?>({TResult Function( _Initial value)?  initial,TResult Function( Loading value)?  loading,TResult Function( CatBreedsLoaded value)?  catBreedsLoaded,TResult Function( Error value)?  error,required TResult orElse(),}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case CatBreedsLoaded() when catBreedsLoaded != null:
return catBreedsLoaded(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult map<TResult extends Object?>({required TResult Function( _Initial value)  initial,required TResult Function( Loading value)  loading,required TResult Function( CatBreedsLoaded value)  catBreedsLoaded,required TResult Function( Error value)  error,}){
final _that = this;
switch (_that) {
case _Initial():
return initial(_that);case Loading():
return loading(_that);case CatBreedsLoaded():
return catBreedsLoaded(_that);case Error():
return error(_that);case _:
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

@optionalTypeArgs TResult? mapOrNull<TResult extends Object?>({TResult? Function( _Initial value)?  initial,TResult? Function( Loading value)?  loading,TResult? Function( CatBreedsLoaded value)?  catBreedsLoaded,TResult? Function( Error value)?  error,}){
final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial(_that);case Loading() when loading != null:
return loading(_that);case CatBreedsLoaded() when catBreedsLoaded != null:
return catBreedsLoaded(_that);case Error() when error != null:
return error(_that);case _:
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

@optionalTypeArgs TResult maybeWhen<TResult extends Object?>({TResult Function()?  initial,TResult Function()?  loading,TResult Function( List<Cat> cat)?  catBreedsLoaded,TResult Function( String error)?  error,required TResult orElse(),}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case CatBreedsLoaded() when catBreedsLoaded != null:
return catBreedsLoaded(_that.cat);case Error() when error != null:
return error(_that.error);case _:
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

@optionalTypeArgs TResult when<TResult extends Object?>({required TResult Function()  initial,required TResult Function()  loading,required TResult Function( List<Cat> cat)  catBreedsLoaded,required TResult Function( String error)  error,}) {final _that = this;
switch (_that) {
case _Initial():
return initial();case Loading():
return loading();case CatBreedsLoaded():
return catBreedsLoaded(_that.cat);case Error():
return error(_that.error);case _:
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

@optionalTypeArgs TResult? whenOrNull<TResult extends Object?>({TResult? Function()?  initial,TResult? Function()?  loading,TResult? Function( List<Cat> cat)?  catBreedsLoaded,TResult? Function( String error)?  error,}) {final _that = this;
switch (_that) {
case _Initial() when initial != null:
return initial();case Loading() when loading != null:
return loading();case CatBreedsLoaded() when catBreedsLoaded != null:
return catBreedsLoaded(_that.cat);case Error() when error != null:
return error(_that.error);case _:
  return null;

}
}

}

/// @nodoc


class _Initial implements CatBreedsState {
  const _Initial();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Initial);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatBreedsState.initial()';
}


}




/// @nodoc


class Loading implements CatBreedsState {
  const Loading();
  






@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Loading);
}


@override
int get hashCode => runtimeType.hashCode;

@override
String toString() {
  return 'CatBreedsState.loading()';
}


}




/// @nodoc


class CatBreedsLoaded implements CatBreedsState {
  const CatBreedsLoaded(final  List<Cat> cat): _cat = cat;
  

 final  List<Cat> _cat;
 List<Cat> get cat {
  if (_cat is EqualUnmodifiableListView) return _cat;
  // ignore: implicit_dynamic_type
  return EqualUnmodifiableListView(_cat);
}


/// Create a copy of CatBreedsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$CatBreedsLoadedCopyWith<CatBreedsLoaded> get copyWith => _$CatBreedsLoadedCopyWithImpl<CatBreedsLoaded>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is CatBreedsLoaded&&const DeepCollectionEquality().equals(other._cat, _cat));
}


@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(_cat));

@override
String toString() {
  return 'CatBreedsState.catBreedsLoaded(cat: $cat)';
}


}

/// @nodoc
abstract mixin class $CatBreedsLoadedCopyWith<$Res> implements $CatBreedsStateCopyWith<$Res> {
  factory $CatBreedsLoadedCopyWith(CatBreedsLoaded value, $Res Function(CatBreedsLoaded) _then) = _$CatBreedsLoadedCopyWithImpl;
@useResult
$Res call({
 List<Cat> cat
});




}
/// @nodoc
class _$CatBreedsLoadedCopyWithImpl<$Res>
    implements $CatBreedsLoadedCopyWith<$Res> {
  _$CatBreedsLoadedCopyWithImpl(this._self, this._then);

  final CatBreedsLoaded _self;
  final $Res Function(CatBreedsLoaded) _then;

/// Create a copy of CatBreedsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? cat = null,}) {
  return _then(CatBreedsLoaded(
null == cat ? _self._cat : cat // ignore: cast_nullable_to_non_nullable
as List<Cat>,
  ));
}


}

/// @nodoc


class Error implements CatBreedsState {
  const Error({required this.error});
  

 final  String error;

/// Create a copy of CatBreedsState
/// with the given fields replaced by the non-null parameter values.
@JsonKey(includeFromJson: false, includeToJson: false)
@pragma('vm:prefer-inline')
$ErrorCopyWith<Error> get copyWith => _$ErrorCopyWithImpl<Error>(this, _$identity);



@override
bool operator ==(Object other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is Error&&(identical(other.error, error) || other.error == error));
}


@override
int get hashCode => Object.hash(runtimeType,error);

@override
String toString() {
  return 'CatBreedsState.error(error: $error)';
}


}

/// @nodoc
abstract mixin class $ErrorCopyWith<$Res> implements $CatBreedsStateCopyWith<$Res> {
  factory $ErrorCopyWith(Error value, $Res Function(Error) _then) = _$ErrorCopyWithImpl;
@useResult
$Res call({
 String error
});




}
/// @nodoc
class _$ErrorCopyWithImpl<$Res>
    implements $ErrorCopyWith<$Res> {
  _$ErrorCopyWithImpl(this._self, this._then);

  final Error _self;
  final $Res Function(Error) _then;

/// Create a copy of CatBreedsState
/// with the given fields replaced by the non-null parameter values.
@pragma('vm:prefer-inline') $Res call({Object? error = null,}) {
  return _then(Error(
error: null == error ? _self.error : error // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

// dart format on
