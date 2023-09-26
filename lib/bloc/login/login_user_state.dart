part of 'login_user_bloc.dart';

class LoginUserState {
  final String? emailController;
  final String? passwordController;

  LoginUserState({this.emailController, this.passwordController});

  LoginUserState copyWith({
    String? emailController,
    String? passwordController,
  }) =>
      LoginUserState(
        emailController: emailController ?? this.emailController,
        passwordController: passwordController ?? this.passwordController,
      );
}