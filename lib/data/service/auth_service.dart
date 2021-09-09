import 'package:get_it/get_it.dart';
import 'package:shop/data/repositories/auth_repository.dart';

class AuthService {
  final repository = GetIt.instance<AuthRepository>();

  Future<String> signIn({required String email, required String password}) async {
    return await repository.signIn(email: email, password: password);
  }

  Future<String> signOut() async {
     return await repository.signOut();
  }

  Future<String> createAccount({required String email, required String password}) async{
    return await repository.createAccount(email: email, password: password);
  }
}
