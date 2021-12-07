import 'package:json_annotation/json_annotation.dart';

part 'restaurant_model.g.dart';

@JsonSerializable()
class ClienteModel {
  int? id;
  String? nombre;
  String? ciudad;
  String? correo;

  ClienteModel({this.id, this.nombre, this.ciudad, this.correo});

  factory ClienteModel.fromJson(Map<String, dynamic> json) =>
      _$ClienteModelFromJson(json);
  Map<String, dynamic> toJson() => _$ClienteModelToJson(this);
}

@JsonSerializable()
class Datos {
  String? nombre;
  String? descripcion;
  int? precio;
  String? url_foto;

  Datos({
    this.nombre,
    this.descripcion,
    this.precio,
    this.url_foto,
  });

  factory Datos.fromJson(Map<String, dynamic> json) => _$DatosFromJson(json);
  Map<String, dynamic> toJson() => _$DatosToJson(this);
}

@JsonSerializable(explicitToJson: true)
class EspecilidadModel {
  Datos? datos;
  String? respuesta;

  EspecilidadModel({this.datos, this.respuesta});

  factory EspecilidadModel.fromJson(Map<String, dynamic> json) =>
      _$EspecilidadModelFromJson(json);

  Map<String, dynamic> toJson() => _$EspecilidadModelToJson(this);
}
