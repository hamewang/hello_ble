import 'package:dartz/dartz.dart';
import 'package:hello_ble/domain/auth/auth_failure.dart';
import 'package:hello_ble/domain/auth/email_address.dart';
import 'package:hello_ble/domain/auth/password.dart';

abstract class IAuthFacade {
  Future<Either<AuthFailure, Unit>> registerWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithEmailAndPassword({
    required EmailAddress emailAddress,
    required Password password,
  });
  Future<Either<AuthFailure, Unit>> signInWithGoogle();
}
