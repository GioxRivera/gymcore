import 'package:flutter/material.dart';

class Toast {
  void toastWidget(BuildContext context, bool status, String message) {
    final scaffold = ScaffoldMessenger.of(context);
    scaffold.showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        backgroundColor: (status) ? Colors.green : Color.fromRGBO(191, 80, 80, 1),
        content: Text(message),
        action: SnackBarAction(
          textColor: Colors.white,
          label: 'Cerrar', 
          onPressed: scaffold.hideCurrentSnackBar
        ),
      ),
    );
  }
}