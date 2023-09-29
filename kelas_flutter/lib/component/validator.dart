class Validator {
  Validator();
  String? email(String? value) {
    String pattern = r'^[a-zA-Z0-9._]+@[a-zA-Z0-9_]+\.[a-zA-Z_]+';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value!))
      return "Format email tidak sesuai";
    else
      return null;
  }

  String? validateUsername(String? value) {
    if (value!.isEmpty) return 'dibutuhkan';
    final RegExp nameExp = new RegExp(r'^[A-za-z0-9]+$');
    if (!nameExp.hasMatch(value)) return 'Hanya huruf Alphabet yang di izinkan';
    return null;
  }

  String? password(String? value) {
    String pattern = r'^.{6,}$';
    RegExp regex = RegExp(pattern);
    if (!regex.hasMatch(value!))
      return "password minimal 6 Karakter";
    else
      return null;
  }

  String? name(String? value) {
    String pattern = r"^[a-zA-Z]+(([',. -][a-zA-Z ])?[a-zA-Z]*)*$";
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value!)) {
      return "Karakter hanya di izinkan Alphabet";
    } else
      return null;
  }

  String? type(String? value) {
    RegExp regex = new RegExp(r'^[A-za-z0-9,.() -/]+$');
    if (!regex.hasMatch(value!)) {
      return "Karakter hanya di izinkan Alphabet dan angka";
    } else
      return null;
  }

  String? serial(String? value) {
    RegExp regex = new RegExp(r'^[A-za-z0-9,.() -/]+$');
    if (!regex.hasMatch(value!)) {
      return 'harus di isi';
    } else
      return null;
  }

  String? namaProduk(String? value) {
    String pattern = r'^[A-za-z0-9,.()# -]+$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value!))
      return 'Nama produk tidak boleh kosong';
    else
      return null;
  }

  String? address(String? value) {
    RegExp regex = new RegExp(r'^[A-za-z0-9,.()# -]+$');
    if (!regex.hasMatch(value!))
      return "Karakter hanya di izinkan Alphabet dan angka";
    else
      return null;
  }

  String? price(String? value) {
    if (value!.isEmpty) return 'Tidak boleh kosong';
    final RegExp nameExp = RegExp(r'^[0-9,+]+$');
    if (!nameExp.hasMatch(value))
      return 'Karakter tidak di izinkan'; //validator.phoneAllowed
    return null;
  }

  String? amount(String? value) {
    if (value!.isEmpty) return 'Tidak boleh kosong';
    final RegExp nameExp = RegExp(r'^[0-9,+]+$');
    if (!nameExp.hasMatch(value))
      return 'Karakter tidak di izinkan'; //validator.phoneAllowed
    return null;
  }

  String? phoneNumber(String? value) {
    if (value!.isEmpty) return "Nomo handphone tidak boleh kosong";
    final RegExp nameExp = new RegExp(r'^[0-9+]+$');
    if (!nameExp.hasMatch(value)) return "hanya angka"; //validator.phoneAllowed
    return null;
  }

  String? notEmpty(String? value) {
    String pattern = r'^\S+$';
    RegExp regex = new RegExp(pattern);
    if (!regex.hasMatch(value!))
      return "tidak boleh kosong";
    else
      return null;
  }

  String? validateCharacter(String? value) {
    if (value!.isEmpty) return 'belum di isi';
    //  final RegExp nameExp = new RegExp(r'^[A-Za]+$');
    // if (!nameExp.hasMatch(value))
    //   return 'Please enter only alphabetical characters.';
    return null;
  }
}
