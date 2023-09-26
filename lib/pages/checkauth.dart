import 'package:flutter/material.dart';
import 'package:gymcore/pages/pages.dart';
import 'package:gymcore/providers/auth.dart';
import 'package:gymcore/services/auth_service.dart';

import '../utils/loading.dart';

class CheckAuth extends StatelessWidget {
  static const String routeName = '/checkauth';
  final AuthService authService = AuthService();
  final userProvider = AuthProvider();
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder(
        future: authService.isAuthenticated(),
        builder: (BuildContext context, AsyncSnapshot<String> snapshot) {
          if (!snapshot.hasData) {
            return LoadingPage();
          }
          
          if (snapshot.data !=  '') {
            Future.microtask(() => {
              Navigator.pushReplacement(context, PageRouteBuilder(
                  pageBuilder: ( _, __ , ___ ) => const Menu(initialIndex: 0),
                  transitionDuration: const Duration( seconds: 0)
                  )
                )
            });
          }

          if (snapshot.data == '') {
            Future.microtask(() => {
              Navigator.pushReplacement(context, PageRouteBuilder(
                  pageBuilder: ( _, __ , ___ ) => Login(),
                  transitionDuration: const Duration( seconds: 0)
                  )
                )
            });
          }

          return Container();
        }
      ),
    );
  }

}