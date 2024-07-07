import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_web/features/contact_us/data/contact_us_data.dart';

abstract class BaseContactUsRemoteDataSource {
  Future<String> sendInfo();
}


class ContactUsRemoteDataSource extends BaseContactUsRemoteDataSource {

  final FirebaseFirestore fireStore;
  ContactUsRemoteDataSource(this.fireStore);
  @override
  Future<String> sendInfo()async {
    print('before sending info');
    try {
      final snapshot = await fireStore.collection('user_info').add({
        'name': ContactUsData.nameController.text.trim(),
        'email': ContactUsData.emailController.text.trim(),
        'msg': ContactUsData.messageController.text.trim(),
        'number': ContactUsData.numberController.text.trim(),
      });
      print('done sending info');
      return snapshot.id;
    } catch (e) {
      throw Exception('Error sending info: $e');
    }
  }
}