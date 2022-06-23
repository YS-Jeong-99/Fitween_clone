import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class Chat {
  String? uid;
  String? text;
  DateTime? date = DateTime.now();

  Chat({
    this.uid,
    this.text,
    this.date,
  });

  Chat.fromJson(Map<String, dynamic> json) {
    fromJson(json);
  }

  void fromJson(Map<String, dynamic> json) {
    uid = json['uid'];
    text = json['text'];
    date = (json['date'] ?? Timestamp.now()).toDate();
  }

  Map<String, dynamic> toJson() => {
        'uid': uid,
        'text': text,
        'date': date,
      };

  Future chatMessage() async {
    String uid = FirebaseAuth.instance.currentUser!.uid;
    var instance = FirebaseFirestore.instance;

    // if(uid )
  }

  // Future fitweenGoogleLogin() async {
  //   var instance = FirebaseFirestore.instance;
  //
  //   UserCredential? userCredential = await signInWithGoogle();
  //   if (userCredential == null) {
  //     logged = false;
  //   } else {
  //     User? user = userCredential.user;
  //
  //     var json = await instance.collection('users').doc(user!.uid).get();
  //     Map<String, dynamic>? jsonData = json.data();
  //
  //     if (jsonData == null) {
  //       uid = user.uid;
  //       name = user.displayName;
  //       email = user.email;
  //
  //       instance.collection('users').doc(uid).set(toJson());
  //       return;
  //     }
  //     fromJson(jsonData);
  //
  //     // 기존 회원
  //     if (json.exists) {
  //       nickname = jsonData['nickname'];
  //       imageUrl = jsonData['imageUrl'] ?? FitweenUser.defaultProfile;
  //       role = jsonData['role'];
  //     }
  //
  //     uid = user.uid;
  //     name = user.displayName;
  //     email = user.email;
  //
  //     instance.collection('users').doc(uid).set(toJson());
  //
  //     fromJson(jsonData);
  //     instance.collection('users').doc(uid).set(toJson());
  //     logged = true;
  //   }
  //
  //   update();
  // }
}
