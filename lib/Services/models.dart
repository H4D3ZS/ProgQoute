class QouteModel {
  int? id;
  String? name;
  String? qoutes;

  QouteModel({this.id, this.name, this.qoutes});

  QouteModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    qoutes = json['qoutes'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['qoutes'] = this.qoutes;
    return data;
  }
}
