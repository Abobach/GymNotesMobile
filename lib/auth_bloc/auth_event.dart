abstract class AuthEvent {}

class AuthSignIn extends AuthEvent {
  final String email;
  final String password;
  AuthSignIn({required this.email, required this.password});
}

class AuthSignOut extends AuthEvent {}

class AuthCheckStatus extends AuthEvent {}