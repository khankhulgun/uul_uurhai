class MapData {
  List<Angilal> angilal;
  List<Buleg> buleg;
  List<Districts> districts;
  List<Regions> regions;
  List<Tuluw> tuluw;

  MapData(
      {this.angilal, this.buleg, this.districts, this.regions, this.tuluw});

  MapData.fromJson(Map<String, dynamic> json) {
    if (json['angilal'] != null) {
      angilal = new List<Angilal>();
      json['angilal'].forEach((v) {
        angilal.add(new Angilal.fromJson(v));
      });
    }
    if (json['buleg'] != null) {
      buleg = new List<Buleg>();
      json['buleg'].forEach((v) {
        buleg.add(new Buleg.fromJson(v));
      });
    }
    if (json['districts'] != null) {
      districts = new List<Districts>();
      json['districts'].forEach((v) {
        districts.add(new Districts.fromJson(v));
      });
    }
    if (json['regions'] != null) {
      regions = new List<Regions>();
      json['regions'].forEach((v) {
        regions.add(new Regions.fromJson(v));
      });
    }
    if (json['tuluw'] != null) {
      tuluw = new List<Tuluw>();
      json['tuluw'].forEach((v) {
        tuluw.add(new Tuluw.fromJson(v));
      });
    }
  }


}

class Angilal {
  int id;
  int bulegId;
  String title;

  Angilal({this.id, this.bulegId, this.title});

  Angilal.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    bulegId = json['buleg_id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['buleg_id'] = this.bulegId;
    data['title'] = this.title;
    return data;
  }
}

class Buleg {
  int id;
  String title;

  Buleg({this.id, this.title});

  Buleg.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['title'] = this.title;
    return data;
  }
}

class Districts {
  Null createdAt;
  String fax;
  String governor;
  int id;
  String nameEn;
  String nameMn;
  int objectId;
  String phone;
  String tailbar;
  String updateAt;
  String website;

  Districts(
      {this.createdAt,
        this.fax,
        this.governor,
        this.id,
        this.nameEn,
        this.nameMn,
        this.objectId,
        this.phone,
        this.tailbar,
        this.updateAt,
        this.website});

  Districts.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    fax = json['fax'];
    governor = json['governor'];
    id = json['id'];
    nameEn = json['name_en'];
    nameMn = json['name_mn'];
    objectId = json['object_id'];
    phone = json['phone'];
    tailbar = json['tailbar'];
    updateAt = json['update_at'];
    website = json['website'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['created_at'] = this.createdAt;
    data['fax'] = this.fax;
    data['governor'] = this.governor;
    data['id'] = this.id;
    data['name_en'] = this.nameEn;
    data['name_mn'] = this.nameMn;
    data['object_id'] = this.objectId;
    data['phone'] = this.phone;
    data['tailbar'] = this.tailbar;
    data['update_at'] = this.updateAt;
    data['website'] = this.website;
    return data;
  }
}

class Regions {
  Null createdAt;
  int districtId;
  String governor;
  int id;
  String name;
  int objectId;
  String phone;
  String updatedAt;

  Regions(
      {this.createdAt,
        this.districtId,
        this.governor,
        this.id,
        this.name,
        this.objectId,
        this.phone,
        this.updatedAt});

  Regions.fromJson(Map<String, dynamic> json) {
    createdAt = json['created_at'];
    districtId = json['district_id'];
    governor = json['governor'];
    id = json['id'];
    name = json['name'];
    objectId = json['object_id'];
    phone = json['phone'];
    updatedAt = json['updated_at'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['created_at'] = this.createdAt;
    data['district_id'] = this.districtId;
    data['governor'] = this.governor;
    data['id'] = this.id;
    data['name'] = this.name;
    data['object_id'] = this.objectId;
    data['phone'] = this.phone;
    data['updated_at'] = this.updatedAt;
    return data;
  }
}

class Tuluw {
  int id;
  String tuluwNer;

  Tuluw({this.id, this.tuluwNer});

  Tuluw.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    tuluwNer = json['tuluw_ner'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['tuluw_ner'] = this.tuluwNer;
    return data;
  }
}
