import 'package:statful_demo/Firebase%20service/constant.dart';

class FirebaseAuth {
  static Future<bool> signUp({String? email, String? password}) async {
    await lFirebaseAuth
        .signInWithEmailAndPassword(email: email!, password: password!)
        .catchError((e) {
      print(e);
    });
    return true;
  }

  static Future<bool> signIn({String? email, String? password}) async {
    await lFirebaseAuth
        .signInWithEmailAndPassword(email: email!, password: password!)
        .catchError((e) {
      print(e);
    });
    return true;
  }

  static Future<bool> logOut() async {
    await lFirebaseAuth.signOut();
    return true;
  }

  static Future<bool> getInfo() async {
    print("UID No==>${lFirebaseAuth.currentUser!.uid}");
    print("EMAIL ==> ${lFirebaseAuth.currentUser!.email}");
    return true;
  }
}
