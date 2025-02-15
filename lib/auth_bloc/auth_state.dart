abstract class AuthState {}

class AuthInitial extends AuthState {} // начальное состояние

class AuthLoading extends AuthState {} //состояние загрузки при  входе и вызходе

class Authenticated extends AuthState {
  final String userEmail; //ели пользователь вошел
  Authenticated(this.userEmail);
}

class Unauthenticated extends AuthState {} // если пользователь не авторизован

class AuthError extends AuthState {
  final String message; //ошибка
  AuthError(this.message);
}
