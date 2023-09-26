class Auth {

  int userId;
  int crmGlobal;
  String name;
  String rol;
  String email;
  String status;
  int idCuenta;
  int idSesion;
  int asignacionPermanente;
  String token;
  int gratuita;

  Auth({
      int? userId,
      int? crmGlobal,
      String? name,
      String? rol,
      String? email,
      String? status,
      int? idCuenta,
      int? idSesion,
      int? asignacionPermanente,
      String? token,
      int? gratuita
  }): userId = userId ?? 0,
      crmGlobal = crmGlobal ?? 0,
      name = name ?? "",
      rol = rol ?? "",
      email = email ?? "",
      status = status ?? "",
      idCuenta = idCuenta ?? 0,
      idSesion = idSesion ?? 0,
      asignacionPermanente = asignacionPermanente ?? 0,
      token = token ?? "",
      gratuita = gratuita ?? 0;

  factory Auth.fromJson(Map<String, dynamic> json) {
    return Auth(
        userId: json['user']['data']['id'],
        crmGlobal: json['user']['data']['crm_global'],
        name: json['user']['data']['name'],
        rol: json['user']['data']['rol'],
        email: json['user']['data']['email'],
        idCuenta: json['user']['data']['idcuenta'],
        idSesion: json['user']['data']['idsesion'] ?? json['user']['data']['permisos'][0]['idsesion'],
        asignacionPermanente: json['user']['data']['asignacion_permanente'],
        token: json['access_token'],
        gratuita: json['user']['data']['cuenta']['gratuita']
    );
  }

  factory Auth.fromJson2(Map<String, dynamic> json) {
    return Auth(
        userId: json['userId'] ?? 0 ,
        crmGlobal: json['crmGlobal'] ?? 0,
        name: json['name'],
        rol: json['rol'],
        email: json['email'],
        status: json['status'],
        idCuenta: json['idCuenta'],
        idSesion: json['idSesion'],
        asignacionPermanente: json['asignacionPermanente'],
        token: json['token'],
        gratuita: json['gratuita']
    );
  }

   Map<String, dynamic> toJson() => {
      "userId" : userId,
      "crmGlobal": crmGlobal,
      "name" : name,
      "rol" : rol,
      "email" : email,
      "status" : status,
      "idCuenta" : idCuenta,
      "idSesion" : idSesion,
      "asignacionPermanente": asignacionPermanente,
      "token" : token,
      "gratuita": gratuita
  };
}