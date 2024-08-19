  class LoginModel {
  LoginModel({
      this.code, 
      this.status, 
      this.message, 
      this.data,});

  LoginModel.fromJson(dynamic json) {
    code = json['code'];
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? Data.fromJson(json['data']) : null;
  }
  num? code;
  bool? status;
  String? message;
  Data? data;
LoginModel copyWith({  num? code,
  bool? status,
  String? message,
  Data? data,
}) => LoginModel(  code: code ?? this.code,
  status: status ?? this.status,
  message: message ?? this.message,
  data: data ?? this.data,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['code'] = code;
    map['status'] = status;
    map['message'] = message;
    if (data != null) {
      map['data'] = data?.toJson();
    }
    return map;
  }

}

class Data {
  Data({
      this.user, 
      this.token,});

  Data.fromJson(dynamic json) {
    user = json['user'] != null ? User.fromJson(json['user']) : null;
    token = json['token'];
  }
  User? user;
  String? token;
Data copyWith({  User? user,
  String? token,
}) => Data(  user: user ?? this.user,
  token: token ?? this.token,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    if (user != null) {
      map['user'] = user?.toJson();
    }
    map['token'] = token;
    return map;
  }

}

class User {
  User({
      this.id, 
      this.name, 
      this.email, 
      this.phone, 
      this.dialcode, 
      this.countryName, 
      this.countryCode, 
      this.blocked, 
      this.emailVerified, 
      this.image, 
      this.lastLoggedInAt, 
      this.createdAt,});

  User.fromJson(dynamic json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    phone = json['phone'];
    dialcode = json['dialcode'];
    countryName = json['country_name'];
    countryCode = json['country_code'];
    blocked = json['blocked'];
    emailVerified = json['email_verified'];
    image = json['image'];
    lastLoggedInAt = json['last_logged_in_at'];
    createdAt = json['created_at'];
  }
  num? id;
  String? name;
  String? email;
  String? phone;
  String? dialcode;
  String? countryName;
  String? countryCode;
  bool? blocked;
  bool? emailVerified;
  String? image;
  String? lastLoggedInAt;
  String? createdAt;
User copyWith({  num? id,
  String? name,
  String? email,
  String? phone,
  String? dialcode,
  String? countryName,
  String? countryCode,
  bool? blocked,
  bool? emailVerified,
  String? image,
  String? lastLoggedInAt,
  String? createdAt,
}) => User(  id: id ?? this.id,
  name: name ?? this.name,
  email: email ?? this.email,
  phone: phone ?? this.phone,
  dialcode: dialcode ?? this.dialcode,
  countryName: countryName ?? this.countryName,
  countryCode: countryCode ?? this.countryCode,
  blocked: blocked ?? this.blocked,
  emailVerified: emailVerified ?? this.emailVerified,
  image: image ?? this.image,
  lastLoggedInAt: lastLoggedInAt ?? this.lastLoggedInAt,
  createdAt: createdAt ?? this.createdAt,
);
  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['id'] = id;
    map['name'] = name;
    map['email'] = email;
    map['phone'] = phone;
    map['dialcode'] = dialcode;
    map['country_name'] = countryName;
    map['country_code'] = countryCode;
    map['blocked'] = blocked;
    map['email_verified'] = emailVerified;
    map['image'] = image;
    map['last_logged_in_at'] = lastLoggedInAt;
    map['created_at'] = createdAt;
    return map;
  }

}