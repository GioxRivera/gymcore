class LoginResponseModel {
  String token;
  String error;

  LoginResponseModel({
    this.token = '',
    this.error = '',
  });

  factory LoginResponseModel.fromJson(Map<String, dynamic> json, Map<String, dynamic> auth) {
    return LoginResponseModel(
      token: auth["access_token"] != null ? auth["access_token"] : "",
      error: json["error"] != null ? json["error"] : "",
    );
  }
}

class LoginRequestModel {
  String email;
  String password;

  LoginRequestModel({
    this.email = '',
    this.password = '',
  });

  LoginRequestModel copyWith({
    String? email,
    String? password
  }) => LoginRequestModel(
    email: email ?? this.email,
    password: password ?? this.password,
  );

  factory LoginRequestModel.fromJson(Map json) => LoginRequestModel(
    email: json['email'],
    password: json['password']
  );

  Map<String, dynamic> toJson() => {
    'email': email,
    'password': password,
  };
  
}
