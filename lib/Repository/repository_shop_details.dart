import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:fifteen_app/Provider/firestore_provider_shop_details.dart';


class Repository_shop_details{
  final _firestoreProvider = Firestore_provider();

  Future<void> registerUser(String Shop_name, String Email, String Pan_no, String Phone_no, String Shop_owner, String Shop_type)
  => _firestoreProvider.registerUser(Shop_name, Email, Pan_no, Phone_no, Shop_owner, Shop_type);
  }

