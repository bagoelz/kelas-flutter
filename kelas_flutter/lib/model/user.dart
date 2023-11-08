class PesertaModel {
  int? id;
  String? idName, nama, created, phone, namaArea, hadiah, gender, idCard;
  bool? selected;
  PesertaModel({
    this.id,
    this.idCard,
    this.idName,
    this.nama,
    this.gender,
    this.selected = false,
    this.phone,
  });

  PesertaModel.map(dynamic data, id) {
    dynamic namaData = data['name'];
    id = id;
    nama = "${namaData['title']} ${namaData['first']} ${namaData['last']}";
    idCard = data['id']["value"] ?? "";
    idName = data['id']["name"] ?? "";
    selected = data['selected'] ?? false;
  }
}
