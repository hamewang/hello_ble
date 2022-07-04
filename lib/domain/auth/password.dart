import 'package:dartz/dartz.dart';
import 'package:hello_ble/core/failures.dart';
import 'package:hello_ble/core/value_objects.dart';
import 'package:hello_ble/core/value_validators.dart';

class Password extends ValueObject<String> {
  @override
  final Either<ValueFailure<String>, String> value;

  factory Password(String input) {
    return Password._(validatePassword(input));
  }
  const Password._(this.value);
}
