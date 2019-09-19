import 'package:fifteen_app/Validator/validator_shop_details.dart';
import 'dart:async';
import 'package:fifteen_app/Repository/repository_shop_details.dart';
import 'package:rxdart/rxdart.dart';

 class Bloc_shop_details extends Object with Validator_shop_details implements BaseBloc{
   final _repository = Repository_shop_details();
   final _shopnameController = BehaviorSubject<String>();
   final _shoperemailController = BehaviorSubject<String>();
   final _shopopannoController = BehaviorSubject<String>();
   final _shopPhoneController =  BehaviorSubject<String>();
   final _ownerController = BehaviorSubject<String>();
   final _typeofshopController =  BehaviorSubject<String>();



   Stream<String> get shop_name => _shopnameController.stream.transform(shop_name_validator);
   Stream<String> get shoper_email => _shoperemailController.stream.transform(shop_email_validator);
   Stream<String> get shop_panno => _shopopannoController.stream.transform(Shop_panno_validator);
   Stream<String> get shop_phoneno => _shopPhoneController.stream.transform(shop_phoneno_validator);
   Stream<String> get shop_owner => _ownerController.stream.transform(shop_owner_validator);
   Stream<String> get shop_type => _typeofshopController.stream.transform(shop_type_validator);

   Function(String) get shop_names => _shopnameController.sink.add;
   Function(String) get shoper_emails => _shoperemailController.sink.add;
   Function(int) get shop_pannos => _shopopannoController.sink.add;
   Function(int) get shop_phonenos => _shopPhoneController.sink.add;
   Function(String) get shop_owners => _ownerController.sink.add;
   Function(String) get type => _typeofshopController.sink.add;



   Future<void> registeruser() {
     return _repository.registerUser(_shopnameController.value,_shoperemailController.value, _shopopannoController.value, _shopPhoneController.value,
     _ownerController.value, _typeofshopController.value);
   }


   Stream<bool> get submitcheck => Observable.combineLatest6(shop_name, shoper_email, shop_panno, shop_phoneno, shop_owner, shop_type, (n,e,p,ph,o,t) => true);

   @override
   void dispose() {
     _shopnameController?.close();
     _shoperemailController?.close();
     _shopopannoController?.close();
     _shopPhoneController?.close();
     _ownerController?.close();
     _typeofshopController?.close();
   }
 }
abstract class BaseBloc {
  void dispose();
}