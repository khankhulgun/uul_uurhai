
import 'dart:convert';

Region RegionFromJson(String str) => Region.fromJson(json.decode(str));

String RegionToJson(Region data) => json.encode(data.toJson());

class Region {
  Attributes attributes;
  Geometry geometry;

  Region({
    this.attributes,
    this.geometry,
  });

  factory Region.fromJson(Map<String, dynamic> json) => Region(
    attributes: Attributes.fromJson(json["attributes"]),
    geometry: Geometry.fromJson(json["geometry"]),
  );

  Map<String, dynamic> toJson() => {
    "attributes": attributes.toJson(),
    "geometry": geometry.toJson(),
  };
}

class Attributes {
  int objectid;
  String khMon;
  String duureg;
  String khorooName;

  Attributes({
    this.objectid,
    this.khMon,
    this.duureg,
    this.khorooName,
  });

  factory Attributes.fromJson(Map<String, dynamic> json) => Attributes(
    objectid: json["OBJECTID"],
    khMon: json["KH_MON"],
    duureg: json["DUUREG"],
    khorooName: json["Khoroo_name"],
  );

  Map<String, dynamic> toJson() => {
    "OBJECTID": objectid,
    "KH_MON": khMon,
    "DUUREG": duureg,
    "Khoroo_name": khorooName,
  };
}

class Geometry {
  List<List<List<double>>> rings;

  Geometry({
    this.rings,
  });

  factory Geometry.fromJson(Map<String, dynamic> json) => Geometry(
    rings: List<List<List<double>>>.from(json["rings"].map((x) => List<List<double>>.from(x.map((x) => List<double>.from(x.map((x) => x.toDouble())))))),
  );

  Map<String, dynamic> toJson() => {
    "rings": List<dynamic>.from(rings.map((x) => List<dynamic>.from(x.map((x) => List<dynamic>.from(x.map((x) => x)))))),
  };
}
