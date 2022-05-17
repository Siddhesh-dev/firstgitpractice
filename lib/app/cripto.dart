import 'package:encrypt/encrypt.dart';

void main() {
  //final key = Key.fromUtf8('my 32 length key................');
  final key = Key.fromUtf8('fnr7JCu0ZmkNAdlVylJ4v1e58U6lUUre');
  final iv = IV.fromUtf8('1234123412341234');
  final encrypter = Encrypter(AES(key));
  String plainText = "DNYA";
  var encrypted = encrypter.encrypt(plainText, iv: iv);
  print(encrypted.base64);
}
