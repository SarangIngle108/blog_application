import 'package:blog_application/core/error/failures.dart';
import 'package:fpdart/fpdart.dart';

abstract interface class AuthRepository {
  Future<Either<Failure, String>> signUpWithEmailPassword({
    required String name,
    required String email,
    required String passWord,
  });

  Future<Either<Failure, String>> logInWithEmailPassword({
    required String email,
    required String passWord,
  });
}
