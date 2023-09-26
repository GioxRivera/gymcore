part of 'login_user_bloc.dart';

@immutable
abstract class LoginUserEvent {}

class LoginAccess extends LoginUserEvent {
  final String emailController;
  final String passwordController;

  LoginAccess(this.emailController, this.passwordController);
}

class WirttenEmail extends LoginUserEvent {
  final String emailController;
  WirttenEmail(this.emailController);
}

class WirttenPass extends LoginUserEvent {
  final String passwordController;
  WirttenPass(this.passwordController);
}
