import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../bloc/login/login_user_bloc.dart';

class AuthService {

  final storage = new FlutterSecureStorage();

  Future logout(BuildContext context) async {
    final loginBloc = BlocProvider.of<LoginUserBloc>(context);

    loginBloc.add(WirttenEmail(''));
    loginBloc.add(WirttenEmail(''));
    
    await storage.delete(key: 'token');
    await storage.delete(key: 'user');
    
    return;
  }

  Future<String> isAuthenticated() async {
    return await storage.read(key: 'token') ?? '';
  }
  
}