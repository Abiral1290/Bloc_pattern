import 'package:cloud_firestore/cloud_firestore.dart';

class Firestore_provider{
  Firestore _firestore = Firestore.instance;
  String Shop_name, Email, Pan_no, Phone_no,Shop_owner, Shop_type, documentid;

  Future<void> registerUser(String shop_name, String email, String pan_no, String phone_no, String shop_owner, String shop_type) async{
    return _firestore.collection('Shop_details').document(documentid).
    setData({'Shop_name': Shop_name,
      'Email': Email,
      'Pan_no': Pan_no,
      'Shop_owner': Shop_owner,
      'Shop_type' : Shop_type,
    });
  }
}