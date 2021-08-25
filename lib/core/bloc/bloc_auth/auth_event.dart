abstract class AuthEvent {}

class CheckCurrentUser extends AuthEvent {}

class LoadUser extends AuthEvent {
  final String email;
  final String password;

  LoadUser({
    required this.email,
    required this.password,
  });
}

class UnloadUser extends AuthEvent {}


