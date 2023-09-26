import 'dart:async';

import 'package:gymcore/bloc/validator.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:rxdart/rxdart.dart';

part 'login_user_event.dart';
part 'login_user_state.dart';

class LoginUserBloc extends Bloc<LoginUserEvent, LoginUserState>
    with Validators {
  LoginUserBloc() : super(LoginUserState()) {
    on<LoginAccess>((event, emit) {
      return emit(state.copyWith(
          emailController: event.emailController,
          passwordController: event.passwordController));
    });

    on<WirttenEmail>((event, emit) {
      _emailController.sink.add(event.emailController);
      return emit(state.copyWith(emailController: event.emailController));
    });

    on<WirttenPass>((event, emit) {
      _passwordController.sink.add(event.passwordController);
      return emit(state.copyWith(passwordController: event.passwordController));
    });
  }

  final _emailController = BehaviorSubject<String>();
  final _passwordController = BehaviorSubject<String>();

  Stream<String> get emailStream => _emailController.transform(validateEmail);
  Stream<String> get passwordStream =>
      _passwordController.transform(validatePassword);

  Stream<bool> get formValidStream => CombineLatestStream.combine2(
      emailStream, passwordStream, (dynamic e, dynamic p) => true);
}
