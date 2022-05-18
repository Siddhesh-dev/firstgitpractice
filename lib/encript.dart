import 'package:encrypt/encrypt.dart';
import 'dart:convert';
void main() {
  var decriptedVal =
      EncryptData.decrypt('DPl6fkZP9VNEBRzIvCszUg==');
  print(decriptedVal);
}

class EncryptData {
//for AES Algorithms
  static Encrypted? encrypted;
  static var decrypted;

  static encryptAES(plainText) {
    //final key = Key.fromUtf8('my 32 length key................');
    final key = Key.fromSecureRandom(31);
    final iv = IV.fromLength(16);
    // final encrypter = Encrypter(AES(key));
    final Encrypter encrypter =
        Encrypter(AES(key, mode: AESMode.cbc, padding: null));
    encrypted = encrypter.encrypt(plainText, iv: iv);
    print(encrypted!.base64);
  }

  static decryptAES(plainText) {
    final key = Key.fromUtf8('SMbmKkMUJhMTuF4rWCU06aF2bqyrOBgl');
    final iv = IV.fromUtf8('1234123412341234');
    //final encrypter = Encrypter(AES(key));
    final encrypter = Encrypter(AES(key, mode: AESMode.cbc, padding: null));
    try {
      decrypted = encrypter.decrypt(plainText, iv: iv);
    } catch (e) {
      print(e);
    }
    print(decrypted);
  }

  static String decrypt(String encrypted) {
    final key =
        Key.fromUtf8("SMbmKkMUJhMTuF4rWCU06aF2bqyrOBgl"); //hardcode combination of 16 character
    final iv =
        IV.fromUtf8("1234123412341234"); //hardcode combination of 16 character

   final encrypter = Encrypter(AES(key, mode: AESMode.ecb,padding: null));
   /* final b64key = Key.fromUtf8('SMbmKkMUJhMTuF4rWCU06aF2bqyrOBgl');
    // if you need to use the ttl feature, you'll need to use APIs in the algorithm itself
    final fernet = Fernet(b64key);
    final encrypter = Encrypter(fernet);*/
    Encrypted enBase64 = Encrypted.fromBase64(encrypted);
    final decrypted = encrypter.decrypt(enBase64, iv: iv);
    return decrypted;
  }
}
