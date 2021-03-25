
class Aimag {
  int aimagId;
  int too;
  String aimagname;
  bool selected;

  Aimag({
    this.aimagId,
    this.too,
    this.aimagname,
    this.selected,
  });

  Aimag.fromJson(Map<String, dynamic> json) {
    aimagId =json["aimag_id"];
    too = json["too"];
    aimagname = json["aimagname"];
    selected= false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['aimag_id'] = this.aimagId;
    data['too'] = this.too;
    data['aimagname'] = this.aimagname;
    data['selected'] = this.selected;

    return data;
  }

}
class Sum {
  int sumId;
  int too;
  String sumname;
  String aimagname;
  bool selected;

  Sum({
    this.sumId,
    this.too,
    this.sumname,
    this.aimagname,
    this.selected,
  });

  Sum.fromJson(Map<String, dynamic> json) {
    sumId =json["sum_id"];
    too = json["too"];
    sumname = json["sumname"];
    aimagname = json["aimagname"];
    selected= false;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['sum_id'] = this.sumId;
    data['too'] = this.too;
    data['sumname'] = this.sumname;
    data['aimagname'] = this.aimagname;
    data['selected'] = this.selected;

    return data;
  }

}
class Salbar {
  int salbarId;
  int too;
  String tp_section;
  bool selected;
  Salbar({
    this.salbarId,
    this.too,
    this.tp_section,
    this.selected,
  });
  Salbar.fromJson(Map<String, dynamic> json) {
    salbarId =json["salbar_id"];
    too = json["too"];
    tp_section = json["tp_section"];
    selected= false;
  }
  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['salbar_id'] = this.salbarId;
    data['too'] = this.too;
    data['tp_section'] = this.tp_section;
    data['selected'] = this.selected;
    return data;
  }

}