import 'package:flutter/foundation.dart';


@immutable
class UserModel {

  const UserModel({
    required this.id,
    required this.email,
    required this.phone,
    required this.namaLengkap,
    required this.photo,
    required this.tglRegistrasi,
  });

  final String id;
  final String email;
  final String phone;
  final String namaLengkap;
  final String photo;
  final String tglRegistrasi;

  factory UserModel.fromJson(Map<String,dynamic> json) => UserModel(
    id: json['id'] as String,
    email: json['email'] as String,
    phone: json['phone'] as String,
    namaLengkap: json['nama_lengkap'] as String,
    photo: json['photo'] as String,
    tglRegistrasi: json['tgl_registrasi'] as String
  );
  
  Map<String, dynamic> toJson() => {
    'id': id,
    'email': email,
    'phone': phone,
    'nama_lengkap': namaLengkap,
    'photo': photo,
    'tgl_registrasi': tglRegistrasi
  };

  UserModel clone() => UserModel(
    id: id,
    email: email,
    phone: phone,
    namaLengkap: namaLengkap,
    photo: photo,
    tglRegistrasi: tglRegistrasi
  );


  UserModel copyWith({
    String? id,
    String? email,
    String? phone,
    String? namaLengkap,
    String? photo,
    String? tglRegistrasi
  }) => UserModel(
    id: id ?? this.id,
    email: email ?? this.email,
    phone: phone ?? this.phone,
    namaLengkap: namaLengkap ?? this.namaLengkap,
    photo: photo ?? this.photo,
    tglRegistrasi: tglRegistrasi ?? this.tglRegistrasi,
  );

  @override
  bool operator ==(Object other) => identical(this, other)
    || other is UserModel && id == other.id && email == other.email && phone == other.phone && namaLengkap == other.namaLengkap && photo == other.photo && tglRegistrasi == other.tglRegistrasi;

  @override
  int get hashCode => id.hashCode ^ email.hashCode ^ phone.hashCode ^ namaLengkap.hashCode ^ photo.hashCode ^ tglRegistrasi.hashCode;
}
