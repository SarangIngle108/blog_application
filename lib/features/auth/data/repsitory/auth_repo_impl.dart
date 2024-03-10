import 'package:blog_application/core/error/exceptions.dart';
import 'package:blog_application/core/error/failures.dart';
import 'package:blog_application/features/auth/data/data_sources/auth_remote_data_source.dart';
import 'package:blog_application/features/auth/domain/repository/auth_repository.dart';
import 'package:fpdart/fpdart.dart';

class AuthRepoImpl implements AuthRepository {
  final AuthRemoteDataSource remoteDataSource;
  AuthRepoImpl(this.remoteDataSource);
  @override
  Future<Either<Failure, String>> logInWithEmailPassword(
      {required String email, required String passWord}) {
    // TODO: implement logInWithEmailPassword
    throw UnimplementedError();
  }

  @override
  Future<Either<Failure, String>> signUpWithEmailPassword(
      {required String name,
      required String email,
      required String passWord}) async {
    try {
      final userId = await remoteDataSource.signUpWithEmailPassword(
          name: name, email: email, password: passWord);

      return right(userId);
    } on ServerException catch (e) {
      return left(Failure(e.message));
    }
  }
}
