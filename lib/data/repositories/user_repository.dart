import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:shop/core/models/user_model.dart';

class UserRepository {
  final auth = FirebaseAuth.instance;
  final _collection = FirebaseFirestore.instance.collection('info_user');
  late CustomUser user;
  late String key;

  Future<String> makeUser(String user) async {
    await _collection.add(
      {
        'email': user,
        'first_name': 'unknown',
        'surname': 'unknown',
        'gender': 'unknown',
        'post_office_index': 0,
      },
    );
    return 'Info user made';
  }

  Future<CustomUser> fetchUser() async {
    final collection = await _collection.get();
    collection.docs.forEach(
      (doc) {
        if (doc['email'] == auth.currentUser!.email.toString()) {
          user = CustomUser(
            email: doc['email'],
            firstName: doc['first_name'],
            surname: doc['surname'],
            gender: doc['gender'],
            postOfficeIndex: doc['post_office_index'],
          );
          key = doc.id;
        }
      },
    );
    return user;
  }

  Future<void> changeGender(String gender) async {
    await _collection.doc(key).update({'gender': gender});
  }

  Future<void> changeIndex(int index) async {
    await _collection.doc(key).update({'post_office_index': index});
  }

  Future<void> changeNames(String firstName, String surname) async {
    await _collection.doc(key).update({'first_name': firstName, 'surname': surname});
  }
}
