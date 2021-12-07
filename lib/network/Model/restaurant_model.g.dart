// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'restaurant_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ClienteModel _$ClienteModelFromJson(Map<String, dynamic> json) => ClienteModel(
      id: json['id'] as int?,
      nombre: json['nombre'] as String?,
      ciudad: json['ciudad'] as String?,
      correo: json['correo'] as String?,
    );

Map<String, dynamic> _$ClienteModelToJson(ClienteModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'nombre': instance.nombre,
      'ciudad': instance.ciudad,
      'correo': instance.correo,
    };

Datos _$DatosFromJson(Map<String, dynamic> json) => Datos(
      nombre: json['nombre'] as String?,
      descripcion: json['descripcion'] as String?,
      precio: json['precio'] as int?,
      url_foto: json['url_foto'] as String?,
    );

Map<String, dynamic> _$DatosToJson(Datos instance) => <String, dynamic>{
      'nombre': instance.nombre,
      'descripcion': instance.descripcion,
      'precio': instance.precio,
      'url_foto': instance.url_foto,
    };

EspecilidadModel _$EspecilidadModelFromJson(Map<String, dynamic> json) =>
    EspecilidadModel(
      datos: json['datos'] == null
          ? null
          : Datos.fromJson(json['datos'] as Map<String, dynamic>),
      respuesta: json['respuesta'] as String?,
    );

Map<String, dynamic> _$EspecilidadModelToJson(EspecilidadModel instance) =>
    <String, dynamic>{
      'datos': instance.datos?.toJson(),
      'respuesta': instance.respuesta,
    };
