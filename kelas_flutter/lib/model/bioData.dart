class BioData {
  String? id, nama, alamat, gender, email;
  BioData.map(dynamic data, key) {
    id = key;
    nama = data['nama'];
    alamat = data['alamat'];
    gender = data['jenis_kelamin'];
    email = data['email'];
  }
}
