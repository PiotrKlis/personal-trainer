// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'client.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;


final _privateConstructorUsedError = UnsupportedError('It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ClientTearOff {
  const _$ClientTearOff();

_Client call({required  String id, required  String email, required  String name, required  required trainerEmail,  String phoneNumber = ""}) {
  return  _Client(id:id,email:email,name:name,trainerEmail:trainerEmail,phoneNumber:phoneNumber,);
}

}

/// @nodoc
const $Client = _$ClientTearOff();

/// @nodoc
mixin _$Client {

 String get id => throw _privateConstructorUsedError; String get email => throw _privateConstructorUsedError; String get name => throw _privateConstructorUsedError; required get trainerEmail => throw _privateConstructorUsedError; String get phoneNumber => throw _privateConstructorUsedError;








@JsonKey(ignore: true)
$ClientCopyWith<Client> get copyWith => throw _privateConstructorUsedError;

}

/// @nodoc
abstract class $ClientCopyWith<$Res>  {
  factory $ClientCopyWith(Client value, $Res Function(Client) then) = _$ClientCopyWithImpl<$Res>;
$Res call({
 String id, String email, String name, required trainerEmail, String phoneNumber
});



}

/// @nodoc
class _$ClientCopyWithImpl<$Res> implements $ClientCopyWith<$Res> {
  _$ClientCopyWithImpl(this._value, this._then);

  final Client _value;
  // ignore: unused_field
  final $Res Function(Client) _then;

@override $Res call({Object? id = freezed,Object? email = freezed,Object? name = freezed,Object? trainerEmail = freezed,Object? phoneNumber = freezed,}) {
  return _then(_value.copyWith(
id: id == freezed ? _value.id : id // ignore: cast_nullable_to_non_nullable
as String,email: email == freezed ? _value.email : email // ignore: cast_nullable_to_non_nullable
as String,name: name == freezed ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,trainerEmail: trainerEmail == freezed ? _value.trainerEmail : trainerEmail // ignore: cast_nullable_to_non_nullable
as required,phoneNumber: phoneNumber == freezed ? _value.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}

}


/// @nodoc
abstract class _$ClientCopyWith<$Res> implements $ClientCopyWith<$Res> {
  factory _$ClientCopyWith(_Client value, $Res Function(_Client) then) = __$ClientCopyWithImpl<$Res>;
@override $Res call({
 String id, String email, String name, required trainerEmail, String phoneNumber
});



}

/// @nodoc
class __$ClientCopyWithImpl<$Res> extends _$ClientCopyWithImpl<$Res> implements _$ClientCopyWith<$Res> {
  __$ClientCopyWithImpl(_Client _value, $Res Function(_Client) _then)
      : super(_value, (v) => _then(v as _Client));

@override
_Client get _value => super._value as _Client;

@override $Res call({Object? id = freezed,Object? email = freezed,Object? name = freezed,Object? trainerEmail = freezed,Object? phoneNumber = freezed,}) {
  return _then(_Client(
id: id == freezed ? _value.id : id // ignore: cast_nullable_to_non_nullable
as String,email: email == freezed ? _value.email : email // ignore: cast_nullable_to_non_nullable
as String,name: name == freezed ? _value.name : name // ignore: cast_nullable_to_non_nullable
as String,trainerEmail: trainerEmail == freezed ? _value.trainerEmail : trainerEmail // ignore: cast_nullable_to_non_nullable
as required,phoneNumber: phoneNumber == freezed ? _value.phoneNumber : phoneNumber // ignore: cast_nullable_to_non_nullable
as String,
  ));
}


}

/// @nodoc


class _$_Client  implements _Client {
  const _$_Client({required this.id, required this.email, required this.name, required this.trainerEmail, this.phoneNumber = ""});

  

@override  final String id;
@override  final String email;
@override  final String name;
@override  final required trainerEmail;
@JsonKey(defaultValue: "") @override  final String phoneNumber;

@override
String toString() {
  return 'Client(id: $id, email: $email, name: $name, trainerEmail: $trainerEmail, phoneNumber: $phoneNumber)';
}


@override
bool operator ==(dynamic other) {
  return identical(this, other) || (other.runtimeType == runtimeType&&other is _Client&&const DeepCollectionEquality().equals(other.id, id)&&const DeepCollectionEquality().equals(other.email, email)&&const DeepCollectionEquality().equals(other.name, name)&&const DeepCollectionEquality().equals(other.trainerEmail, trainerEmail)&&const DeepCollectionEquality().equals(other.phoneNumber, phoneNumber));
}

@override
int get hashCode => Object.hash(runtimeType,const DeepCollectionEquality().hash(id),const DeepCollectionEquality().hash(email),const DeepCollectionEquality().hash(name),const DeepCollectionEquality().hash(trainerEmail),const DeepCollectionEquality().hash(phoneNumber));

@JsonKey(ignore: true)
@override
_$ClientCopyWith<_Client> get copyWith => __$ClientCopyWithImpl<_Client>(this, _$identity);








}


abstract class _Client implements Client {
  const factory _Client({required  String id, required  String email, required  String name, required  required trainerEmail,  String phoneNumber}) = _$_Client;
  

  

@override  String get id;@override  String get email;@override  String get name;@override  required get trainerEmail;@override  String get phoneNumber;
@override @JsonKey(ignore: true)
_$ClientCopyWith<_Client> get copyWith => throw _privateConstructorUsedError;

}
